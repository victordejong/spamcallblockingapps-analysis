package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clb.class */
public final class clb implements caj<alq> {

    /* renamed from: a */
    final Executor f46002a;

    /* renamed from: b */
    final bza f46003b;

    /* renamed from: c */
    final bzz f46004c;

    /* renamed from: d */
    final ViewGroup f46005d;

    /* renamed from: e */
    AbstractC12246bn f46006e;

    /* renamed from: f */
    final atx f46007f;

    /* renamed from: g */
    final cpq f46008g;

    /* renamed from: h */
    dbt<alq> f46009h;

    /* renamed from: i */
    private final Context f46010i;

    /* renamed from: j */
    private final afq f46011j;

    public clb(Context context, Executor executor, zzvt zzvtVar, afq afqVar, bza bzaVar, bzz bzzVar, cpq cpqVar) {
        this.f46010i = context;
        this.f46002a = executor;
        this.f46011j = afqVar;
        this.f46003b = bzaVar;
        this.f46004c = bzzVar;
        this.f46008g = cpqVar;
        this.f46007f = afqVar.mo18726f();
        this.f46005d = new FrameLayout(context);
        cpqVar.f46338b = zzvtVar;
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17390a() {
        dbt<alq> dbtVar = this.f46009h;
        return dbtVar != null && !dbtVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17387a(zzvq zzvqVar, String str, cai caiVar, cal<? super alq> calVar) throws RemoteException {
        amn amnVar;
        if (str == null) {
            zzd.zzex("Ad unit ID should not be null for banner ad.");
            this.f46002a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cla

                /* renamed from: a */
                private final clb f46001a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f46001a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f46001a.f46003b.mo17319a(cqh.m17323a(cqj.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        } else if (mo17390a()) {
            return false;
        } else {
            cpq cpqVar = this.f46008g;
            cpqVar.f46340d = str;
            cpqVar.f46337a = zzvqVar;
            cpo m17362a = cpqVar.m17362a();
            if (C12282cq.f46369b.mo17481a().booleanValue() && this.f46008g.f46338b.zzciv) {
                bza bzaVar = this.f46003b;
                if (bzaVar == null) {
                    return false;
                }
                bzaVar.mo17319a(cqh.m17323a(cqj.INVALID_AD_SIZE, null, null));
                return false;
            }
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42861eL)).booleanValue()) {
                amq mo18720i = this.f46011j.mo18720i();
                aqz.C12188a c12188a = new aqz.C12188a();
                c12188a.f43076a = this.f46010i;
                c12188a.f43077b = m17362a;
                amnVar = mo18720i.mo18553a(c12188a.m18450a()).mo18552a(new awm.C12200a().m18362a((auf) this.f46003b, this.f46002a).m18369a((AppEventListener) this.f46003b, this.f46002a).m18370a()).mo18550a(new byb(this.f46006e)).mo18551a(new bba(bcy.f43607g, null)).mo18554a(new anl(this.f46007f)).mo18555a(new alp(this.f46005d)).mo18556a();
            } else {
                amq mo18720i2 = this.f46011j.mo18720i();
                aqz.C12188a c12188a2 = new aqz.C12188a();
                c12188a2.f43076a = this.f46010i;
                c12188a2.f43077b = m17362a;
                amnVar = mo18720i2.mo18553a(c12188a2.m18450a()).mo18552a(new awm.C12200a().m18362a((auf) this.f46003b, this.f46002a).m18361a((eir) this.f46003b, this.f46002a).m18361a(this.f46004c, this.f46002a).m18365a((ash) this.f46003b, this.f46002a).m18368a((aro) this.f46003b, this.f46002a).m18364a((atb) this.f46003b, this.f46002a).m18367a((arp) this.f46003b, this.f46002a).m18369a((AppEventListener) this.f46003b, this.f46002a).m18363a((atu) this.f46003b, this.f46002a).m18370a()).mo18550a(new byb(this.f46006e)).mo18551a(new bba(bcy.f43607g, null)).mo18554a(new anl(this.f46007f)).mo18555a(new alp(this.f46005d)).mo18556a();
            }
            dbt<alq> m18504b = amnVar.mo18558b().m18504b();
            this.f46009h = m18504b;
            dbh.m16901a(m18504b, new cld(this, calVar, amnVar), this.f46002a);
            return true;
        }
    }
}
