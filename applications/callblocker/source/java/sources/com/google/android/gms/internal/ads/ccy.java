package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.ads.apb;
import com.google.android.gms.internal.ads.atf;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccy.class */
public final class ccy implements btm<ake> {

    /* renamed from: a */
    private final Context f12741a;

    /* renamed from: b */
    private final Executor f12742b;

    /* renamed from: c */
    private final afh f12743c;

    /* renamed from: d */
    private final cdn f12744d;

    /* renamed from: e */
    private final cev<ajy, ake> f12745e;

    /* renamed from: f */
    private final ViewGroup f12746f;
    @GuardedBy("this")

    /* renamed from: g */
    private final chj f12747g;
    @GuardedBy("this")
    @Nullable

    /* renamed from: h */
    private crt<ake> f12748h;

    public ccy(Context context, Executor executor, afh afhVar, cev<ajy, ake> cevVar, cdn cdnVar, chj chjVar) {
        this.f12741a = context;
        this.f12742b = executor;
        this.f12743c = afhVar;
        this.f12745e = cevVar;
        this.f12744d = cdnVar;
        this.f12747g = chjVar;
        this.f12746f = new FrameLayout(context);
    }

    /* renamed from: b */
    public final ajx m11475a(ceu ceuVar) {
        ajx mo13045a;
        synchronized (this) {
            cdn m11452a = cdn.m11452a(this.f12744d);
            atf.C2797a c2797a = new atf.C2797a();
            c2797a.m12754a((apv) m11452a, this.f12742b);
            c2797a.m12750a((arl) m11452a, this.f12742b);
            c2797a.m12747a(m11452a);
            mo13045a = this.f12743c.mo13357i().mo13047a(new akf(this.f12746f)).mo13046a(new apb.C2790a().m12840a(this.f12741a).m12836a(((cdd) ceuVar).f12753a).m12841a()).mo13045a(c2797a.m12758a());
        }
        return mo13045a;
    }

    /* renamed from: a */
    public final void m11474a(dyk dykVar) {
        this.f12747g.m11340a(dykVar);
    }

    @Override // com.google.android.gms.internal.ads.btm
    /* renamed from: a */
    public final boolean mo11396a() {
        return this.f12748h != null && !this.f12748h.isDone();
    }

    @Override // com.google.android.gms.internal.ads.btm
    /* renamed from: a */
    public final boolean mo11391a(dya dyaVar, String str, btl btlVar, bto<? super ake> btoVar) {
        boolean z = false;
        synchronized (this) {
            C2662s.m13974b("loadAd must be called on the main UI thread.");
            if (str == null) {
                C3556uu.m6749c("Ad unit ID should not be null for app open ad.");
                this.f12742b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cdc

                    /* renamed from: a */
                    private final ccy f12752a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12752a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12752a.m11473b();
                    }
                });
            } else if (this.f12748h == null) {
                chp.m11299a(this.f12741a, dyaVar.f16072f);
                chh m11325e = this.f12747g.m11336a(str).m11341a(dyd.m8189c()).m11342a(dyaVar).m11325e();
                cdd cddVar = new cdd(null);
                cddVar.f12753a = m11325e;
                this.f12748h = this.f12745e.mo11429a(new cew(cddVar), new cex(this) { // from class: com.google.android.gms.internal.ads.cdb

                    /* renamed from: a */
                    private final ccy f12751a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12751a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.cex
                    /* renamed from: a */
                    public final aoy mo11387a(ceu ceuVar) {
                        return this.f12751a.m11475a(ceuVar);
                    }
                });
                crg.m10781a(this.f12748h, new cde(this, btoVar, cddVar), this.f12742b);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final /* synthetic */ void m11473b() {
        this.f12744d.mo11258a(1);
    }
}
