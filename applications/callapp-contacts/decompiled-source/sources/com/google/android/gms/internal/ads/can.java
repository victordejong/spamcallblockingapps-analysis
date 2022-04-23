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

    /* renamed from: a  reason: collision with root package name */
    final afq f25491a;

    /* renamed from: b  reason: collision with root package name */
    final cah f25492b;

    /* renamed from: c  reason: collision with root package name */
    private final cpq f25493c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f25494d;
    private aoa e;

    public can(afq afqVar, Context context, cah cahVar, cpq cpqVar) {
        this.f25491a = afqVar;
        this.f25494d = context;
        this.f25492b = cahVar;
        this.f25493c = cpqVar;
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a() {
        aoa aoaVar = this.e;
        return aoaVar != null && aoaVar.f23650d;
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a(zzvq zzvqVar, String str, cai caiVar, cal<? super anp> calVar) throws RemoteException {
        zzr.zzkv();
        if (zzj.zzbc(this.f25494d) && zzvqVar.zzcip == null) {
            zzd.zzex("Failed to load the ad because app ID is missing.");
            this.f25491a.b().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cam

                /* renamed from: a  reason: collision with root package name */
                private final can f25490a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25490a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f25490a.f25492b.f25488c.a(cqh.a(cqj.APP_ID_MISSING, null, null));
                }
            });
            return false;
        } else if (str == null) {
            zzd.zzex("Ad unit ID should not be null for NativeAdLoader.");
            this.f25491a.b().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cap

                /* renamed from: a  reason: collision with root package name */
                private final can f25498a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25498a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f25498a.f25492b.f25488c.a(cqh.a(cqj.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        } else {
            cqb.a(this.f25494d, zzvqVar.zzcid);
            int i = caiVar instanceof cak ? ((cak) caiVar).f25489a : 1;
            cpq cpqVar = this.f25493c;
            cpqVar.f26228a = zzvqVar;
            cpqVar.n = i;
            cpo a2 = cpqVar.a();
            bbd p = this.f25491a.p();
            aqz.a aVar = new aqz.a();
            aVar.f23803a = this.f25494d;
            aVar.f23804b = a2;
            bbd a3 = p.a(aVar.a()).a(new awm.a().a());
            cah cahVar = this.f25492b;
            bbe a4 = a3.a(new bba(cahVar.f25486a, cahVar.f25487b.h())).a(new alp(null)).a();
            this.f25491a.v().a(1);
            aoa aoaVar = new aoa(this.f25491a.d(), this.f25491a.c(), a4.a().b());
            this.e = aoaVar;
            dbh.a(aoaVar.f23649c, new aod(aoaVar, new cao(this, calVar, a4)), aoaVar.f23647a);
            return true;
        }
    }
}
