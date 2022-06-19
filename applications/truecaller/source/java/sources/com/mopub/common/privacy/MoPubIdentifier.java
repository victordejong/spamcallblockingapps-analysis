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
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier.class */
public class MoPubIdentifier {

    /* renamed from: a */
    public AdvertisingId f8636a;

    /* renamed from: b */
    public final Context f8637b;

    /* renamed from: c */
    public AdvertisingIdChangeListener f8638c = null;

    /* renamed from: d */
    public boolean f8639d;

    /* renamed from: e */
    public boolean f8640e;

    /* renamed from: f */
    public volatile SdkInitializationListener f8641f;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener.class */
    public interface AdvertisingIdChangeListener {
        void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2);
    }

    /* renamed from: com.mopub.common.privacy.MoPubIdentifier$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$b.class */
    public class AsyncTaskC2651b extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC2651b(C2650a c2650a) {
            MoPubIdentifier.this = r4;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            AdvertisingId advertisingId;
            MoPubIdentifier moPubIdentifier = MoPubIdentifier.this;
            AdvertisingId advertisingId2 = moPubIdentifier.f8636a;
            GpsHelper.AdvertisingInfo fetchAdvertisingInfoSync = GpsHelper.fetchAdvertisingInfoSync(moPubIdentifier.f8637b);
            if (fetchAdvertisingInfoSync == null || TextUtils.isEmpty(fetchAdvertisingInfoSync.advertisingId)) {
                Context context = moPubIdentifier.f8637b;
                Preconditions.NoThrow.checkNotNull(context);
                ContentResolver contentResolver = context.getContentResolver();
                int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", -1);
                String string = Settings.Secure.getString(contentResolver, "advertising_id");
                if (i == -1 || TextUtils.isEmpty(string)) {
                    advertisingId = null;
                } else {
                    advertisingId = new AdvertisingId(string, moPubIdentifier.f8636a.f8624b, i != 0);
                }
            } else {
                advertisingId = new AdvertisingId(fetchAdvertisingInfoSync.advertisingId, advertisingId2.f8624b, fetchAdvertisingInfoSync.limitAdTracking);
            }
            if (advertisingId != null) {
                String str = advertisingId.f8623a;
                String str2 = advertisingId2.f8624b;
                boolean z = advertisingId.f8625c;
                Preconditions.checkNotNull(str);
                Preconditions.checkNotNull(str2);
                moPubIdentifier.m36269c(new AdvertisingId(str, str2, z));
            } else {
                moPubIdentifier.m36269c(moPubIdentifier.f8636a);
            }
            MoPubIdentifier.this.f8639d = false;
            return null;
        }
    }

    public MoPubIdentifier(Context context) {
        AdvertisingId advertisingId;
        Preconditions.checkNotNull(context);
        this.f8637b = context;
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                try {
                    SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier");
                    String string = sharedPreferences.getString("privacy.identifier.ifa", "");
                    String string2 = sharedPreferences.getString("privacy.identifier.mopub", "");
                    advertisingId = (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) ? new AdvertisingId(string, string2, sharedPreferences.getBoolean("privacy.limit.ad.tracking", false)) : advertisingId;
                } catch (ClassCastException e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot read identifier from shared preferences");
                }
                advertisingId = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f8636a = advertisingId;
        if (advertisingId == null) {
            this.f8636a = new AdvertisingId("", UUID.randomUUID().toString(), false);
        }
        m36271a();
    }

    /* renamed from: a */
    public final void m36271a() {
        if (this.f8639d) {
            return;
        }
        this.f8639d = true;
        AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC2651b(null), new Void[0]);
    }

    /* renamed from: b */
    public final void m36270b() {
        synchronized (this) {
            SdkInitializationListener sdkInitializationListener = this.f8641f;
            if (sdkInitializationListener != null) {
                this.f8641f = null;
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    /* renamed from: c */
    public void m36269c(AdvertisingId advertisingId) {
        AdvertisingId advertisingId2 = this.f8636a;
        this.f8636a = advertisingId;
        Context context = this.f8637b;
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                Preconditions.checkNotNull(advertisingId);
                SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier").edit();
                edit.putBoolean("privacy.limit.ad.tracking", advertisingId.f8625c);
                edit.putString("privacy.identifier.ifa", advertisingId.f8623a);
                edit.putString("privacy.identifier.mopub", advertisingId.f8624b);
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.f8636a.f8623a.endsWith("10ca1ad1abe1")) {
            MoPubLog.setLogLevel(MoPubLog.LogLevel.DEBUG);
        }
        if (!this.f8636a.equals(advertisingId2) || !this.f8640e) {
            AdvertisingId advertisingId3 = this.f8636a;
            Preconditions.checkNotNull(advertisingId3);
            AdvertisingIdChangeListener advertisingIdChangeListener = this.f8638c;
            if (advertisingIdChangeListener != null) {
                advertisingIdChangeListener.onIdChanged(advertisingId2, advertisingId3);
            }
        }
        this.f8640e = true;
        m36270b();
    }

    public AdvertisingId getAdvertisingInfo() {
        AdvertisingId advertisingId = this.f8636a;
        m36271a();
        return advertisingId;
    }

    public void setIdChangeListener(AdvertisingIdChangeListener advertisingIdChangeListener) {
        this.f8638c = advertisingIdChangeListener;
    }
}
