package com.mopub.common.privacy;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.provider.Settings;
import android.text.TextUtils;
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

    /* renamed from: a */
    public AdvertisingId f33864a;

    /* renamed from: b */
    public final Context f33865b;

    /* renamed from: c */
    public AdvertisingIdChangeListener f33866c;

    /* renamed from: d */
    public boolean f33867d;

    /* renamed from: e */
    public boolean f33868e;

    /* renamed from: f */
    public volatile SdkInitializationListener f33869f;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener.class */
    public interface AdvertisingIdChangeListener {
        void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2);
    }

    /* renamed from: com.mopub.common.privacy.MoPubIdentifier$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$b.class */
    public class AsyncTaskC8736b extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC8736b() {
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            MoPubIdentifier.this.m4548b();
            MoPubIdentifier.this.f33867d = false;
            return null;
        }
    }

    public MoPubIdentifier(Context context) {
        this(context, null);
    }

    @VisibleForTesting
    public MoPubIdentifier(Context context, AdvertisingIdChangeListener advertisingIdChangeListener) {
        Preconditions.checkNotNull(context);
        this.f33865b = context;
        this.f33866c = advertisingIdChangeListener;
        AdvertisingId b = m4547b(context);
        this.f33864a = b;
        if (b == null) {
            this.f33864a = AdvertisingId.generateExpiredAdvertisingId();
        }
        m4556a();
    }

    /* renamed from: a */
    public static void m4554a(Context context, AdvertisingId advertisingId) {
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                Preconditions.checkNotNull(advertisingId);
                SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier").edit();
                edit.putBoolean("privacy.limit.ad.tracking", advertisingId.mDoNotTrack);
                edit.putString("privacy.identifier.ifa", advertisingId.mAdvertisingId);
                edit.putString("privacy.identifier.mopub", advertisingId.mMopubId);
                edit.putLong("privacy.identifier.time", advertisingId.mLastRotation.getTimeInMillis());
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static AdvertisingId m4547b(Context context) {
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

    /* renamed from: a */
    public final AdvertisingId m4555a(Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        ContentResolver contentResolver = context.getContentResolver();
        int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", -1);
        String string = Settings.Secure.getString(contentResolver, "advertising_id");
        if (i == -1 || TextUtils.isEmpty(string)) {
            return null;
        }
        boolean z = i != 0;
        AdvertisingId advertisingId = this.f33864a;
        return new AdvertisingId(string, advertisingId.mMopubId, z, advertisingId.mLastRotation.getTimeInMillis());
    }

    /* renamed from: a */
    public final void m4556a() {
        if (!this.f33867d) {
            this.f33867d = true;
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC8736b(), new Void[0]);
        }
    }

    /* renamed from: a */
    public void m4553a(SdkInitializationListener sdkInitializationListener) {
        this.f33869f = sdkInitializationListener;
        if (this.f33868e) {
            m4546c();
        }
    }

    /* renamed from: a */
    public void m4552a(AdvertisingId advertisingId) {
        AdvertisingId advertisingId2 = this.f33864a;
        this.f33864a = advertisingId;
        m4554a(this.f33865b, advertisingId);
        if (!this.f33864a.equals(advertisingId2) || !this.f33868e) {
            m4551a(advertisingId2, this.f33864a);
        }
        this.f33868e = true;
        m4546c();
    }

    /* renamed from: a */
    public final void m4551a(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
        Preconditions.checkNotNull(advertisingId2);
        AdvertisingIdChangeListener advertisingIdChangeListener = this.f33866c;
        if (advertisingIdChangeListener != null) {
            advertisingIdChangeListener.onIdChanged(advertisingId, advertisingId2);
        }
    }

    /* renamed from: a */
    public final void m4549a(String str, String str2, boolean z, long j) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        m4552a(new AdvertisingId(str, str2, z, j));
    }

    /* renamed from: b */
    public void m4548b() {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        AdvertisingId advertisingId = this.f33864a;
        GpsHelper.AdvertisingInfo fetchAdvertisingInfoSync = GpsHelper.fetchAdvertisingInfoSync(this.f33865b);
        AdvertisingId a = (fetchAdvertisingInfoSync == null || TextUtils.isEmpty(fetchAdvertisingInfoSync.advertisingId)) ? m4555a(this.f33865b) : new AdvertisingId(fetchAdvertisingInfoSync.advertisingId, advertisingId.mMopubId, fetchAdvertisingInfoSync.limitAdTracking, advertisingId.mLastRotation.getTimeInMillis());
        if (a != null) {
            String generateIdString = advertisingId.isRotationRequired() ? AdvertisingId.generateIdString() : advertisingId.mMopubId;
            if (!advertisingId.isRotationRequired()) {
                timeInMillis = advertisingId.mLastRotation.getTimeInMillis();
            }
            m4549a(a.mAdvertisingId, generateIdString, a.mDoNotTrack, timeInMillis);
        }
        m4545d();
    }

    /* renamed from: c */
    public final void m4546c() {
        synchronized (this) {
            SdkInitializationListener sdkInitializationListener = this.f33869f;
            if (sdkInitializationListener != null) {
                this.f33869f = null;
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    /* renamed from: d */
    public void m4545d() {
        if (this.f33864a.mAdvertisingId.endsWith("10ca1ad1abe1")) {
            MoPubLog.setLogLevel(MoPubLog.LogLevel.DEBUG);
        }
        if (!this.f33864a.isRotationRequired()) {
            m4552a(this.f33864a);
        } else {
            m4552a(AdvertisingId.generateFreshAdvertisingId());
        }
    }

    public AdvertisingId getAdvertisingInfo() {
        if (this.f33868e) {
            m4545d();
        }
        AdvertisingId advertisingId = this.f33864a;
        m4556a();
        return advertisingId;
    }

    public void setIdChangeListener(AdvertisingIdChangeListener advertisingIdChangeListener) {
        this.f33866c = advertisingIdChangeListener;
    }
}
