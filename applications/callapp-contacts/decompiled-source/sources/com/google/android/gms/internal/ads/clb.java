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

    /* renamed from: a  reason: collision with root package name */
    final Executor f26008a;

    /* renamed from: b  reason: collision with root package name */
    final bza f26009b;

    /* renamed from: c  reason: collision with root package name */
    final bzz f26010c;

    /* renamed from: d  reason: collision with root package name */
    final ViewGroup f26011d;
    bn e;
    final atx f;
    final cpq g;
    dbt<alq> h;
    private final Context i;
    private final afq j;

    public clb(Context context, Executor executor, zzvt zzvtVar, afq afqVar, bza bzaVar, bzz bzzVar, cpq cpqVar) {
        this.i = context;
        this.f26008a = executor;
        this.j = afqVar;
        this.f26009b = bzaVar;
        this.f26010c = bzzVar;
        this.g = cpqVar;
        this.f = afqVar.f();
        this.f26011d = new FrameLayout(context);
        cpqVar.f26229b = zzvtVar;
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a() {
        dbt<alq> dbtVar = this.h;
        return dbtVar != null && !dbtVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a(zzvq zzvqVar, String str, cai caiVar, cal<? super alq> calVar) throws RemoteException {
        amn amnVar;
        if (str == null) {
            zzd.zzex("Ad unit ID should not be null for banner ad.");
            this.f26008a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cla

                /* renamed from: a  reason: collision with root package name */
                private final clb f26007a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26007a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26007a.f26009b.a(cqh.a(cqj.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        } else if (a()) {
            return false;
        } else {
            cpq cpqVar = this.g;
            cpqVar.f26231d = str;
            cpqVar.f26228a = zzvqVar;
            cpo a2 = cpqVar.a();
            if (!cq.f26247b.a().booleanValue() || !this.g.f26229b.zzciv) {
                if (((Boolean) ekb.e().a(aq.eL)).booleanValue()) {
                    amq i = this.j.i();
                    aqz.a aVar = new aqz.a();
                    aVar.f23803a = this.i;
                    aVar.f23804b = a2;
                    amnVar = i.a(aVar.a()).a(new awm.a().a((auf) this.f26009b, this.f26008a).a((AppEventListener) this.f26009b, this.f26008a).a()).a(new byb(this.e)).a(new bba(bcy.g, null)).a(new anl(this.f)).a(new alp(this.f26011d)).a();
                } else {
                    amq i2 = this.j.i();
                    aqz.a aVar2 = new aqz.a();
                    aVar2.f23803a = this.i;
                    aVar2.f23804b = a2;
                    amnVar = i2.a(aVar2.a()).a(new awm.a().a((auf) this.f26009b, this.f26008a).a((eir) this.f26009b, this.f26008a).a(this.f26010c, this.f26008a).a((ash) this.f26009b, this.f26008a).a((aro) this.f26009b, this.f26008a).a((atb) this.f26009b, this.f26008a).a((arp) this.f26009b, this.f26008a).a((AppEventListener) this.f26009b, this.f26008a).a((atu) this.f26009b, this.f26008a).a()).a(new byb(this.e)).a(new bba(bcy.g, null)).a(new anl(this.f)).a(new alp(this.f26011d)).a();
                }
                dbt<alq> b2 = amnVar.b().b();
                this.h = b2;
                dbh.a(b2, new cld(this, calVar, amnVar), this.f26008a);
                return true;
            }
            bza bzaVar = this.f26009b;
            if (bzaVar == null) {
                return false;
            }
            bzaVar.a(cqh.a(cqj.INVALID_AD_SIZE, null, null));
            return false;
        }
    }
}
