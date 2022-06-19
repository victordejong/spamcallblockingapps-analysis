package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/als.class */
public final class als extends alq {

    /* renamed from: a */
    final Context f42369a;

    /* renamed from: b */
    final bcy f42370b;

    /* renamed from: c */
    final dsb<byu> f42371c;

    /* renamed from: d */
    private final View f42372d;

    /* renamed from: e */
    private final adt f42373e;

    /* renamed from: f */
    private final coy f42374f;

    /* renamed from: g */
    private final anq f42375g;

    /* renamed from: n */
    private final aym f42376n;

    /* renamed from: o */
    private final Executor f42377o;

    /* renamed from: p */
    private zzvt f42378p;

    public als(ans ansVar, Context context, coy coyVar, View view, adt adtVar, anq anqVar, bcy bcyVar, aym aymVar, dsb<byu> dsbVar, Executor executor) {
        super(ansVar);
        this.f42369a = context;
        this.f42372d = view;
        this.f42373e = adtVar;
        this.f42374f = coyVar;
        this.f42375g = anqVar;
        this.f42370b = bcyVar;
        this.f42376n = aymVar;
        this.f42371c = dsbVar;
        this.f42377o = executor;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: a */
    public final void mo18546a(ViewGroup viewGroup, zzvt zzvtVar) {
        adt adtVar;
        if (viewGroup == null || (adtVar = this.f42373e) == null) {
            return;
        }
        adtVar.mo13782a(afh.m18775a(zzvtVar));
        viewGroup.setMinimumHeight(zzvtVar.heightPixels);
        viewGroup.setMinimumWidth(zzvtVar.widthPixels);
        this.f42378p = zzvtVar;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: b */
    public final View mo18545b() {
        return this.f42372d;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: c */
    public final emk mo18544c() {
        try {
            return this.f42375g.mo17577a();
        } catch (zzdpq e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: d */
    public final coy mo18543d() {
        boolean z;
        zzvt zzvtVar = this.f42378p;
        if (zzvtVar != null) {
            return cps.m17357a(zzvtVar);
        }
        if (this.f42487i.f46243W) {
            Iterator<String> it2 = this.f42487i.f46247a.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                String next = it2.next();
                if (next != null && next.contains("FirstParty")) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return new coy(this.f42372d.getWidth(), this.f42372d.getHeight(), false);
            }
        }
        return cps.m17356a(this.f42487i.f46270q);
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: e */
    public final coy mo18542e() {
        return this.f42374f;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: f */
    public final int mo18541f() {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42900ey)).booleanValue() && this.f42487i.f46249ab) {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42901ez)).booleanValue()) {
                return 0;
            }
        }
        return this.f42486h.f46319b.f46314b.f46291c;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: g */
    public final void mo18540g() {
        this.f42376n.m18319a();
    }

    @Override // com.google.android.gms.internal.ads.anp
    /* renamed from: h */
    public final void mo18208h() {
        this.f42377o.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.alv

            /* renamed from: a */
            private final als f42389a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42389a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                als alsVar = this.f42389a;
                if (alsVar.f42370b.f43611d != null) {
                    try {
                        alsVar.f42370b.f43611d.mo14640a(alsVar.f42371c.mo14005a(), BinderC12129d.m18979a(alsVar.f42369a));
                    } catch (RemoteException e) {
                        zzd.zzc("RemoteException when notifyAdLoad is called", e);
                    }
                }
            }
        });
        super.mo18208h();
    }
}
