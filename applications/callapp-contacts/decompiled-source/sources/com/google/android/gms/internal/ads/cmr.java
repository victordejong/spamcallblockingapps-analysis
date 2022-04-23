package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmr.class */
public final class cmr implements caj<azi> {

    /* renamed from: a  reason: collision with root package name */
    final Executor f26083a;

    /* renamed from: b  reason: collision with root package name */
    final bza f26084b;

    /* renamed from: c  reason: collision with root package name */
    final cnc f26085c;

    /* renamed from: d  reason: collision with root package name */
    bn f26086d;
    dbt<azi> e;
    private final Context f;
    private final afq g;
    private final cpq h;

    public cmr(Context context, Executor executor, afq afqVar, bza bzaVar, cnc cncVar, cpq cpqVar) {
        this.f = context;
        this.f26083a = executor;
        this.g = afqVar;
        this.f26084b = bzaVar;
        this.h = cpqVar;
        this.f26085c = cncVar;
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a() {
        dbt<azi> dbtVar = this.e;
        return dbtVar != null && !dbtVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a(zzvq zzvqVar, String str, cai caiVar, cal<? super azi> calVar) {
        bai baiVar;
        if (str == null) {
            zzd.zzex("Ad unit ID should not be null for interstitial ad.");
            this.f26083a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cmu

                /* renamed from: a  reason: collision with root package name */
                private final cmr f26091a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26091a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26091a.f26084b.a(cqh.a(cqj.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        } else if (a()) {
            return false;
        } else {
            zzvt zzvtVar = caiVar instanceof cms ? ((cms) caiVar).f26087a : new zzvt();
            cpq cpqVar = this.h;
            cpqVar.f26231d = str;
            cpqVar.f26229b = zzvtVar;
            cpqVar.f26228a = zzvqVar;
            cpo a2 = cpqVar.a();
            if (((Boolean) ekb.e().a(aq.eN)).booleanValue()) {
                bah n = this.g.n();
                aqz.a aVar = new aqz.a();
                aVar.f23803a = this.f;
                aVar.f23804b = a2;
                baiVar = n.a(aVar.a()).a(new awm.a().a((auf) this.f26084b, this.f26083a).a((AppEventListener) this.f26084b, this.f26083a).a()).a(new byb(this.f26086d)).a();
            } else {
                awm.a aVar2 = new awm.a();
                cnc cncVar = this.f26085c;
                if (cncVar != null) {
                    aVar2.a((aro) cncVar, this.f26083a).a((atb) this.f26085c, this.f26083a).a((arp) this.f26085c, this.f26083a);
                }
                bah n2 = this.g.n();
                aqz.a aVar3 = new aqz.a();
                aVar3.f23803a = this.f;
                aVar3.f23804b = a2;
                baiVar = n2.a(aVar3.a()).a(aVar2.a((auf) this.f26084b, this.f26083a).a((aro) this.f26084b, this.f26083a).a((atb) this.f26084b, this.f26083a).a((arp) this.f26084b, this.f26083a).a((eir) this.f26084b, this.f26083a).a((AppEventListener) this.f26084b, this.f26083a).a((atu) this.f26084b, this.f26083a).a((asd) this.f26084b, this.f26083a).a()).a(new byb(this.f26086d)).a();
            }
            dbt<azi> b2 = baiVar.b().b();
            this.e = b2;
            dbh.a(b2, new cmt(this, calVar, baiVar), this.f26083a);
            return true;
        }
    }
}
