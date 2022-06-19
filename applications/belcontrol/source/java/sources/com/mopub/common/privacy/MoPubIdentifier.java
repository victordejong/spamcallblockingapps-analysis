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
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier.class */
public class MoPubIdentifier {

    /* renamed from: a */
    public AdvertisingId f4429a;

    /* renamed from: b */
    public final Context f4430b;

    /* renamed from: c */
    public AdvertisingIdChangeListener f4431c;

    /* renamed from: d */
    public boolean f4432d;

    /* renamed from: e */
    public boolean f4433e;

    /* renamed from: f */
    public volatile SdkInitializationListener f4434f;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener.class */
    public interface AdvertisingIdChangeListener {
        void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2);
    }

    /* renamed from: com.mopub.common.privacy.MoPubIdentifier$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$b.class */
    public class AsyncTaskC1051b extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC1051b() {
            MoPubIdentifier.this = r4;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            MoPubIdentifier.this.m3827f();
            MoPubIdentifier.this.f4432d = false;
            return null;
        }
    }

    public MoPubIdentifier(Context context) {
        this(context, null);
    }

    @VisibleForTesting
    public MoPubIdentifier(Context context, AdvertisingIdChangeListener advertisingIdChangeListener) {
        Preconditions.checkNotNull(context);
        this.f4430b = context;
        this.f4431c = advertisingIdChangeListener;
        AdvertisingId m3829d = m3829d(context);
        this.f4429a = m3829d;
        if (m3829d == null) {
            this.f4429a = AdvertisingId.m3855a();
        }
        m3828e();
    }

    /* renamed from: d */
    public static AdvertisingId m3829d(Context context) {
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                try {
                    SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier");
                    String string = sharedPreferences.getString("privacy.identifier.ifa", "");
                    String string2 = sharedPreferences.getString("privacy.identifier.mopub", "");
                    boolean z = sharedPreferences.getBoolean("privacy.limit.ad.tracking", false);
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                        return new AdvertisingId(string, string2, z);
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

    /* renamed from: k */
    public static void m3822k(Context context, AdvertisingId advertisingId) {
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                Preconditions.checkNotNull(advertisingId);
                SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier").edit();
                edit.putBoolean("privacy.limit.ad.tracking", advertisingId.f4395c);
                edit.putString("privacy.identifier.ifa", advertisingId.f4393a);
                edit.putString("privacy.identifier.mopub", advertisingId.f4394b);
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final AdvertisingId m3831b(Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        ContentResolver contentResolver = context.getContentResolver();
        int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", -1);
        String string = Settings.Secure.getString(contentResolver, "advertising_id");
        if (i == -1 || TextUtils.isEmpty(string)) {
            return null;
        }
        return new AdvertisingId(string, this.f4429a.f4394b, i != 0);
    }

    /* renamed from: c */
    public final void m3830c(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
        Preconditions.checkNotNull(advertisingId2);
        AdvertisingIdChangeListener advertisingIdChangeListener = this.f4431c;
        if (advertisingIdChangeListener != null) {
            advertisingIdChangeListener.onIdChanged(advertisingId, advertisingId2);
        }
    }

    /* renamed from: e */
    public final void m3828e() {
        if (this.f4432d) {
            return;
        }
        this.f4432d = true;
        AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC1051b(), new Void[0]);
    }

    /* renamed from: f */
    public void m3827f() {
        AdvertisingId advertisingId = this.f4429a;
        GpsHelper.AdvertisingInfo fetchAdvertisingInfoSync = GpsHelper.fetchAdvertisingInfoSync(this.f4430b);
        AdvertisingId m3831b = (fetchAdvertisingInfoSync == null || TextUtils.isEmpty(fetchAdvertisingInfoSync.advertisingId)) ? m3831b(this.f4430b) : new AdvertisingId(fetchAdvertisingInfoSync.advertisingId, advertisingId.f4394b, fetchAdvertisingInfoSync.limitAdTracking);
        if (m3831b != null) {
            m3824i(m3831b.f4393a, advertisingId.f4394b, m3831b.f4395c);
        } else {
            m3825h(this.f4429a);
        }
    }

    /* renamed from: g */
    public final void m3826g() {
        synchronized (this) {
            SdkInitializationListener sdkInitializationListener = this.f4434f;
            if (sdkInitializationListener != null) {
                this.f4434f = null;
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    public AdvertisingId getAdvertisingInfo() {
        AdvertisingId advertisingId = this.f4429a;
        m3828e();
        return advertisingId;
    }

    /* renamed from: h */
    public void m3825h(AdvertisingId advertisingId) {
        AdvertisingId advertisingId2 = this.f4429a;
        this.f4429a = advertisingId;
        m3822k(this.f4430b, advertisingId);
        if (this.f4429a.f4393a.endsWith("10ca1ad1abe1")) {
            MoPubLog.setLogLevel(MoPubLog.LogLevel.DEBUG);
        }
        if (!this.f4429a.equals(advertisingId2) || !this.f4433e) {
            m3830c(advertisingId2, this.f4429a);
        }
        this.f4433e = true;
        m3826g();
    }

    /* renamed from: i */
    public final void m3824i(String str, String str2, boolean z) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        m3825h(new AdvertisingId(str, str2, z));
    }

    /* renamed from: j */
    public void m3823j(SdkInitializationListener sdkInitializationListener) {
        this.f4434f = sdkInitializationListener;
        if (this.f4433e) {
            m3826g();
        }
    }

    public void setIdChangeListener(AdvertisingIdChangeListener advertisingIdChangeListener) {
        this.f4431c = advertisingIdChangeListener;
    }
}
