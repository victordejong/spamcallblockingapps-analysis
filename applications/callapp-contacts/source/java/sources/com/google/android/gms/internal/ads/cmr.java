package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmr.class */
public final class cmr implements caj<azi> {

    /* renamed from: a */
    final Executor f46091a;

    /* renamed from: b */
    final bza f46092b;

    /* renamed from: c */
    final cnc f46093c;

    /* renamed from: d */
    AbstractC12246bn f46094d;

    /* renamed from: e */
    dbt<azi> f46095e;

    /* renamed from: f */
    private final Context f46096f;

    /* renamed from: g */
    private final afq f46097g;

    /* renamed from: h */
    private final cpq f46098h;

    public cmr(Context context, Executor executor, afq afqVar, bza bzaVar, cnc cncVar, cpq cpqVar) {
        this.f46096f = context;
        this.f46091a = executor;
        this.f46097g = afqVar;
        this.f46092b = bzaVar;
        this.f46098h = cpqVar;
        this.f46093c = cncVar;
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17390a() {
        dbt<azi> dbtVar = this.f46095e;
        return dbtVar != null && !dbtVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17387a(zzvq zzvqVar, String str, cai caiVar, cal<? super azi> calVar) {
        bai baiVar;
        if (str == null) {
            zzd.zzex("Ad unit ID should not be null for interstitial ad.");
            this.f46091a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cmu

                /* renamed from: a */
                private final cmr f46103a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f46103a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f46103a.f46092b.mo17319a(cqh.m17323a(cqj.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        } else if (mo17390a()) {
            return false;
        } else {
            zzvt zzvtVar = caiVar instanceof cms ? ((cms) caiVar).f46099a : new zzvt();
            cpq cpqVar = this.f46098h;
            cpqVar.f46340d = str;
            cpqVar.f46338b = zzvtVar;
            cpqVar.f46337a = zzvqVar;
            cpo m17362a = cpqVar.m17362a();
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42863eN)).booleanValue()) {
                bah mo18710n = this.f46097g.mo18710n();
                aqz.C12188a c12188a = new aqz.C12188a();
                c12188a.f43076a = this.f46096f;
                c12188a.f43077b = m17362a;
                baiVar = mo18710n.mo18278a(c12188a.m18450a()).mo18277a(new awm.C12200a().m18362a((auf) this.f46092b, this.f46091a).m18369a((AppEventListener) this.f46092b, this.f46091a).m18370a()).mo18276a(new byb(this.f46094d)).mo18279a();
            } else {
                awm.C12200a c12200a = new awm.C12200a();
                cnc cncVar = this.f46093c;
                if (cncVar != null) {
                    c12200a.m18368a((aro) cncVar, this.f46091a).m18364a((atb) this.f46093c, this.f46091a).m18367a((arp) this.f46093c, this.f46091a);
                }
                bah mo18710n2 = this.f46097g.mo18710n();
                aqz.C12188a c12188a2 = new aqz.C12188a();
                c12188a2.f43076a = this.f46096f;
                c12188a2.f43077b = m17362a;
                baiVar = mo18710n2.mo18278a(c12188a2.m18450a()).mo18277a(c12200a.m18362a((auf) this.f46092b, this.f46091a).m18368a((aro) this.f46092b, this.f46091a).m18364a((atb) this.f46092b, this.f46091a).m18367a((arp) this.f46092b, this.f46091a).m18361a((eir) this.f46092b, this.f46091a).m18369a((AppEventListener) this.f46092b, this.f46091a).m18363a((atu) this.f46092b, this.f46091a).m18366a((asd) this.f46092b, this.f46091a).m18370a()).mo18276a(new byb(this.f46094d)).mo18279a();
            }
            dbt<azi> m18504b = baiVar.mo18273b().m18504b();
            this.f46095e = m18504b;
            dbh.m16901a(m18504b, new cmt(this, calVar, baiVar), this.f46091a);
            return true;
        }
    }
}
