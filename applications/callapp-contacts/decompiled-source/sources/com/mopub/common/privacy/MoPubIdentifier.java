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

    /* renamed from: a  reason: collision with root package name */
    AdvertisingId f33952a;

    /* renamed from: b  reason: collision with root package name */
    final Context f33953b;

    /* renamed from: c  reason: collision with root package name */
    boolean f33954c;

    /* renamed from: d  reason: collision with root package name */
    volatile SdkInitializationListener f33955d;
    private AdvertisingIdChangeListener e;
    private boolean f;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener.class */
    public interface AdvertisingIdChangeListener {
        void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/MoPubIdentifier$a.class */
    public final class a extends AsyncTask<Void, Void, Void> {
        private a() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            AdvertisingId advertisingId;
            MoPubIdentifier moPubIdentifier = MoPubIdentifier.this;
            AdvertisingId advertisingId2 = moPubIdentifier.f33952a;
            GpsHelper.AdvertisingInfo fetchAdvertisingInfoSync = GpsHelper.fetchAdvertisingInfoSync(moPubIdentifier.f33953b);
            if (fetchAdvertisingInfoSync == null || TextUtils.isEmpty(fetchAdvertisingInfoSync.advertisingId)) {
                Context context = moPubIdentifier.f33953b;
                Preconditions.NoThrow.checkNotNull(context);
                ContentResolver contentResolver = context.getContentResolver();
                int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", -1);
                String string = Settings.Secure.getString(contentResolver, "advertising_id");
                if (i == -1 || TextUtils.isEmpty(string)) {
                    advertisingId = null;
                } else {
                    advertisingId = new AdvertisingId(string, moPubIdentifier.f33952a.f33925b, i != 0);
                }
            } else {
                advertisingId = new AdvertisingId(fetchAdvertisingInfoSync.advertisingId, advertisingId2.f33925b, fetchAdvertisingInfoSync.limitAdTracking);
            }
            if (advertisingId != null) {
                String str = advertisingId.f33924a;
                String str2 = advertisingId2.f33925b;
                boolean z = advertisingId.f33926c;
                Preconditions.checkNotNull(str);
                Preconditions.checkNotNull(str2);
                moPubIdentifier.a(new AdvertisingId(str, str2, z));
            } else {
                moPubIdentifier.a(moPubIdentifier.f33952a);
            }
            MoPubIdentifier.this.f = false;
            return null;
        }
    }

    public MoPubIdentifier(Context context) {
        this(context, null);
    }

    MoPubIdentifier(Context context, AdvertisingIdChangeListener advertisingIdChangeListener) {
        Preconditions.checkNotNull(context);
        this.f33953b = context;
        this.e = advertisingIdChangeListener;
        AdvertisingId a2 = a(context);
        this.f33952a = a2;
        if (a2 == null) {
            this.f33952a = AdvertisingId.a();
        }
        b();
    }

    private static AdvertisingId a(Context context) {
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

    private static void a(Context context, AdvertisingId advertisingId) {
        synchronized (MoPubIdentifier.class) {
            try {
                Preconditions.checkNotNull(context);
                Preconditions.checkNotNull(advertisingId);
                SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(context, "com.mopub.settings.identifier").edit();
                edit.putBoolean("privacy.limit.ad.tracking", advertisingId.f33926c);
                edit.putString("privacy.identifier.ifa", advertisingId.f33924a);
                edit.putString("privacy.identifier.mopub", advertisingId.f33925b);
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void b() {
        if (!this.f) {
            this.f = true;
            AsyncTasks.safeExecuteOnExecutor(new a(), new Void[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        synchronized (this) {
            SdkInitializationListener sdkInitializationListener = this.f33955d;
            if (sdkInitializationListener != null) {
                this.f33955d = null;
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    final void a(AdvertisingId advertisingId) {
        AdvertisingId advertisingId2 = this.f33952a;
        this.f33952a = advertisingId;
        a(this.f33953b, advertisingId);
        if (this.f33952a.f33924a.endsWith("10ca1ad1abe1")) {
            MoPubLog.setLogLevel(MoPubLog.LogLevel.DEBUG);
        }
        if (!this.f33952a.equals(advertisingId2) || !this.f33954c) {
            AdvertisingId advertisingId3 = this.f33952a;
            Preconditions.checkNotNull(advertisingId3);
            AdvertisingIdChangeListener advertisingIdChangeListener = this.e;
            if (advertisingIdChangeListener != null) {
                advertisingIdChangeListener.onIdChanged(advertisingId2, advertisingId3);
            }
        }
        this.f33954c = true;
        a();
    }

    public AdvertisingId getAdvertisingInfo() {
        AdvertisingId advertisingId = this.f33952a;
        b();
        return advertisingId;
    }

    public void setIdChangeListener(AdvertisingIdChangeListener advertisingIdChangeListener) {
        this.e = advertisingIdChangeListener;
    }
}
