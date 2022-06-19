package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzds.class */
public final class zzds implements zzdy {
    private static zzds zzvn;
    private final Context context;
    private final zzdus zzvo;
    private final zzdux zzvp;
    private final zzdvc zzvq;
    private final zzex zzvr;
    private final zzdsy zzvs;
    private final Executor zzvt;
    private final zzgp zzvu;
    private final zzduy zzvv;
    private volatile long zzvw = 0;
    private final Object zzvx = new Object();
    private volatile boolean zzvy;

    private zzds(Context context, zzdsy zzdsyVar, zzdus zzdusVar, zzdux zzduxVar, zzdvc zzdvcVar, zzex zzexVar, Executor executor, zzdsx zzdsxVar, zzgp zzgpVar) {
        this.context = context;
        this.zzvs = zzdsyVar;
        this.zzvo = zzdusVar;
        this.zzvp = zzduxVar;
        this.zzvq = zzdvcVar;
        this.zzvr = zzexVar;
        this.zzvt = executor;
        this.zzvu = zzgpVar;
        this.zzvv = new zzdu(this, zzdsxVar);
    }

    public static zzds zza(Context context, zzdsy zzdsyVar, zzdtc zzdtcVar) {
        return zza(context, zzdsyVar, zzdtcVar, Executors.newCachedThreadPool());
    }

    private static zzds zza(Context context, zzdsy zzdsyVar, zzdtc zzdtcVar, Executor executor) {
        zzdto zza = zzdto.zza(context, executor, zzdsyVar, zzdtcVar);
        zzfa zzfaVar = new zzfa(context);
        zzex zzexVar = new zzex(zzdtcVar, zza, new zzfj(context, zzfaVar), zzfaVar);
        zzgp zzayg = new zzdue(context, zzdsyVar).zzayg();
        zzdsx zzdsxVar = new zzdsx();
        return new zzds(context, zzdsyVar, new zzdus(context, zzayg), new zzdux(context, zzayg, new zzdr(zzdsyVar), ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrt)).booleanValue()), new zzdvc(context, zzexVar, zzdsyVar, zzdsxVar), zzexVar, executor, zzdsxVar, zzayg);
    }

    public static zzds zza(String str, Context context, boolean z) {
        zzds zzdsVar;
        synchronized (zzds.class) {
            try {
                if (zzvn == null) {
                    zzdtc zzaxo = zzdtc.zzaxr().zzhe(str).zzbo(z).zzaxo();
                    ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
                    zzds zza = zza(context, zzdsy.zza(context, newCachedThreadPool), zzaxo, newCachedThreadPool);
                    zzvn = zza;
                    zza.zzbq();
                    zzvn.zzbt();
                }
                zzdsVar = zzvn;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzdsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00fb A[Catch: zzelo -> 0x01c0, TRY_ENTER, TryCatch #1 {zzelo -> 0x01c0, blocks: (B:6:0x002a, B:8:0x0047, B:10:0x0056, B:12:0x0067, B:15:0x007d, B:17:0x008b, B:20:0x009a, B:23:0x00af, B:27:0x00c6, B:29:0x00d9, B:36:0x00fb, B:38:0x010c, B:43:0x0132, B:46:0x0146, B:47:0x0156, B:50:0x0168, B:52:0x0179, B:54:0x0187, B:57:0x019e, B:59:0x01af), top: B:66:0x002a, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010c A[Catch: zzelo -> 0x01c0, TRY_ENTER, TryCatch #1 {zzelo -> 0x01c0, blocks: (B:6:0x002a, B:8:0x0047, B:10:0x0056, B:12:0x0067, B:15:0x007d, B:17:0x008b, B:20:0x009a, B:23:0x00af, B:27:0x00c6, B:29:0x00d9, B:36:0x00fb, B:38:0x010c, B:43:0x0132, B:46:0x0146, B:47:0x0156, B:50:0x0168, B:52:0x0179, B:54:0x0187, B:57:0x019e, B:59:0x01af), top: B:66:0x002a, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzbs() {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzds.zzbs():void");
    }

    private final zzdup zzp(int i) {
        if (!zzdue.zza(this.zzvu)) {
            return null;
        }
        return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrr)).booleanValue() ? this.zzvp.zzp(i) : this.zzvo.zzp(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, View view, Activity activity) {
        zzbt();
        zzdte zzayv = this.zzvq.zzayv();
        if (zzayv != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzb = zzayv.zzb(context, null, view, activity);
            this.zzvs.zza(5002, System.currentTimeMillis() - currentTimeMillis, zzb, null);
            return zzb;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, (Activity) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, String str, View view, Activity activity) {
        zzbt();
        zzdte zzayv = this.zzvq.zzayv();
        if (zzayv != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zza = zzayv.zza(context, null, str, view, activity);
            this.zzvs.zza(5000, System.currentTimeMillis() - currentTimeMillis, zza, null);
            return zza;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zza(int i, int i2, int i3) {
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zza(MotionEvent motionEvent) {
        zzdte zzayv = this.zzvq.zzayv();
        if (zzayv != null) {
            try {
                zzayv.zza(null, motionEvent);
            } catch (zzduz e) {
                this.zzvs.zza(e.zzayu(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zzb(Context context) {
        zzbt();
        zzdte zzayv = this.zzvq.zzayv();
        if (zzayv != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzs = zzayv.zzs(context, null);
            this.zzvs.zza(5001, System.currentTimeMillis() - currentTimeMillis, zzs, null);
            return zzs;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzb(View view) {
        this.zzvr.zzc(view);
    }

    public final void zzbq() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            zzdup zzp = zzp(zzdva.zzhut);
            if (zzp != null) {
                this.zzvq.zzb(zzp);
            } else {
                this.zzvs.zzh(4013, System.currentTimeMillis() - currentTimeMillis);
            }
        }
    }

    public final void zzbr() {
        if (!zzdue.zza(this.zzvu)) {
            return;
        }
        this.zzvt.execute(new zzdt(this));
    }

    public final void zzbt() {
        if (!this.zzvy) {
            synchronized (this.zzvx) {
                if (!this.zzvy) {
                    if ((System.currentTimeMillis() / 1000) - this.zzvw < 3600) {
                        return;
                    }
                    zzdup zzayw = this.zzvq.zzayw();
                    if (zzayw == null || zzayw.zzff(3600L)) {
                        zzbr();
                    }
                }
            }
        }
    }
}
