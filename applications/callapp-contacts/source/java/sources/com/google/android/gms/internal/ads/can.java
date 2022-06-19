package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/can.class */
public final class can implements caj<anp> {

    /* renamed from: a */
    final afq f45206a;

    /* renamed from: b */
    final cah f45207b;

    /* renamed from: c */
    private final cpq f45208c;

    /* renamed from: d */
    private final Context f45209d;

    /* renamed from: e */
    private aoa f45210e;

    public can(afq afqVar, Context context, cah cahVar, cpq cpqVar) {
        this.f45206a = afqVar;
        this.f45209d = context;
        this.f45207b = cahVar;
        this.f45208c = cpqVar;
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17390a() {
        aoa aoaVar = this.f45210e;
        return aoaVar != null && aoaVar.f42509d;
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17387a(zzvq zzvqVar, String str, cai caiVar, cal<? super anp> calVar) throws RemoteException {
        zzr.zzkv();
        if (zzj.zzbc(this.f45209d) && zzvqVar.zzcip == null) {
            zzd.zzex("Failed to load the ad because app ID is missing.");
            this.f45206a.mo18734b().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cam

                /* renamed from: a */
                private final can f45205a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f45205a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f45205a.f45207b.f45203c.mo17319a(cqh.m17323a(cqj.APP_ID_MISSING, null, null));
                }
            });
            return false;
        } else if (str == null) {
            zzd.zzex("Ad unit ID should not be null for NativeAdLoader.");
            this.f45206a.mo18734b().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cap

                /* renamed from: a */
                private final can f45214a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f45214a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f45214a.f45207b.f45203c.mo17319a(cqh.m17323a(cqj.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        } else {
            cqb.m17341a(this.f45209d, zzvqVar.zzcid);
            int i = caiVar instanceof cak ? ((cak) caiVar).f45204a : 1;
            cpq cpqVar = this.f45208c;
            cpqVar.f46337a = zzvqVar;
            cpqVar.f46350n = i;
            cpo m17362a = cpqVar.m17362a();
            bbd mo18706p = this.f45206a.mo18706p();
            aqz.C12188a c12188a = new aqz.C12188a();
            c12188a.f43076a = this.f45209d;
            c12188a.f43077b = m17362a;
            bbd mo18256a = mo18706p.mo18257a(c12188a.m18450a()).mo18256a(new awm.C12200a().m18370a());
            cah cahVar = this.f45207b;
            bbe mo18259a = mo18256a.mo18255a(new bba(cahVar.f45201a, cahVar.f45202b.m17546h())).mo18258a(new alp(null)).mo18259a();
            this.f45206a.mo18694v().m17338a(1);
            aoa aoaVar = new aoa(this.f45206a.mo18730d(), this.f45206a.mo18732c(), mo18259a.mo18254a().m18504b());
            this.f45210e = aoaVar;
            dbh.m16901a(aoaVar.f42508c, new aod(aoaVar, new cao(this, calVar, mo18259a)), aoaVar.f42506a);
            return true;
        }
    }
}
