package com.mopub.common.privacy;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.GpsHelper;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkInitializationListener;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import java.util.Calendar;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier.class */
public class MoPubIdentifier {
    @NonNull

    /* renamed from: a */
    public AdvertisingId f8246a;
    @NonNull

    /* renamed from: b */
    public final Context f8247b;
    @Nullable

    /* renamed from: c */
    public AdvertisingIdChangeListener f8248c;

    /* renamed from: d */
    public boolean f8249d;

    /* renamed from: e */
    public boolean f8250e;
    @Nullable

    /* renamed from: f */
    public volatile SdkInitializationListener f8251f;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener.class */
    public interface AdvertisingIdChangeListener {
        void onIdChanged(@NonNull AdvertisingId advertisingId, @NonNull AdvertisingId advertisingId2);
    }

    /* renamed from: com.mopub.common.privacy.MoPubIdentifier$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$b.class */
    public class AsyncTaskC3798b extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC3798b() {
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            MoPubIdentifier.this.m30694b();
            MoPubIdentifier.this.f8249d = false;
            return null;
        }
    }

    public MoPubIdentifier(@NonNull Context context) {
        this(context, null);
    }

    @VisibleForTesting
    public MoPubIdentifier(@NonNull Context context, @Nullable AdvertisingIdChangeListener advertisingIdChangeListener) {
        Preconditions.checkNotNull(context);
        this.f8247b = context;
        this.f8248c = advertisingIdChangeListener;
        this.f8246a = m30693b(this.f8247b);
        if (this.f8246a == null) {
            this.f8246a = AdvertisingId.m30721c();
        }
        m30702a();
    }

    /* renamed from: a */
    public static void m30700a(@NonNull Context context, @NonNull AdvertisingId advertisingId) {
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                Preconditions.checkNotNull(advertisingId);
                SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier").edit();
                edit.putBoolean("privacy.limit.ad.tracking", advertisingId.f8212d);
                edit.putString("privacy.identifier.ifa", advertisingId.f8210b);
                edit.putString("privacy.identifier.mopub", advertisingId.f8211c);
                edit.putLong("privacy.identifier.time", advertisingId.f8209a.getTimeInMillis());
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    /* renamed from: b */
    public static AdvertisingId m30693b(@NonNull Context context) {
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                Calendar instance = Calendar.getInstance();
                try {
                    SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier");
                    String string = sharedPreferences.getString("privacy.identifier.ifa", "");
                    String string2 = sharedPreferences.getString("privacy.identifier.mopub", "");
                    long j = sharedPreferences.getLong("privacy.identifier.time", instance.getTimeInMillis());
                    boolean z = sharedPreferences.getBoolean("privacy.limit.ad.tracking", false);
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                        return new AdvertisingId(string, string2, z, j);
                    }
                } catch (ClassCastException e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot read identifier from shared preferences");
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    /* renamed from: a */
    public final AdvertisingId m30701a(@NonNull Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        ContentResolver contentResolver = context.getContentResolver();
        int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", -1);
        String string = Settings.Secure.getString(contentResolver, "advertising_id");
        if (i == -1 || TextUtils.isEmpty(string)) {
            return null;
        }
        boolean z = i != 0;
        AdvertisingId advertisingId = this.f8246a;
        return new AdvertisingId(string, advertisingId.f8211c, z, advertisingId.f8209a.getTimeInMillis());
    }

    /* renamed from: a */
    public final void m30702a() {
        if (!this.f8249d) {
            this.f8249d = true;
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC3798b(), new Void[0]);
        }
    }

    /* renamed from: a */
    public void m30699a(@Nullable SdkInitializationListener sdkInitializationListener) {
        this.f8251f = sdkInitializationListener;
        if (this.f8250e) {
            m30692c();
        }
    }

    /* renamed from: a */
    public void m30698a(@NonNull AdvertisingId advertisingId) {
        AdvertisingId advertisingId2 = this.f8246a;
        this.f8246a = advertisingId;
        m30700a(this.f8247b, this.f8246a);
        if (!this.f8246a.equals(advertisingId2) || !this.f8250e) {
            m30697a(advertisingId2, this.f8246a);
        }
        this.f8250e = true;
        m30692c();
    }

    /* renamed from: a */
    public final void m30697a(@NonNull AdvertisingId advertisingId, @NonNull AdvertisingId advertisingId2) {
        Preconditions.checkNotNull(advertisingId2);
        AdvertisingIdChangeListener advertisingIdChangeListener = this.f8248c;
        if (advertisingIdChangeListener != null) {
            advertisingIdChangeListener.onIdChanged(advertisingId, advertisingId2);
        }
    }

    /* renamed from: a */
    public final void m30695a(@NonNull String str, @NonNull String str2, boolean z, long j) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        m30698a(new AdvertisingId(str, str2, z, j));
    }

    /* renamed from: b */
    public void m30694b() {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        AdvertisingId advertisingId = this.f8246a;
        GpsHelper.AdvertisingInfo fetchAdvertisingInfoSync = GpsHelper.fetchAdvertisingInfoSync(this.f8247b);
        AdvertisingId a = (fetchAdvertisingInfoSync == null || TextUtils.isEmpty(fetchAdvertisingInfoSync.advertisingId)) ? m30701a(this.f8247b) : new AdvertisingId(fetchAdvertisingInfoSync.advertisingId, advertisingId.f8211c, fetchAdvertisingInfoSync.limitAdTracking, advertisingId.f8209a.getTimeInMillis());
        if (a != null) {
            String e = advertisingId.m30722b() ? AdvertisingId.m30719e() : advertisingId.f8211c;
            if (!advertisingId.m30722b()) {
                timeInMillis = advertisingId.f8209a.getTimeInMillis();
            }
            m30695a(a.f8210b, e, a.f8212d, timeInMillis);
        }
        m30691d();
    }

    /* renamed from: c */
    public final void m30692c() {
        synchronized (this) {
            SdkInitializationListener sdkInitializationListener = this.f8251f;
            if (sdkInitializationListener != null) {
                this.f8251f = null;
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    /* renamed from: d */
    public void m30691d() {
        if (this.f8246a.f8210b.endsWith("10ca1ad1abe1")) {
            MoPubLog.setLogLevel(MoPubLog.LogLevel.DEBUG);
        }
        if (!this.f8246a.m30722b()) {
            m30698a(this.f8246a);
        } else {
            m30698a(AdvertisingId.m30720d());
        }
    }

    @NonNull
    public AdvertisingId getAdvertisingInfo() {
        if (this.f8250e) {
            m30691d();
        }
        AdvertisingId advertisingId = this.f8246a;
        m30702a();
        return advertisingId;
    }

    public void setIdChangeListener(@Nullable AdvertisingIdChangeListener advertisingIdChangeListener) {
        this.f8248c = advertisingIdChangeListener;
    }
}
