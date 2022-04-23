package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.akz;
import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqw;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cju.class */
public abstract class cju<AppOpenAd extends anp, AppOpenRequestComponent extends akz<AppOpenAd>, AppOpenRequestComponentBuilder extends aqw<AppOpenRequestComponent>> implements caj<AppOpenAd> {

    /* renamed from: a  reason: collision with root package name */
    final Executor f25955a;

    /* renamed from: b  reason: collision with root package name */
    protected final afq f25956b;

    /* renamed from: c  reason: collision with root package name */
    final ckb f25957c;

    /* renamed from: d  reason: collision with root package name */
    final cmh<AppOpenRequestComponent, AppOpenAd> f25958d;
    dbt<AppOpenAd> e;
    private final Context f;
    private final ViewGroup g;
    private final cpq h;

    /* JADX INFO: Access modifiers changed from: protected */
    public cju(Context context, Executor executor, afq afqVar, cmh<AppOpenRequestComponent, AppOpenAd> cmhVar, ckb ckbVar, cpq cpqVar) {
        this.f = context;
        this.f25955a = executor;
        this.f25956b = afqVar;
        this.f25958d = cmhVar;
        this.f25957c = ckbVar;
        this.h = cpqVar;
        this.g = new FrameLayout(context);
    }

    protected abstract AppOpenRequestComponentBuilder a(alp alpVar, aqz aqzVar, awm awmVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final AppOpenRequestComponentBuilder a(cmk cmkVar) {
        synchronized (this) {
            ckc ckcVar = (ckc) cmkVar;
            if (((Boolean) ekb.e().a(aq.eM)).booleanValue()) {
                alp alpVar = new alp(this.g);
                aqz.a aVar = new aqz.a();
                aVar.f23803a = this.f;
                aVar.f23804b = ckcVar.f25973a;
                return a(alpVar, aVar.a(), new awm.a().a());
            }
            ckb a2 = ckb.a(this.f25957c);
            awm.a aVar2 = new awm.a();
            aVar2.a((arp) a2, this.f25955a);
            aVar2.e.add(new ayi<>(a2, this.f25955a));
            aVar2.l.add(new ayi<>(a2, this.f25955a));
            aVar2.a((atu) a2, this.f25955a);
            aVar2.m = a2;
            alp alpVar2 = new alp(this.g);
            aqz.a aVar3 = new aqz.a();
            aVar3.f23803a = this.f;
            aVar3.f23804b = ckcVar.f25973a;
            return a(alpVar2, aVar3.a(), aVar2.a());
        }
    }

    public final void a(zzwc zzwcVar) {
        this.h.j = zzwcVar;
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a() {
        dbt<AppOpenAd> dbtVar = this.e;
        return dbtVar != null && !dbtVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.caj
    public final boolean a(zzvq zzvqVar, String str, cai caiVar, cal<? super AppOpenAd> calVar) throws RemoteException {
        synchronized (this) {
            o.b("loadAd must be called on the main UI thread.");
            if (str == null) {
                zzd.zzex("Ad unit ID should not be null for app open ad.");
                this.f25955a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cjy

                    /* renamed from: a  reason: collision with root package name */
                    private final cju f25961a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25961a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25961a.f25957c.a(cqh.a(cqj.INVALID_AD_UNIT_ID, null, null));
                    }
                });
                return false;
            } else if (this.e != null) {
                return false;
            } else {
                cqb.a(this.f, zzvqVar.zzcid);
                cpq cpqVar = this.h;
                cpqVar.f26231d = str;
                cpqVar.f26229b = zzvt.zzqm();
                cpqVar.f26228a = zzvqVar;
                cpo a2 = cpqVar.a();
                ckc ckcVar = new ckc(null);
                ckcVar.f25973a = a2;
                dbt<AppOpenAd> a3 = this.f25958d.a(new cmm(ckcVar), new cmj(this) { // from class: com.google.android.gms.internal.ads.cjw

                    /* renamed from: a  reason: collision with root package name */
                    private final cju f25959a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25959a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.cmj
                    public final aqw a(cmk cmkVar) {
                        return this.f25959a.a(cmkVar);
                    }
                });
                this.e = a3;
                dbh.a(a3, new cka(this, calVar, ckcVar), this.f25955a);
                return true;
            }
        }
    }
}
