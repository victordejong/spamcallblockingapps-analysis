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
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier.class */
public class MoPubIdentifier {

    /* renamed from: a */
    AdvertisingId f58904a;

    /* renamed from: b */
    final Context f58905b;

    /* renamed from: c */
    boolean f58906c;

    /* renamed from: d */
    volatile SdkInitializationListener f58907d;

    /* renamed from: e */
    private AdvertisingIdChangeListener f58908e;

    /* renamed from: f */
    private boolean f58909f;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener.class */
    public interface AdvertisingIdChangeListener {
        void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2);
    }

    /* renamed from: com.mopub.common.privacy.MoPubIdentifier$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$a.class */
    public final class AsyncTaskC16733a extends AsyncTask<Void, Void, Void> {
        private AsyncTaskC16733a() {
            MoPubIdentifier.this = r4;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            AdvertisingId advertisingId;
            MoPubIdentifier moPubIdentifier = MoPubIdentifier.this;
            AdvertisingId advertisingId2 = moPubIdentifier.f58904a;
            GpsHelper.AdvertisingInfo fetchAdvertisingInfoSync = GpsHelper.fetchAdvertisingInfoSync(moPubIdentifier.f58905b);
            if (fetchAdvertisingInfoSync == null || TextUtils.isEmpty(fetchAdvertisingInfoSync.advertisingId)) {
                Context context = moPubIdentifier.f58905b;
                Preconditions.NoThrow.checkNotNull(context);
                ContentResolver contentResolver = context.getContentResolver();
                int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", -1);
                String string = Settings.Secure.getString(contentResolver, "advertising_id");
                if (i == -1 || TextUtils.isEmpty(string)) {
                    advertisingId = null;
                } else {
                    advertisingId = new AdvertisingId(string, moPubIdentifier.f58904a.f58871b, i != 0);
                }
            } else {
                advertisingId = new AdvertisingId(fetchAdvertisingInfoSync.advertisingId, advertisingId2.f58871b, fetchAdvertisingInfoSync.limitAdTracking);
            }
            if (advertisingId != null) {
                String str = advertisingId.f58870a;
                String str2 = advertisingId2.f58871b;
                boolean z = advertisingId.f58872c;
                Preconditions.checkNotNull(str);
                Preconditions.checkNotNull(str2);
                moPubIdentifier.m6649a(new AdvertisingId(str, str2, z));
            } else {
                moPubIdentifier.m6649a(moPubIdentifier.f58904a);
            }
            MoPubIdentifier.this.f58909f = false;
            return null;
        }
    }

    public MoPubIdentifier(Context context) {
        this(context, null);
    }

    MoPubIdentifier(Context context, AdvertisingIdChangeListener advertisingIdChangeListener) {
        Preconditions.checkNotNull(context);
        this.f58905b = context;
        this.f58908e = advertisingIdChangeListener;
        AdvertisingId m6651a = m6651a(context);
        this.f58904a = m6651a;
        if (m6651a == null) {
            this.f58904a = AdvertisingId.m6661a();
        }
        m6647b();
    }

    /* renamed from: a */
    private static AdvertisingId m6651a(Context context) {
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

    /* renamed from: a */
    private static void m6650a(Context context, AdvertisingId advertisingId) {
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                Preconditions.checkNotNull(advertisingId);
                SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier").edit();
                edit.putBoolean("privacy.limit.ad.tracking", advertisingId.f58872c);
                edit.putString("privacy.identifier.ifa", advertisingId.f58870a);
                edit.putString("privacy.identifier.mopub", advertisingId.f58871b);
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private void m6647b() {
        if (this.f58909f) {
            return;
        }
        this.f58909f = true;
        AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC16733a(), new Void[0]);
    }

    /* renamed from: a */
    public final void m6652a() {
        synchronized (this) {
            SdkInitializationListener sdkInitializationListener = this.f58907d;
            if (sdkInitializationListener != null) {
                this.f58907d = null;
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    /* renamed from: a */
    final void m6649a(AdvertisingId advertisingId) {
        AdvertisingId advertisingId2 = this.f58904a;
        this.f58904a = advertisingId;
        m6650a(this.f58905b, advertisingId);
        if (this.f58904a.f58870a.endsWith("10ca1ad1abe1")) {
            MoPubLog.setLogLevel(MoPubLog.LogLevel.DEBUG);
        }
        if (!this.f58904a.equals(advertisingId2) || !this.f58906c) {
            AdvertisingId advertisingId3 = this.f58904a;
            Preconditions.checkNotNull(advertisingId3);
            AdvertisingIdChangeListener advertisingIdChangeListener = this.f58908e;
            if (advertisingIdChangeListener != null) {
                advertisingIdChangeListener.onIdChanged(advertisingId2, advertisingId3);
            }
        }
        this.f58906c = true;
        m6652a();
    }

    public AdvertisingId getAdvertisingInfo() {
        AdvertisingId advertisingId = this.f58904a;
        m6647b();
        return advertisingId;
    }

    public void setIdChangeListener(AdvertisingIdChangeListener advertisingIdChangeListener) {
        this.f58908e = advertisingIdChangeListener;
    }
}
