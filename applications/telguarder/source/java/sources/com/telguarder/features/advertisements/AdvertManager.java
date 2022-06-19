package com.telguarder.features.advertisements;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.telguarder.ApplicationConstants;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.phoneCallWidget.PhonecallStateHandler;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.backend.BackendRequest;
import com.telguarder.helpers.backend.BackendRequestCreator;
import com.telguarder.helpers.backend.NetworkHelper;
import com.telguarder.helpers.dateUtils.DateTimeFormatter;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/AdvertManager.class */
public class AdvertManager {
    private static int keepAliveCount = 0;
    public static int keepAliveTimeStep = 15;
    public static String mAdNetwqorkDebugFlow = "";
    private static AdvertManager mInstance;
    public static Location mLocation;
    private AdvertOrmLiteHelper mAdvertOrmLiteHelper;
    public String mLastOwDfpNetworkName;
    private boolean mAdvertDownloadInProgress = false;
    private boolean mTestNumber = false;
    private boolean mHasListBannerAd = false;
    public boolean mHasPostCallAd = false;

    /* renamed from: com.telguarder.features.advertisements.AdvertManager$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/AdvertManager$1.class */
    public class C20901 extends BackendCallbackListener<Adverts> {
        C20901() {
            AdvertManager.this = r4;
        }

        public /* synthetic */ void lambda$onSuccess$0$AdvertManager$1(Adverts adverts) {
            AdvertManager.this.mHasListBannerAd = false;
            AdvertManager.this.mHasPostCallAd = false;
            if (adverts != null && adverts.adverts != null && adverts.adverts.size() > 0) {
                Iterator<Advert> it = adverts.adverts.iterator();
                while (it.hasNext()) {
                    Advert next = it.next();
                    AdvertManager.this.handleAdvertResult(next);
                    if (next.isListbannerAdvert()) {
                        AdvertManager.this.mHasListBannerAd = true;
                    } else if (next.isPostCallAdvert()) {
                        AdvertManager.this.mHasPostCallAd = true;
                    }
                }
            }
            if (!AdvertManager.this.mHasListBannerAd) {
                try {
                    AdvertManager.getInstance().deleteAdvertFromCache(ApplicationConstants.LISTBANNER_ADVERT_PLACEMENT);
                } catch (Exception e) {
                    Logger.error("Failed to delete listbanner ads: " + e.getMessage());
                }
            }
            if (!AdvertManager.this.mHasPostCallAd) {
                try {
                    AdvertManager.getInstance().deleteAdvertFromCache("postcall");
                } catch (Exception e2) {
                    Logger.error("Failed to delete postcall ads: " + e2.getMessage());
                }
            }
            AdvertManager.this.mAdvertDownloadInProgress = false;
        }

        @Override // com.telguarder.helpers.backend.BackendCallbackListener
        public void onError(Exception exc) {
            AdvertManager.this.mAdvertDownloadInProgress = false;
        }

        @Override // com.telguarder.helpers.backend.BackendCallbackListener
        public void onStart() {
            AdvertManager.this.mAdvertDownloadInProgress = true;
        }

        public void onSuccess(final Adverts adverts) {
            new Thread(new Runnable() { // from class: com.telguarder.features.advertisements._$$Lambda$AdvertManager$1$HZJttnuY2t0ZHOILPNwVi10sEiA
                @Override // java.lang.Runnable
                public final void run() {
                    AdvertManager.C20901.this.lambda$onSuccess$0$AdvertManager$1(adverts);
                }
            }).start();
        }
    }

    private AdvertManager() {
    }

    public static void addAdNetworkFlowDebugInfo(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (TextUtils.isEmpty(mAdNetwqorkDebugFlow)) {
                mLocation = LocationHelper.getInstance().getCurrentCoarseLocation();
            }
            if (str.equals("\n")) {
                mAdNetwqorkDebugFlow += "\n";
                return;
            }
            mAdNetwqorkDebugFlow += DateTimeFormatter.getCurrentFormattedTime() + " " + str + "\n";
        } catch (Exception e) {
        }
    }

    public static void addAdNetworkFlowDebugInfoPostCallStart(String str, String str2, Advert advert) {
        String str3;
        try {
            PhonecallStateHandler.getInstance().stopPreloadKeepAlive();
            if (keepAliveCount > 0) {
                addAdNetworkFlowDebugInfo(" PRELOAD KEEPALIVE TIME: " + getFormattedKeepaliveValue(getKeepAliveDuration()) + "\n");
                keepAliveCount = 0;
            }
            if (advert != null && advert.network != null) {
                if (TextUtils.isEmpty(str2)) {
                    str3 = "\n        - there was no preload";
                } else {
                    str3 = "\n        - preload state " + str2;
                }
                addAdNetworkFlowDebugInfo(str + " POSTCALL AD START \n        - " + advert.network.description + "\n        - " + advert.network.placementId + str3);
                return;
            }
            addAdNetworkFlowDebugInfo(str + " POSTCALL AD START \n        - advert object not availabe");
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    private void addDaysSinceInstallHeader(Context context, BackendRequest backendRequest) {
        try {
            char currentTimeMillis = (System.currentTimeMillis() - context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime) / ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE;
            if (this.mTestNumber) {
                currentTimeMillis = 'c';
            }
            backendRequest.putHeader("X-Days-Since-Install", String.valueOf((long) currentTimeMillis));
        } catch (Exception e) {
            Logger.error("AdvertManager get firstInstallTime error");
            backendRequest.putHeader("X-Days-Since-Install", "99");
        }
    }

    public static void cleanAdNetworkFlowDebugInfo(boolean z) {
        if (z || !PhonecallStateHandler.getInstance().isKeepAliveRunning()) {
            mAdNetwqorkDebugFlow = "";
        }
    }

    public void deleteAdvertFromCache(String str) throws SQLException {
        DeleteBuilder<Advert, Integer> deleteBuilder;
        if (!TextUtils.isEmpty(str) && (deleteBuilder = this.mAdvertOrmLiteHelper.getAdvertDao().deleteBuilder()) != null) {
            deleteBuilder.setWhere(deleteBuilder.where().like(AdvertOrmLiteHelper.FIELD_ADVERT_PLACE, str));
            deleteBuilder.delete();
        }
    }

    private Advert getAdvertFromCache(String str) {
        List<Advert> list;
        try {
            QueryBuilder<Advert, Integer> queryBuilder = this.mAdvertOrmLiteHelper.getAdvertDao().queryBuilder();
            queryBuilder.limit(1L);
            queryBuilder.setWhere(queryBuilder.where().like(AdvertOrmLiteHelper.FIELD_ADVERT_PLACE, str));
            queryBuilder.orderBy(AdvertOrmLiteHelper.FIELD_CREATED_AT, false);
            list = queryBuilder.query();
        } catch (Exception e) {
            Logger.error(e.getMessage());
            list = null;
        }
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String getFormattedKeepaliveValue(int i) {
        long j = i;
        return String.format(Locale.getDefault(), "%02d:%02d:%02d", Long.valueOf(TimeUnit.SECONDS.toHours(j)), Long.valueOf(TimeUnit.SECONDS.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(j % TimeUnit.MINUTES.toSeconds(1L)));
    }

    public static AdvertManager getInstance() {
        AdvertManager advertManager;
        synchronized (AdvertManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new AdvertManager();
                }
                advertManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return advertManager;
    }

    public static int getKeepAliveDuration() {
        return keepAliveCount * keepAliveTimeStep;
    }

    public void handleAdvertResult(Advert advert) {
        if (advert != null) {
            if (TextUtils.isEmpty(advert.place)) {
                advert.place = "postcall";
            } else {
                advert.place = advert.place.toLowerCase(Locale.ENGLISH);
            }
            getInstance().saveAdvertToCache(advert);
        }
    }

    public static void incAdNetworkFlowKeepaliveCount() {
        keepAliveCount++;
    }

    public static void resetAdNetworkFlowKeepaliveCount() {
        keepAliveCount = 0;
    }

    public void fetchAdvertFromBackend_V3(Context context, BackendCallbackListener<Adverts> backendCallbackListener) {
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_ADS_V3, BackendRequest.Method.GET);
        addDaysSinceInstallHeader(context, backendRequestOfUrlAndMethodWithLogging);
        backendRequestOfUrlAndMethodWithLogging.execute(Adverts.class, (BackendCallbackListener) backendCallbackListener);
    }

    public Advert getListbannerAdvertFromCache() {
        return getAdvertFromCache(ApplicationConstants.LISTBANNER_ADVERT_PLACEMENT);
    }

    public Advert getPostcallAdvertFromCache() {
        return getAdvertFromCache("postcall");
    }

    public boolean hasAdvertInCache() {
        try {
            QueryBuilder<Advert, Integer> queryBuilder = this.mAdvertOrmLiteHelper.getAdvertDao().queryBuilder();
            queryBuilder.limit(1L);
            List<Advert> query = queryBuilder.query();
            if (query == null) {
                return false;
            }
            return !query.isEmpty();
        } catch (Exception e) {
            Logger.error(e.getMessage());
            return false;
        }
    }

    public void init(Context context) {
        this.mAdvertOrmLiteHelper = new AdvertOrmLiteHelper(context);
    }

    public /* synthetic */ void lambda$updateAdvertCache$0$AdvertManager(Context context) {
        if (this.mAdvertDownloadInProgress || !NetworkHelper.isNetworkAvailable(context)) {
            return;
        }
        fetchAdvertFromBackend_V3(context, new C20901());
    }

    public int saveAdvertToCache(Advert advert) {
        if (advert == null) {
            return -1;
        }
        try {
            deleteAdvertFromCache(advert.place);
            advert.createdAtDateTimeInMillis = System.currentTimeMillis();
            this.mAdvertOrmLiteHelper.getAdvertDao().create((Dao<Advert, Integer>) advert);
            return advert.f1275id;
        } catch (SQLException e) {
            Logger.error(e.getMessage());
            return -1;
        }
    }

    public void updateAdvertCache(final Context context, boolean z) {
        this.mTestNumber = z;
        new Thread(new Runnable() { // from class: com.telguarder.features.advertisements._$$Lambda$AdvertManager$mr7wwXzJy0W8ZfjQzQ4yYfLm0eY
            @Override // java.lang.Runnable
            public final void run() {
                AdvertManager.this.lambda$updateAdvertCache$0$AdvertManager(context);
            }
        }).start();
    }
}
