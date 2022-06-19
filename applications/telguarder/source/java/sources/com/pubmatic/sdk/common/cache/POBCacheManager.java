package com.pubmatic.sdk.common.cache;

import android.content.Context;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
import com.pubmatic.sdk.common.models.POBProfileInfo;
import com.pubmatic.sdk.common.network.PMNetworkMonitor;
import com.pubmatic.sdk.common.network.POBHttpRequest;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.common.viewability.POBMeasurementProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager.class */
public class POBCacheManager {

    /* renamed from: b */
    private final Context f403b;

    /* renamed from: c */
    private final POBNetworkHandler f404c;

    /* renamed from: a */
    private boolean f402a = false;

    /* renamed from: d */
    private Map<String, POBProfileInfo> f405d = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener.class */
    public static class POBPartnerConfigListener {
        protected void onPartnerConfigFailed(POBError pOBError) {
        }

        protected void onPartnerConfigFetched(List<POBPartnerInfo> list) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener.class */
    public static class POBProfileConfigListener {
        protected POBProfileConfigListener() {
        }

        protected void onError(POBError pOBError) {
        }

        protected void onSuccess(POBProfileInfo pOBProfileInfo) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.cache.POBCacheManager$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$a.class */
    public class C1854a implements POBNetworkHandler.POBNetworkListener<String> {

        /* renamed from: a */
        final /* synthetic */ POBMeasurementProvider.POBScriptListener f406a;

        /* renamed from: com.pubmatic.sdk.common.cache.POBCacheManager$a$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$a$a.class */
        public class RunnableC1855a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ String f408a;

            RunnableC1855a(String str) {
                C1854a.this = r4;
                this.f408a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.f408a;
                POBUtils.writeFile(str, POBCacheManager.this.f403b.getFilesDir() + "/" + POBCommonConstants.DOWNLOAD_SERVICE_FILE_NAME);
                C1854a c1854a = C1854a.this;
                POBCacheManager.this.m1071a(this.f408a, c1854a.f406a);
            }
        }

        /* renamed from: com.pubmatic.sdk.common.cache.POBCacheManager$a$b */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$a$b.class */
        class RunnableC1856b implements Runnable {
            RunnableC1856b() {
                C1854a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                String loadMraid = POBUtils.loadMraid(POBCacheManager.this.f403b, POBCommonConstants.INTERNAL_SERVICE_FILE_NAME);
                C1854a c1854a = C1854a.this;
                POBCacheManager.this.m1071a(loadMraid, c1854a.f406a);
            }
        }

        C1854a(POBMeasurementProvider.POBScriptListener pOBScriptListener) {
            POBCacheManager.this = r4;
            this.f406a = pOBScriptListener;
        }

        /* renamed from: a */
        public void onSuccess(String str) {
            PMLog.debug("PMCacheManager", "Service script downloaded: %s", str);
            POBUtils.runOnBackgroundThread(new RunnableC1855a(str));
        }

        @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBNetworkListener
        public void onFailure(POBError pOBError) {
            PMLog.error("PMCacheManager", "Service script download failed: %s", pOBError.getErrorMessage());
            POBUtils.runOnBackgroundThread(new RunnableC1856b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.cache.POBCacheManager$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$b.class */
    public class RunnableC1857b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ POBMeasurementProvider.POBScriptListener f411a;

        RunnableC1857b(POBMeasurementProvider.POBScriptListener pOBScriptListener) {
            POBCacheManager.this = r4;
            this.f411a = pOBScriptListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            String readFile = POBUtils.readFile(POBCacheManager.this.f403b.getFilesDir() + "/" + POBCommonConstants.DOWNLOAD_SERVICE_FILE_NAME);
            String str = readFile;
            if (readFile == null) {
                str = POBUtils.loadMraid(POBCacheManager.this.f403b, POBCommonConstants.INTERNAL_SERVICE_FILE_NAME);
            }
            POBCacheManager.this.m1071a(str, this.f411a);
        }
    }

    /* renamed from: com.pubmatic.sdk.common.cache.POBCacheManager$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$c.class */
    public class RunnableC1858c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ POBMeasurementProvider.POBScriptListener f413a;

        /* renamed from: b */
        final /* synthetic */ String f414b;

        RunnableC1858c(POBCacheManager pOBCacheManager, POBMeasurementProvider.POBScriptListener pOBScriptListener, String str) {
            this.f413a = pOBScriptListener;
            this.f414b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f413a.onMeasurementScriptReceived(this.f414b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.cache.POBCacheManager$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$d.class */
    public class C1859d extends POBProfileConfigListener {

        /* renamed from: a */
        final /* synthetic */ String f415a;

        /* renamed from: b */
        final /* synthetic */ POBAdSize[] f416b;

        /* renamed from: c */
        final /* synthetic */ POBPartnerConfigListener f417c;

        /* renamed from: d */
        final /* synthetic */ int f418d;

        C1859d(POBCacheManager pOBCacheManager, String str, POBAdSize[] pOBAdSizeArr, POBPartnerConfigListener pOBPartnerConfigListener, int i) {
            this.f415a = str;
            this.f416b = pOBAdSizeArr;
            this.f417c = pOBPartnerConfigListener;
            this.f418d = i;
        }

        @Override // com.pubmatic.sdk.common.cache.POBCacheManager.POBProfileConfigListener
        protected void onError(POBError pOBError) {
            this.f417c.onPartnerConfigFailed(pOBError);
        }

        @Override // com.pubmatic.sdk.common.cache.POBCacheManager.POBProfileConfigListener
        protected void onSuccess(POBProfileInfo pOBProfileInfo) {
            ArrayList arrayList = new ArrayList();
            for (POBPartnerInfo pOBPartnerInfo : pOBProfileInfo.getPartnerList()) {
                POBPartnerInfo build = POBPartnerInfo.build(pOBPartnerInfo, this.f415a, this.f416b);
                if (build.getSlotInfoMappings() != null) {
                    arrayList.add(build);
                }
            }
            if (arrayList.size() > 0) {
                this.f417c.onPartnerConfigFetched(arrayList);
                return;
            }
            POBPartnerConfigListener pOBPartnerConfigListener = this.f417c;
            pOBPartnerConfigListener.onPartnerConfigFailed(new POBError(POBError.NO_PARTNER_DETAILS, "No mapping found for adUnit=" + this.f415a + " in ProfileId=" + this.f418d));
        }
    }

    /* renamed from: com.pubmatic.sdk.common.cache.POBCacheManager$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBCacheManager$e.class */
    public class C1860e implements POBNetworkHandler.POBNetworkListener<String> {

        /* renamed from: a */
        final /* synthetic */ String f419a;

        /* renamed from: b */
        final /* synthetic */ POBProfileConfigListener f420b;

        C1860e(String str, POBProfileConfigListener pOBProfileConfigListener) {
            POBCacheManager.this = r4;
            this.f419a = str;
            this.f420b = pOBProfileConfigListener;
        }

        /* renamed from: a */
        public void onSuccess(String str) {
            PMLog.debug("PMCacheManager", "Received profile config response - %s", str);
            if (POBUtils.isNullOrEmpty(str)) {
                POBCacheManager.this.m1077a(new POBError(1007, POBCommonConstants.MSG_FAILED_TO_FETCH_CONFIG), this.f419a, this.f420b);
                return;
            }
            try {
                POBProfileInfo build = POBProfileInfo.build(new JSONObject(str));
                if (build.getPartnerList() == null || build.getPartnerList().size() <= 0) {
                    POBCacheManager.this.m1077a(new POBError(POBError.NO_PARTNER_DETAILS, POBCommonConstants.MSG_NO_CLIENT_PARTNERS), this.f419a, this.f420b);
                } else {
                    POBCacheManager.this.f405d.put(this.f419a, build);
                    this.f420b.onSuccess(build);
                }
            } catch (JSONException e) {
                POBCacheManager.this.m1077a(new POBError(1007, e.getMessage()), this.f419a, this.f420b);
            }
        }

        @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBNetworkListener
        public void onFailure(POBError pOBError) {
            POBCacheManager.this.m1077a(pOBError, this.f419a, this.f420b);
        }
    }

    public POBCacheManager(Context context, POBNetworkHandler pOBNetworkHandler) {
        this.f403b = context.getApplicationContext();
        this.f404c = pOBNetworkHandler;
    }

    /* renamed from: a */
    private String m1078a(int i, Integer num) {
        if (num != null) {
            return i + ":" + num;
        }
        return String.valueOf(i);
    }

    /* renamed from: a */
    private String m1073a(String str, int i, Integer num) {
        return num != null ? String.format(Locale.getDefault(), "https://ads.pubmatic.com/AdServer/js/pwt/%s/%d/%d/config.json", str, Integer.valueOf(i), num) : String.format(Locale.getDefault(), "https://ads.pubmatic.com/AdServer/js/pwt/%s/%d/config.json", str, Integer.valueOf(i));
    }

    /* renamed from: a */
    public void m1077a(POBError pOBError, String str, POBProfileConfigListener pOBProfileConfigListener) {
        PMLog.error("PMCacheManager", "Failed to fetch config with error: %s", pOBError.getErrorMessage());
        if (pOBError.getErrorCode() != 1003) {
            this.f405d.put(str, null);
        }
        if (pOBProfileConfigListener != null) {
            pOBProfileConfigListener.onError(pOBError);
        }
    }

    /* renamed from: a */
    public void m1071a(String str, POBMeasurementProvider.POBScriptListener pOBScriptListener) {
        POBUtils.runOnMainThread(new RunnableC1858c(this, pOBScriptListener, str));
    }

    /* renamed from: a */
    void m1072a(String str, int i, Integer num, POBProfileConfigListener pOBProfileConfigListener) {
        String m1078a = m1078a(i, num);
        if (this.f405d.get(m1078a) != null) {
            pOBProfileConfigListener.onSuccess(this.f405d.get(m1078a));
        } else if (!PMNetworkMonitor.isNetworkAvailable(this.f403b)) {
            m1077a(new POBError(1003, "No network available"), m1078a, pOBProfileConfigListener);
        } else {
            String m1073a = m1073a(str, i, num);
            POBHttpRequest pOBHttpRequest = new POBHttpRequest();
            pOBHttpRequest.setUrl(m1073a);
            PMLog.debug("PMCacheManager", "Requesting profile config with url - : %s", m1073a);
            pOBHttpRequest.setTimeout(1000);
            this.f404c.sendRequest(pOBHttpRequest, new C1860e(m1078a, pOBProfileConfigListener));
        }
    }

    public void requestPartnerConfiguration(String str, int i, Integer num, String str2, POBAdSize[] pOBAdSizeArr, POBPartnerConfigListener pOBPartnerConfigListener) {
        m1072a(str, i, num, new C1859d(this, str2, pOBAdSizeArr, pOBPartnerConfigListener, i));
    }

    public void requestServiceScript(String str, POBMeasurementProvider.POBScriptListener pOBScriptListener) {
        synchronized (this) {
            if (!this.f402a) {
                this.f402a = true;
                POBHttpRequest pOBHttpRequest = new POBHttpRequest();
                pOBHttpRequest.setUrl(str);
                pOBHttpRequest.setTimeout(1000);
                this.f404c.sendRequest(pOBHttpRequest, new C1854a(pOBScriptListener));
            } else {
                POBUtils.runOnBackgroundThread(new RunnableC1857b(pOBScriptListener));
            }
        }
    }
}
