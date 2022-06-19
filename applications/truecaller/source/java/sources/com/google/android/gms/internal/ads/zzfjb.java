package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjb.class */
public final class zzfjb {
    private final Context zza;
    private final Executor zzb;
    private final zzfii zzc;
    private final zzfik zzd;
    private final zzfja zze;
    private final zzfja zzf;
    private Task<zzyz> zzg;
    private Task<zzyz> zzh;

    @VisibleForTesting
    public zzfjb(Context context, Executor executor, zzfii zzfiiVar, zzfik zzfikVar, zzfiy zzfiyVar, zzfiz zzfizVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzfiiVar;
        this.zzd = zzfikVar;
        this.zze = zzfiyVar;
        this.zzf = zzfizVar;
    }

    public static zzfjb zza(Context context, Executor executor, zzfii zzfiiVar, zzfik zzfikVar) {
        zzfjb zzfjbVar = new zzfjb(context, executor, zzfiiVar, zzfikVar, new zzfiy(), new zzfiz());
        if (zzfjbVar.zzd.zzb()) {
            zzfjbVar.zzg = zzfjbVar.zzg(new Callable(zzfjbVar) { // from class: com.google.android.gms.internal.ads.zzfiv
                private final zzfjb zza;

                {
                    this.zza = zzfjbVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzf();
                }
            });
        } else {
            zzfjbVar.zzg = Tasks.m38509f(zzfjbVar.zze.zza());
        }
        zzfjbVar.zzh = zzfjbVar.zzg(new Callable(zzfjbVar) { // from class: com.google.android.gms.internal.ads.zzfiw
            private final zzfjb zza;

            {
                this.zza = zzfjbVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zze();
            }
        });
        return zzfjbVar;
    }

    private final Task<zzyz> zzg(Callable<zzyz> callable) {
        Task<zzyz> m38512c = Tasks.m38512c(this.zzb, callable);
        m38512c.m38532f(this.zzb, new OnFailureListener(this) { // from class: com.google.android.gms.internal.ads.zzfix
            private final zzfjb zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zza.zzd(exc);
            }
        });
        return m38512c;
    }

    private static zzyz zzh(Task<zzyz> task, zzyz zzyzVar) {
        return !task.m38519s() ? zzyzVar : task.m38523o();
    }

    public final zzyz zzb() {
        return zzh(this.zzg, this.zze.zza());
    }

    public final zzyz zzc() {
        return zzh(this.zzh, this.zzf.zza());
    }

    public final /* synthetic */ void zzd(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.zzc.zzc(2025, -1L, exc);
    }

    public final /* synthetic */ zzyz zze() throws Exception {
        Context context = this.zza;
        return zzfiq.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    public final /* synthetic */ zzyz zzf() throws Exception {
        Context context = this.zza;
        zzyj zzi = zzyz.zzi();
        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
        String id = advertisingIdInfo.getId();
        String str = id;
        if (id != null) {
            str = id;
            if (id.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(id);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str = Base64.encodeToString(bArr, 11);
            }
        }
        if (str != null) {
            zzi.zzS(str);
            zzi.zzT(advertisingIdInfo.isLimitAdTrackingEnabled());
            zzi.zzaa(6);
        }
        return zzi.zzah();
    }
}
