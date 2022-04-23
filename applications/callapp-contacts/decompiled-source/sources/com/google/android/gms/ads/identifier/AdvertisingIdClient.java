package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.a;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.a.e;
import com.google.android.gms.internal.a.f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/identifier/AdvertisingIdClient.class */
public class AdvertisingIdClient {
    private final Context mContext;
    private a zze;
    private e zzf;
    private boolean zzg;
    private final Object zzh;
    private zza zzi;
    private final boolean zzj;
    private final long zzk;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/identifier/AdvertisingIdClient$Info.class */
    public static final class Info {
        private final String zzq;
        private final boolean zzr;

        public Info(String str, boolean z) {
            this.zzq = str;
            this.zzr = z;
        }

        public final String getId() {
            return this.zzq;
        }

        public final boolean isLimitAdTrackingEnabled() {
            return this.zzr;
        }

        public final String toString() {
            String str = this.zzq;
            boolean z = this.zzr;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/identifier/AdvertisingIdClient$zza.class */
    public static final class zza extends Thread {
        private WeakReference<AdvertisingIdClient> zzm;
        private long zzn;
        CountDownLatch zzo = new CountDownLatch(1);
        boolean zzp = false;

        public zza(AdvertisingIdClient advertisingIdClient, long j) {
            this.zzm = new WeakReference<>(advertisingIdClient);
            this.zzn = j;
            start();
        }

        private final void disconnect() {
            AdvertisingIdClient advertisingIdClient = this.zzm.get();
            if (advertisingIdClient != null) {
                advertisingIdClient.finish();
                this.zzp = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (!this.zzo.await(this.zzn, TimeUnit.MILLISECONDS)) {
                    disconnect();
                }
            } catch (InterruptedException e) {
                disconnect();
            }
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }

    private AdvertisingIdClient(Context context, long j, boolean z, boolean z2) {
        this.zzh = new Object();
        o.a(context);
        Context context2 = context;
        if (z) {
            context2 = context.getApplicationContext();
            if (context2 == null) {
                context2 = context;
            }
        }
        this.mContext = context2;
        this.zzg = false;
        this.zzk = j;
        this.zzj = z2;
    }

    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb zzbVar = new zzb(context);
        boolean z = zzbVar.getBoolean("gads:ad_id_app_context:enabled", false);
        float f = zzbVar.getFloat("gads:ad_id_app_context:ping_ratio", BitmapDescriptorFactory.HUE_RED);
        String string = zzbVar.getString("gads:ad_id_use_shared_preference:experiment_id", "");
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, z, zzbVar.getBoolean("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.zza(false);
            Info info = advertisingIdClient.getInfo();
            advertisingIdClient.zza(info, z, f, SystemClock.elapsedRealtime() - elapsedRealtime, string, null);
            return info;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    public static boolean getIsAdIdFakeForDebugLogging(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb zzbVar = new zzb(context);
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, zzbVar.getBoolean("gads:ad_id_app_context:enabled", false), zzbVar.getBoolean("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            advertisingIdClient.zza(false);
            return advertisingIdClient.zzb();
        } finally {
            advertisingIdClient.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    private static a zza(Context context, boolean z) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int b2 = c.b().b(context, d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (b2 == 0 || b2 == 2) {
                String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
                a aVar = new a();
                Intent intent = new Intent(str);
                intent.setPackage("com.google.android.gms");
                try {
                    if (com.google.android.gms.common.stats.a.a().a(context, intent, aVar, 1)) {
                        return aVar;
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

    private static e zza(Context context, a aVar) throws IOException {
        try {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            o.c("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
            if (!aVar.f22596a) {
                aVar.f22596a = true;
                IBinder poll = aVar.f22597b.poll(10000L, timeUnit);
                if (poll != null) {
                    return f.a(poll);
                }
                throw new TimeoutException("Timed out waiting for the service connection");
            }
            throw new IllegalStateException("Cannot call get on this connection more than once");
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    private final void zza() {
        synchronized (this.zzh) {
            zza zzaVar = this.zzi;
            if (zzaVar != null) {
                zzaVar.zzo.countDown();
                try {
                    this.zzi.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.zzk > 0) {
                this.zzi = new zza(this, this.zzk);
            }
        }
    }

    private final void zza(boolean z) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        o.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzg) {
                finish();
            }
            a zza2 = zza(this.mContext, this.zzj);
            this.zze = zza2;
            this.zzf = zza(this.mContext, zza2);
            this.zzg = true;
            if (z) {
                zza();
            }
        }
    }

    private final boolean zza(Info info, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > f) {
            return false;
        }
        HashMap hashMap = new HashMap();
        String str2 = "1";
        hashMap.put("app_context", z ? "1" : "0");
        if (info != null) {
            if (!info.isLimitAdTrackingEnabled()) {
                str2 = "0";
            }
            hashMap.put("limit_ad_tracking", str2);
        }
        if (!(info == null || info.getId() == null)) {
            hashMap.put("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (th != null) {
            hashMap.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j));
        new com.google.android.gms.ads.identifier.zza(this, hashMap).start();
        return true;
    }

    private final boolean zzb() throws IOException {
        boolean c2;
        o.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzg) {
                synchronized (this.zzh) {
                    zza zzaVar = this.zzi;
                    if (zzaVar == null || !zzaVar.zzp) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zza(false);
                    if (!this.zzg) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            o.a(this.zze);
            o.a(this.zzf);
            try {
                c2 = this.zzf.c();
            } catch (RemoteException e2) {
                throw new IOException("Remote exception");
            }
        }
        zza();
        return c2;
    }

    protected void finalize() throws Throwable {
        finish();
        super.finalize();
    }

    public final void finish() {
        o.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.mContext != null && this.zze != null) {
                try {
                    if (this.zzg) {
                        com.google.android.gms.common.stats.a.a().a(this.mContext, this.zze);
                    }
                } catch (Throwable th) {
                }
                this.zzg = false;
                this.zzf = null;
                this.zze = null;
            }
        }
    }

    public Info getInfo() throws IOException {
        Info info;
        o.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzg) {
                synchronized (this.zzh) {
                    zza zzaVar = this.zzi;
                    if (zzaVar == null || !zzaVar.zzp) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zza(false);
                    if (!this.zzg) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            o.a(this.zze);
            o.a(this.zzf);
            try {
                info = new Info(this.zzf.a(), this.zzf.b());
            } catch (RemoteException e2) {
                throw new IOException("Remote exception");
            }
        }
        zza();
        return info;
    }

    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zza(true);
    }
}
