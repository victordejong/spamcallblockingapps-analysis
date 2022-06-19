package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/identifier/AdvertisingIdClient.class */
public class AdvertisingIdClient {
    public BlockingServiceConnection zza;
    public zzf zzb;
    public boolean zzc;
    public final Object zzd;
    public zzb zze;
    public final long zzf;
    private final Context zzg;

    @KeepForSdkWithMembers
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/identifier/AdvertisingIdClient$Info.class */
    public static final class Info {
        private final String zza;
        private final boolean zzb;

        @Deprecated
        public Info(String str, boolean z) {
            this.zza = str;
            this.zzb = z;
        }

        public String getId() {
            return this.zza;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzb;
        }

        public String toString() {
            String str = this.zza;
            boolean z = this.zzb;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    @KeepForSdk
    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }

    @VisibleForTesting
    public AdvertisingIdClient(Context context, long j, boolean z, boolean z2) {
        this.zzd = new Object();
        Objects.requireNonNull(context, "null reference");
        Context context2 = context;
        if (z) {
            Context applicationContext = context.getApplicationContext();
            context2 = context;
            if (applicationContext != null) {
                context2 = applicationContext;
            }
        }
        this.zzg = context2;
        this.zzc = false;
        this.zzf = j;
    }

    @KeepForSdk
    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, true, false);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.zzb(false);
            Info zzd = advertisingIdClient.zzd(-1);
            advertisingIdClient.zzc(zzd, true, 0.0f, SystemClock.elapsedRealtime() - elapsedRealtime, "", null);
            return zzd;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @KeepForSdk
    public static boolean getIsAdIdFakeForDebugLogging(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        boolean zzd;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.zzb(false);
            Preconditions.m38899i("Calling this from your main thread can lead to deadlock");
            synchronized (advertisingIdClient) {
                if (!advertisingIdClient.zzc) {
                    synchronized (advertisingIdClient.zzd) {
                        zzb zzbVar = advertisingIdClient.zze;
                        if (zzbVar == null || !zzbVar.zzb) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        advertisingIdClient.zzb(false);
                        if (!advertisingIdClient.zzc) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                    }
                }
                Objects.requireNonNull(advertisingIdClient.zza, "null reference");
                Objects.requireNonNull(advertisingIdClient.zzb, "null reference");
                try {
                    zzd = advertisingIdClient.zzb.zzd();
                } catch (RemoteException e2) {
                    throw new IOException("Remote exception");
                }
            }
            advertisingIdClient.zze();
            return zzd;
        } finally {
            advertisingIdClient.zza();
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    private final Info zzd(int i) throws IOException {
        Info info;
        Preconditions.m38899i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzc) {
                synchronized (this.zzd) {
                    zzb zzbVar = this.zze;
                    if (zzbVar == null || !zzbVar.zzb) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zzb(false);
                    if (!this.zzc) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            Objects.requireNonNull(this.zza, "null reference");
            Objects.requireNonNull(this.zzb, "null reference");
            try {
                info = new Info(this.zzb.zzc(), this.zzb.zze(true));
            } catch (RemoteException e2) {
                throw new IOException("Remote exception");
            }
        }
        zze();
        return info;
    }

    private final void zze() {
        synchronized (this.zzd) {
            zzb zzbVar = this.zze;
            if (zzbVar != null) {
                zzbVar.zza.countDown();
                try {
                    this.zze.join();
                } catch (InterruptedException e) {
                }
            }
            long j = this.zzf;
            if (j > 0) {
                this.zze = new zzb(this, j);
            }
        }
    }

    public final void finalize() throws Throwable {
        zza();
        super.finalize();
    }

    @KeepForSdk
    public Info getInfo() throws IOException {
        return zzd(-1);
    }

    @KeepForSdk
    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb(true);
    }

    public final void zza() {
        Preconditions.m38899i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzg == null || this.zza == null) {
                return;
            }
            try {
                if (this.zzc) {
                    ConnectionTracker.m38803b().m38802c(this.zzg, this.zza);
                }
            } catch (Throwable th) {
            }
            this.zzc = false;
            this.zzb = null;
            this.zza = null;
        }
    }

    @VisibleForTesting
    public final void zzb(boolean z) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        Preconditions.m38899i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzc) {
                zza();
            }
            Context context = this.zzg;
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                int mo39062e = GoogleApiAvailabilityLight.f5675b.mo39062e(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                if (mo39062e != 0 && mo39062e != 2) {
                    throw new IOException("Google Play services not available");
                }
                BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (!ConnectionTracker.m38803b().m38804a(context, intent, blockingServiceConnection, 1)) {
                    throw new IOException("Connection failure");
                }
                this.zza = blockingServiceConnection;
                try {
                    this.zzb = zze.zza(blockingServiceConnection.m39078b(10000L, TimeUnit.MILLISECONDS));
                    this.zzc = true;
                    if (z) {
                        zze();
                    }
                } catch (InterruptedException e) {
                    throw new IOException("Interrupted exception");
                } catch (Throwable th) {
                    throw new IOException(th);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                throw new GooglePlayServicesNotAvailableException(9);
            }
        }
    }

    @VisibleForTesting
    public final boolean zzc(Info info, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() <= PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            boolean z2 = "1";
            HashMap m8667T = C22128a.m8667T("app_context", "1");
            if (info != null) {
                if (true != info.isLimitAdTrackingEnabled()) {
                    z2 = DtbConstants.NETWORK_TYPE_UNKNOWN;
                }
                m8667T.put("limit_ad_tracking", z2);
                String id = info.getId();
                if (id != null) {
                    m8667T.put("ad_id_size", Integer.toString(id.length()));
                }
            }
            if (th != null) {
                m8667T.put("error", th.getClass().getName());
            }
            m8667T.put(RemoteMessageConst.Notification.TAG, "AdvertisingIdClient");
            m8667T.put("time_spent", Long.toString(j));
            new zza(this, m8667T).start();
            return true;
        }
        return false;
    }
}
