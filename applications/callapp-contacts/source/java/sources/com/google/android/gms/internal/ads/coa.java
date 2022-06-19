package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/coa.class */
public final class coa implements caj<bhu> {

    /* renamed from: a */
    final Executor f46164a;

    /* renamed from: b */
    final cnc f46165b;

    /* renamed from: c */
    final cmh<bhx, bhu> f46166c;

    /* renamed from: d */
    private final Context f46167d;

    /* renamed from: e */
    private final afq f46168e;

    /* renamed from: f */
    private final cpj f46169f;

    /* renamed from: g */
    private final cpq f46170g;

    /* renamed from: h */
    private dbt<bhu> f46171h;

    public coa(Context context, Executor executor, afq afqVar, cmh<bhx, bhu> cmhVar, cnc cncVar, cpq cpqVar, cpj cpjVar) {
        this.f46167d = context;
        this.f46164a = executor;
        this.f46168e = afqVar;
        this.f46166c = cmhVar;
        this.f46165b = cncVar;
        this.f46170g = cpqVar;
        this.f46169f = cpjVar;
    }

    /* renamed from: a */
    public final bhz m17388a(cmk cmkVar) {
        coh cohVar = (coh) cmkVar;
        bhz mo18704q = this.f46168e.mo18704q();
        aqz.C12188a c12188a = new aqz.C12188a();
        c12188a.f43076a = this.f46167d;
        c12188a.f43077b = cohVar.f46180a;
        c12188a.f43079d = cohVar.f46181b;
        c12188a.f43080e = this.f46169f;
        return mo18704q.mo17836a(c12188a.m18450a()).mo17835a(new awm.C12200a().m18370a());
    }

    /* renamed from: a */
    public final void m17389a(int i) {
        this.f46170g.f46352p.f46305a = i;
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17390a() {
        dbt<bhu> dbtVar = this.f46171h;
        return dbtVar != null && !dbtVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17387a(zzvq zzvqVar, String str, cai caiVar, cal<? super bhu> calVar) throws RemoteException {
        zzavt zzavtVar = new zzavt(zzvqVar, str);
        if (zzavtVar.zzbvf == null) {
            zzd.zzex("Ad unit ID should not be null for rewarded video ad.");
            this.f46164a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.coe

                /* renamed from: a */
                private final coa f46175a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f46175a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f46175a.f46165b.mo17319a(cqh.m17323a(cqj.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        }
        dbt<bhu> dbtVar = this.f46171h;
        if (dbtVar != null && !dbtVar.isDone()) {
            return false;
        }
        cqb.m17341a(this.f46167d, zzavtVar.zzdvn.zzcid);
        cpq cpqVar = this.f46170g;
        cpqVar.f46340d = zzavtVar.zzbvf;
        cpqVar.f46338b = zzvt.zzql();
        cpqVar.f46337a = zzavtVar.zzdvn;
        cpo m17362a = cpqVar.m17362a();
        coh cohVar = new coh(null);
        cohVar.f46180a = m17362a;
        cohVar.f46181b = null;
        dbt<bhu> mo17411a = this.f46166c.mo17411a(new cmm(cohVar), new cmj(this) { // from class: com.google.android.gms.internal.ads.cod

            /* renamed from: a */
            private final coa f46174a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46174a = this;
            }

            @Override // com.google.android.gms.internal.ads.cmj
            /* renamed from: a */
            public final aqw mo17386a(cmk cmkVar) {
                return this.f46174a.m17388a(cmkVar);
            }
        });
        this.f46171h = mo17411a;
        dbh.m16901a(mo17411a, new cog(this, calVar, cohVar), this.f46164a);
        return true;
    }
}
