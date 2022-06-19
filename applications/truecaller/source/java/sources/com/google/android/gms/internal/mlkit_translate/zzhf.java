package com.google.android.gms.internal.mlkit_translate;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.google.android.gms.internal.mlkit_translate.zzhk;
import e.m.d.m.o;
import e.m.d.m.x;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhf.class */
public class zzhf {
    public static final o<?> zza;
    private final zzhb zzb;
    private final zzhn zzc;
    private final zzhk zzd;
    private zzhp zze;

    static {
        o.b a = o.a(zzhf.class);
        a.a(new x(Context.class, 1, 0));
        a.a(new x(zzhk.zza.class, 1, 0));
        a.a(new x(zzhg.class, 1, 0));
        a.c(zzhi.zza);
        zza = a.b();
    }

    public zzhf(Context context, zzhk.zza zzaVar, zzhg zzhgVar) {
        zzhk zzhkVar = new zzhk(context, zzaVar);
        this.zzd = zzhkVar;
        this.zzc = new zzhn(context);
        this.zzb = new zzhb(zzhgVar, zzhkVar);
    }

    public final void zza() throws IOException, InterruptedException {
        zzhl zzhlVar = new zzhl();
        zzhlVar.zza();
        try {
            zzhp zza2 = this.zzc.zza(zzhlVar);
            if (zza2 != null) {
                this.zze = zza2;
            } else {
                zzhl zzhlVar2 = new zzhl();
                zzhlVar2.zza();
                boolean zza3 = zzil.zza(new zzim(this.zzb, new zzhc(zzhh.zza()), zzhlVar2) { // from class: com.google.android.gms.internal.mlkit_translate.zzhe
                    private final zzhb zza;
                    private final zzhc zzb;
                    private final zzhl zzc;

                    {
                        this.zza = zzhbVar;
                        this.zzb = zzhcVar;
                        this.zzc = zzhlVar2;
                    }

                    @Override // com.google.android.gms.internal.mlkit_translate.zzim
                    public final boolean zza() {
                        return this.zza.zza(this.zzb, this.zzc);
                    }
                });
                if (!zza3) {
                    zzhlVar2.zza(zzbj.zzbg.zza.RPC_EXPONENTIAL_BACKOFF_FAILED);
                }
                if (!zza3) {
                    zzhlVar2.zza(zzbj.zzbg.zza.RPC_ERROR);
                    zzhlVar2.zzb();
                    this.zzd.zzb(zzhlVar2);
                } else {
                    zzhp zza4 = this.zzb.zza();
                    this.zze = zza4;
                    this.zzc.zza(zza4, zzhlVar2);
                    zzhlVar2.zzb();
                    this.zzd.zzb(zzhlVar2);
                }
            }
        } finally {
            zzhlVar.zzb();
            this.zzd.zza(zzhlVar);
        }
    }

    public final zzhc zzb() {
        Preconditions.m38896l(this.zze != null);
        return this.zze.zza();
    }

    public final String zzc() throws InterruptedException {
        Preconditions.m38896l(this.zze != null);
        Preconditions.m38896l(this.zze != null);
        if (this.zze.zze()) {
            zzhl zzhlVar = new zzhl();
            zzhlVar.zza();
            try {
                if (this.zzb.zza(zzhlVar)) {
                    this.zze = this.zzb.zza();
                }
            } finally {
                zzhlVar.zzb();
                this.zzd.zzc(zzhlVar);
            }
        }
        Preconditions.m38896l(this.zze != null);
        return this.zze.zzc();
    }
}
