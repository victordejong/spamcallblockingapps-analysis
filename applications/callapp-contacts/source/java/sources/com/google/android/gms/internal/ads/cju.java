package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.akz;
import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqw;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cju.class */
public abstract class cju<AppOpenAd extends anp, AppOpenRequestComponent extends akz<AppOpenAd>, AppOpenRequestComponentBuilder extends aqw<AppOpenRequestComponent>> implements caj<AppOpenAd> {

    /* renamed from: a */
    final Executor f45933a;

    /* renamed from: b */
    protected final afq f45934b;

    /* renamed from: c */
    final ckb f45935c;

    /* renamed from: d */
    final cmh<AppOpenRequestComponent, AppOpenAd> f45936d;

    /* renamed from: e */
    dbt<AppOpenAd> f45937e;

    /* renamed from: f */
    private final Context f45938f;

    /* renamed from: g */
    private final ViewGroup f45939g;

    /* renamed from: h */
    private final cpq f45940h;

    public cju(Context context, Executor executor, afq afqVar, cmh<AppOpenRequestComponent, AppOpenAd> cmhVar, ckb ckbVar, cpq cpqVar) {
        this.f45938f = context;
        this.f45933a = executor;
        this.f45934b = afqVar;
        this.f45936d = cmhVar;
        this.f45935c = ckbVar;
        this.f45940h = cpqVar;
        this.f45939g = new FrameLayout(context);
    }

    /* renamed from: a */
    protected abstract AppOpenRequestComponentBuilder mo17428a(alp alpVar, aqz aqzVar, awm awmVar);

    /* renamed from: a */
    public final AppOpenRequestComponentBuilder m17438a(cmk cmkVar) {
        synchronized (this) {
            ckc ckcVar = (ckc) cmkVar;
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42862eM)).booleanValue()) {
                alp alpVar = new alp(this.f45939g);
                aqz.C12188a c12188a = new aqz.C12188a();
                c12188a.f43076a = this.f45938f;
                c12188a.f43077b = ckcVar.f45959a;
                return mo17428a(alpVar, c12188a.m18450a(), new awm.C12200a().m18370a());
            }
            ckb m17432a = ckb.m17432a(this.f45935c);
            awm.C12200a c12200a = new awm.C12200a();
            c12200a.m18367a((arp) m17432a, this.f45933a);
            c12200a.f43257e.add(new ayi<>(m17432a, this.f45933a));
            c12200a.f43264l.add(new ayi<>(m17432a, this.f45933a));
            c12200a.m18363a((atu) m17432a, this.f45933a);
            c12200a.f43265m = m17432a;
            alp alpVar2 = new alp(this.f45939g);
            aqz.C12188a c12188a2 = new aqz.C12188a();
            c12188a2.f43076a = this.f45938f;
            c12188a2.f43077b = ckcVar.f45959a;
            return mo17428a(alpVar2, c12188a2.m18450a(), c12200a.m18370a());
        }
    }

    /* renamed from: a */
    public final void m17437a(zzwc zzwcVar) {
        this.f45940h.f46346j = zzwcVar;
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17390a() {
        dbt<AppOpenAd> dbtVar = this.f45937e;
        return dbtVar != null && !dbtVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.caj
    /* renamed from: a */
    public final boolean mo17387a(zzvq zzvqVar, String str, cai caiVar, cal<? super AppOpenAd> calVar) throws RemoteException {
        synchronized (this) {
            C12045o.m19155b("loadAd must be called on the main UI thread.");
            if (str == null) {
                zzd.zzex("Ad unit ID should not be null for app open ad.");
                this.f45933a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cjy

                    /* renamed from: a */
                    private final cju f45943a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45943a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f45943a.f45935c.mo17319a(cqh.m17323a(cqj.INVALID_AD_UNIT_ID, null, null));
                    }
                });
                return false;
            } else if (this.f45937e != null) {
                return false;
            } else {
                cqb.m17341a(this.f45938f, zzvqVar.zzcid);
                cpq cpqVar = this.f45940h;
                cpqVar.f46340d = str;
                cpqVar.f46338b = zzvt.zzqm();
                cpqVar.f46337a = zzvqVar;
                cpo m17362a = cpqVar.m17362a();
                ckc ckcVar = new ckc(null);
                ckcVar.f45959a = m17362a;
                dbt<AppOpenAd> mo17411a = this.f45936d.mo17411a(new cmm(ckcVar), new cmj(this) { // from class: com.google.android.gms.internal.ads.cjw

                    /* renamed from: a */
                    private final cju f45941a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45941a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.cmj
                    /* renamed from: a */
                    public final aqw mo17386a(cmk cmkVar) {
                        return this.f45941a.m17438a(cmkVar);
                    }
                });
                this.f45937e = mo17411a;
                dbh.m16901a(mo17411a, new cka(this, calVar, ckcVar), this.f45933a);
                return true;
            }
        }
    }
}
