package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.d;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/als.class */
final class als extends alq {

    /* renamed from: a  reason: collision with root package name */
    final Context f23539a;

    /* renamed from: b  reason: collision with root package name */
    final bcy f23540b;

    /* renamed from: c  reason: collision with root package name */
    final dsb<byu> f23541c;

    /* renamed from: d  reason: collision with root package name */
    private final View f23542d;
    private final adt e;
    private final coy f;
    private final anq g;
    private final aym n;
    private final Executor o;
    private zzvt p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public als(ans ansVar, Context context, coy coyVar, View view, adt adtVar, anq anqVar, bcy bcyVar, aym aymVar, dsb<byu> dsbVar, Executor executor) {
        super(ansVar);
        this.f23539a = context;
        this.f23542d = view;
        this.e = adtVar;
        this.f = coyVar;
        this.g = anqVar;
        this.f23540b = bcyVar;
        this.n = aymVar;
        this.f23541c = dsbVar;
        this.o = executor;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final void a(ViewGroup viewGroup, zzvt zzvtVar) {
        adt adtVar;
        if (viewGroup != null && (adtVar = this.e) != null) {
            adtVar.a(afh.a(zzvtVar));
            viewGroup.setMinimumHeight(zzvtVar.heightPixels);
            viewGroup.setMinimumWidth(zzvtVar.widthPixels);
            this.p = zzvtVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final View b() {
        return this.f23542d;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final emk c() {
        try {
            return this.g.a();
        } catch (zzdpq e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final coy d() {
        boolean z;
        zzvt zzvtVar = this.p;
        if (zzvtVar != null) {
            return cps.a(zzvtVar);
        }
        if (this.i.W) {
            Iterator<String> it2 = this.i.f26183a.iterator();
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
                return new coy(this.f23542d.getWidth(), this.f23542d.getHeight(), false);
            }
        }
        return cps.a(this.i.q);
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final coy e() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final int f() {
        if (((Boolean) ekb.e().a(aq.ey)).booleanValue() && this.i.ab) {
            if (!((Boolean) ekb.e().a(aq.ez)).booleanValue()) {
                return 0;
            }
        }
        return this.h.f26222b.f26217b.f26198c;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final void g() {
        this.n.a();
    }

    @Override // com.google.android.gms.internal.ads.anp
    public final void h() {
        this.o.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.alv

            /* renamed from: a  reason: collision with root package name */
            private final als f23547a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23547a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                als alsVar = this.f23547a;
                if (alsVar.f23540b.f24196d != null) {
                    try {
                        alsVar.f23540b.f24196d.a(alsVar.f23541c.a(), d.a(alsVar.f23539a));
                    } catch (RemoteException e) {
                        zzd.zzc("RemoteException when notifyAdLoad is called", e);
                    }
                }
            }
        });
        super.h();
    }
}
