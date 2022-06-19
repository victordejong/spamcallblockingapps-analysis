package com.google.android.gms.internal.mlkit_translate;

import android.os.SystemClock;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.razorpay.AnalyticsConstants;
import e.m.d.m.o;
import e.m.d.m.p;
import e.m.d.m.x;
import e.m.h.a.c.b;
import e.m.h.a.d.e;
import e.m.h.a.d.k;
import e.m.h.a.d.l;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgx.class */
public final class zzgx {
    public static final o<?> zza;
    private static final GmsLogger zzb = new GmsLogger("ModelDownloadLogger", "");
    private final zzgs zzc;
    private final b zzd;
    private final l zze;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgx$zza.class */
    public static class zza extends e<b, zzgx> {
        private final zzgs zza;
        private final l zzb;

        private zza(zzgs zzgsVar, l lVar) {
            this.zza = zzgsVar;
            this.zzb = lVar;
        }

        public /* synthetic */ Object create(Object obj) {
            return new zzgx(this.zza, this.zzb, (b) obj);
        }
    }

    static {
        o.b a = o.a(zza.class);
        a.a(new x(zzgs.class, 1, 0));
        a.a(new x(l.class, 1, 0));
        a.c(zzgw.zza);
        zza = a.b();
    }

    private zzgx(zzgs zzgsVar, l lVar, b bVar) {
        this.zzc = zzgsVar;
        this.zzd = bVar;
        this.zze = lVar;
    }

    public static final /* synthetic */ zza zza(p pVar) {
        return new zza((zzgs) pVar.a(zzgs.class), (l) pVar.a(l.class));
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    private final void zza(zzbt zzbtVar, String str, boolean z, boolean z2, k kVar, zzbj.zzak.zza zzaVar, int i) {
        b bVar = this.zzd;
        Objects.requireNonNull(bVar);
        zzbj.zzak.zzb zza2 = zzbj.zzak.zza().zza(zzbtVar).zza(zzaVar).zzb(i).zza((zzbj.zzam) ((zzkc) zzbj.zzam.zza().zza(zzbj.zzal.zza().zza(bVar.a()).zza(zzbj.zzal.zzc.CLOUD).zzb("").zza(zzha.zza(kVar))).zzh()));
        long e = this.zze.e(this.zzd);
        if (e == 0) {
            zzb.m38913e("ModelDownloadLogger", "Model downloaded without its beginning time recorded.");
        } else {
            ?? f = this.zze.f(this.zzd);
            char c = f;
            if (f == 0) {
                c = SystemClock.elapsedRealtime();
                this.zze.h(this.zzd, c);
            }
            zza2.zza(c - e);
        }
        this.zzc.zza(zzbj.zzad.zzb().zza(zzbj.zzbh.zzb().zzd(str)).zza(zza2), zzbu.MODEL_DOWNLOAD);
    }

    public final void zza(int i, boolean z, k kVar, int i2) {
        zza(zzbt.NO_ERROR, AnalyticsConstants.NOT_AVAILABLE, true, false, kVar, zzbj.zzak.zza.SUCCEEDED, 0);
    }

    public final void zza(boolean z, k kVar, int i) {
        zza(zzbt.DOWNLOAD_FAILED, AnalyticsConstants.NOT_AVAILABLE, true, false, kVar, zzbj.zzak.zza.FAILED, i);
    }
}
