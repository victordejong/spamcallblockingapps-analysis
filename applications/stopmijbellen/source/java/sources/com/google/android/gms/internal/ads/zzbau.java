package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Future;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbau.class */
public final class zzbau {
    @GuardedBy("lock")
    private zzbaj zza;
    @GuardedBy("lock")
    private boolean zzb;
    private final Context zzc;
    private final Object zzd = new Object();

    public zzbau(Context context) {
        this.zzc = context;
    }

    public static /* bridge */ /* synthetic */ void zze(zzbau zzbauVar) {
        synchronized (zzbauVar.zzd) {
            zzbaj zzbajVar = zzbauVar.zza;
            if (zzbajVar == null) {
                return;
            }
            zzbajVar.disconnect();
            zzbauVar.zza = null;
            Binder.flushPendingCommands();
        }
    }

    public final Future<zzbaw> zzc(zzbak zzbakVar) {
        zzbao zzbaoVar = new zzbao(this);
        zzbas zzbasVar = new zzbas(this, zzbakVar, zzbaoVar);
        zzbat zzbatVar = new zzbat(this, zzbaoVar);
        synchronized (this.zzd) {
            zzbaj zzbajVar = new zzbaj(this.zzc, zzt.zzt().zzb(), zzbasVar, zzbatVar);
            this.zza = zzbajVar;
            zzbajVar.checkAvailabilityAndConnect();
        }
        return zzbaoVar;
    }
}
