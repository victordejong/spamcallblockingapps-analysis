package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/coa.class */
public final class coa implements caj<bhu> {

    /* renamed from: a  reason: collision with root package name */
    final Executor f26138a;

    /* renamed from: b  reason: collision with root package name */
    final cnc f26139b;

    /* renamed from: c  reason: collision with root package name */
    final cmh<bhx, bhu> f26140c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f26141d;
    private final afq e;
    private final cpj f;
    private final cpq g;
    private dbt<bhu> h;

    public coa(Context context, Executor executor, afq afqVar, cmh<bhx, bhu> cmhVar, cnc cncVar, cpq cpqVar, cpj cpjVar) {
        this.f26141d = context;
        this.f26138a = executor;
        this.e = afqVar;
        this.f26140c = cmhVar;
        this.f26139b = cncVar;
        this.g = cpqVar;
        this.f = cpjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final bhz a(cmk cmkVar) {
        coh cohVar = (coh) cmkVar;
        bhz q = this.e.q();
        aqz.a aVar = new aqz.a();
        aVar.f23803a = this.f26141d;
        aVar.f23804b = cohVar.f26150a;
        aVar.f23806d = cohVar.f26151b;
        aVar.e = this.f;
        return q.a(aVar.a()).a(new awm.a().a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.g.p.f26208a = i;
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a() {
        dbt<bhu> dbtVar = this.h;
        return dbtVar != null && !dbtVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a(zzvq zzvqVar, String str, cai caiVar, cal<? super bhu> calVar) throws RemoteException {
        zzavt zzavtVar = new zzavt(zzvqVar, str);
        if (zzavtVar.zzbvf == null) {
            zzd.zzex("Ad unit ID should not be null for rewarded video ad.");
            this.f26138a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.coe

                /* renamed from: a  reason: collision with root package name */
                private final coa f26145a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26145a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26145a.f26139b.a(cqh.a(cqj.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        }
        dbt<bhu> dbtVar = this.h;
        if (dbtVar != null && !dbtVar.isDone()) {
            return false;
        }
        cqb.a(this.f26141d, zzavtVar.zzdvn.zzcid);
        cpq cpqVar = this.g;
        cpqVar.f26231d = zzavtVar.zzbvf;
        cpqVar.f26229b = zzvt.zzql();
        cpqVar.f26228a = zzavtVar.zzdvn;
        cpo a2 = cpqVar.a();
        coh cohVar = new coh(null);
        cohVar.f26150a = a2;
        cohVar.f26151b = null;
        dbt<bhu> a3 = this.f26140c.a(new cmm(cohVar), new cmj(this) { // from class: com.google.android.gms.internal.ads.cod

            /* renamed from: a  reason: collision with root package name */
            private final coa f26144a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26144a = this;
            }

            @Override // com.google.android.gms.internal.ads.cmj
            public final aqw a(cmk cmkVar) {
                return this.f26144a.a(cmkVar);
            }
        });
        this.h = a3;
        dbh.a(a3, new cog(this, calVar, cohVar), this.f26138a);
        return true;
    }
}
