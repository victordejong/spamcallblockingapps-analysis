package com.google.android.gms.internal.mlkit_common;

import android.os.SystemClock;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.mlkit_common.zzav;
import com.razorpay.AnalyticsConstants;
import e.m.d.m.o;
import e.m.d.m.p;
import e.m.d.m.x;
import e.m.h.a.c.b;
import e.m.h.a.d.e;
import e.m.h.a.d.k;
import e.m.h.a.d.l;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdx.class */
public final class zzdx {
    public static final o<?> zza;
    private static final GmsLogger zzb = new GmsLogger("ModelDownloadLogger", "");
    private final zzds zzc;
    private final b zzd;
    private final l zze;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdx$zza.class */
    public static class zza extends e<b, zzdx> {
        private final zzds zza;
        private final l zzb;

        private zza(zzds zzdsVar, l lVar) {
            this.zza = zzdsVar;
            this.zzb = lVar;
        }

        public /* synthetic */ Object create(Object obj) {
            return new zzdx(this.zza, this.zzb, (b) obj);
        }
    }

    static {
        o.b a = o.a(zza.class);
        a.a(new x(zzds.class, 1, 0));
        a.a(new x(l.class, 1, 0));
        a.c(zzdw.zza);
        zza = a.b();
    }

    private zzdx(zzds zzdsVar, l lVar, b bVar) {
        this.zzc = zzdsVar;
        this.zzd = bVar;
        this.zze = lVar;
    }

    public static final /* synthetic */ zza zza(p pVar) {
        return new zza((zzds) pVar.a(zzds.class), (l) pVar.a(l.class));
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    private final void zza(zzbf zzbfVar, String str, boolean z, boolean z2, k kVar, zzav.zzak.zza zzaVar, int i) {
        b bVar = this.zzd;
        Objects.requireNonNull(bVar);
        zzav.zzak.zzb zza2 = zzav.zzak.zza().zza(zzbfVar).zza(zzaVar).zzc(i).zza((zzav.zzam) ((zzfq) zzav.zzam.zza().zza(zzav.zzal.zza().zza(bVar.a()).zza(zzav.zzal.zzc.CLOUD).zzb("").zza(zzea.zza(kVar))).zzg()));
        if (z) {
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
        }
        if (z2) {
            long e2 = this.zze.e(this.zzd);
            if (e2 == 0) {
                zzb.m38913e("ModelDownloadLogger", "Model downloaded without its beginning time recorded.");
            } else {
                zza2.zzb(SystemClock.elapsedRealtime() - e2);
            }
        }
        this.zzc.zza(zzav.zzad.zzb().zza(zzav.zzbh.zzb().zzd(str)).zza(zza2), zzbg.MODEL_DOWNLOAD);
    }

    public final void zza(int i, k kVar, int i2) {
        zza(zzeb.zza(0), AnalyticsConstants.NOT_AVAILABLE, false, true, kVar, zzdz.zza(6), 0);
    }

    public final void zza(int i, boolean z, k kVar, int i2) {
        zza(zzeb.zza(i), AnalyticsConstants.NOT_AVAILABLE, z, false, kVar, zzdz.zza(i2), 0);
    }

    public final void zza(boolean z, k kVar, int i) {
        zza(zzbf.DOWNLOAD_FAILED, AnalyticsConstants.NOT_AVAILABLE, false, false, kVar, zzav.zzak.zza.FAILED, i);
    }
}
