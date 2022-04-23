package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/identifier/AdvertisingIdClient.class */
public class AdvertisingIdClient {
    @Nullable
    @GuardedBy

    /* renamed from: a */
    private BlockingServiceConnection f6841a;
    @Nullable
    @GuardedBy

    /* renamed from: b */
    private zze f6842b;
    @GuardedBy

    /* renamed from: c */
    private boolean f6843c;

    /* renamed from: d */
    private final Object f6844d = new Object();
    @Nullable
    @GuardedBy

    /* renamed from: e */
    private zza f6845e;
    @GuardedBy

    /* renamed from: f */
    private final Context f6846f;

    /* renamed from: g */
    private final boolean f6847g;

    /* renamed from: h */
    private final long f6848h;

    @KeepForSdkWithMembers
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/identifier/AdvertisingIdClient$Info.class */
    public static final class Info {

        /* renamed from: a */
        private final String f6849a;

        /* renamed from: b */
        private final boolean f6850b;

        public Info(String str, boolean z) {
            this.f6849a = str;
            this.f6850b = z;
        }

        /* renamed from: a */
        public final String m15176a() {
            return this.f6849a;
        }

        /* renamed from: b */
        public final boolean m15175b() {
            return this.f6850b;
        }

        public final String toString() {
            String str = this.f6849a;
            boolean z = this.f6850b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/identifier/AdvertisingIdClient$zza.class */
    public static final class zza extends Thread {

        /* renamed from: f */
        private WeakReference<AdvertisingIdClient> f6851f;

        /* renamed from: g */
        private long f6852g;

        /* renamed from: h */
        CountDownLatch f6853h = new CountDownLatch(1);

        /* renamed from: i */
        boolean f6854i = false;

        public zza(AdvertisingIdClient advertisingIdClient, long j) {
            this.f6851f = new WeakReference<>(advertisingIdClient);
            this.f6852g = j;
            start();
        }

        /* renamed from: a */
        private final void m15174a() {
            AdvertisingIdClient advertisingIdClient = this.f6851f.get();
            if (advertisingIdClient != null) {
                advertisingIdClient.m15185a();
                this.f6854i = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (!this.f6853h.await(this.f6852g, TimeUnit.MILLISECONDS)) {
                    m15174a();
                }
            } catch (InterruptedException e) {
                m15174a();
            }
        }
    }

    @VisibleForTesting
    private AdvertisingIdClient(Context context, long j, boolean z, boolean z2) {
        Preconditions.m14523k(context);
        Context context2 = context;
        if (z) {
            context2 = context.getApplicationContext();
            if (context2 == null) {
                context2 = context;
            }
        }
        this.f6846f = context2;
        this.f6843c = false;
        this.f6848h = j;
        this.f6847g = z2;
    }

    @KeepForSdk
    /* renamed from: b */
    public static Info m15184b(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb zzbVar = new zzb(context);
        boolean a = zzbVar.m15173a("gads:ad_id_app_context:enabled", false);
        float b = zzbVar.m15172b("gads:ad_id_app_context:ping_ratio", 0.0f);
        String c = zzbVar.m15171c("gads:ad_id_use_shared_preference:experiment_id", "");
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, a, zzbVar.m15173a("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.m15178h(false);
            Info c2 = advertisingIdClient.m15183c();
            advertisingIdClient.m15177i(c2, a, b, SystemClock.elapsedRealtime() - elapsedRealtime, c, null);
            return c2;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @KeepForSdk
    /* renamed from: d */
    public static void m15182d(boolean z) {
    }

    /* renamed from: e */
    private static BlockingServiceConnection m15181e(Context context, boolean z) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int j = GoogleApiAvailabilityLight.m15064h().mo15062j(context, GooglePlayServicesUtilLight.f6984a);
            if (j == 0 || j == 2) {
                String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
                BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                Intent intent = new Intent(str);
                intent.setPackage("com.google.android.gms");
                try {
                    if (ConnectionTracker.m14372b().m14373a(context, intent, blockingServiceConnection, 1)) {
                        return blockingServiceConnection;
                    }
                    throw new IOException("Connection failure");
                } catch (Throwable th) {
                    throw new IOException(th);
                }
            } else {
                throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    @VisibleForTesting
    /* renamed from: f */
    private static zze m15180f(Context context, BlockingServiceConnection blockingServiceConnection) throws IOException {
        try {
            return zzf.m14119a(blockingServiceConnection.m15095a(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    /* renamed from: g */
    private final void m15179g() {
        synchronized (this.f6844d) {
            if (this.f6845e != null) {
                this.f6845e.f6853h.countDown();
                try {
                    this.f6845e.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.f6848h > 0) {
                this.f6845e = new zza(this, this.f6848h);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: h */
    private final void m15178h(boolean z) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        Preconditions.m14524j("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f6843c) {
                m15185a();
            }
            BlockingServiceConnection e = m15181e(this.f6846f, this.f6847g);
            this.f6841a = e;
            this.f6842b = m15180f(this.f6846f, e);
            this.f6843c = true;
            if (z) {
                m15179g();
            }
        }
    }

    @VisibleForTesting
    /* renamed from: i */
    private final boolean m15177i(Info info, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > f) {
            return false;
        }
        HashMap hashMap = new HashMap();
        String str2 = TmoUserStatus.CUSTOMER_TYPE_POSTPAID;
        hashMap.put("app_context", z ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
        if (info != null) {
            if (!info.m15175b()) {
                str2 = "0";
            }
            hashMap.put("limit_ad_tracking", str2);
        }
        if (!(info == null || info.m15176a() == null)) {
            hashMap.put("ad_id_size", Integer.toString(info.m15176a().length()));
        }
        if (th != null) {
            hashMap.put(Constants.IPC_BUNDLE_KEY_SEND_ERROR, th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j));
        new com.google.android.gms.ads.identifier.zza(this, hashMap).start();
        return true;
    }

    /* renamed from: a */
    public final void m15185a() {
        Preconditions.m14524j("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f6846f != null && this.f6841a != null) {
                if (this.f6843c) {
                    ConnectionTracker.m14372b().m14371c(this.f6846f, this.f6841a);
                }
                this.f6843c = false;
                this.f6842b = null;
                this.f6841a = null;
            }
        }
    }

    @KeepForSdk
    /* renamed from: c */
    public Info m15183c() throws IOException {
        Info info;
        Preconditions.m14524j("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f6843c) {
                synchronized (this.f6844d) {
                    if (this.f6845e == null || !this.f6845e.f6854i) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m15178h(false);
                    if (!this.f6843c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            Preconditions.m14523k(this.f6841a);
            Preconditions.m14523k(this.f6842b);
            try {
                info = new Info(this.f6842b.getId(), this.f6842b.mo14118N(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m15179g();
        return info;
    }

    protected void finalize() throws Throwable {
        m15185a();
        super.finalize();
    }
}
