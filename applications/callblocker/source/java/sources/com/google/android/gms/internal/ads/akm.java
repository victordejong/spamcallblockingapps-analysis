package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akm.class */
public final class akm extends akk {

    /* renamed from: c */
    private final Context f9879c;

    /* renamed from: d */
    private final View f9880d;

    /* renamed from: e */
    private final act f9881e;

    /* renamed from: f */
    private final cgq f9882f;

    /* renamed from: g */
    private final ami f9883g;

    /* renamed from: h */
    private final azg f9884h;

    /* renamed from: i */
    private final auu f9885i;

    /* renamed from: j */
    private final dhn<bst> f9886j;

    /* renamed from: k */
    private final Executor f9887k;

    /* renamed from: l */
    private dyd f9888l;

    public akm(amk amkVar, Context context, cgq cgqVar, View view, act actVar, ami amiVar, azg azgVar, auu auuVar, dhn<bst> dhnVar, Executor executor) {
        super(amkVar);
        this.f9879c = context;
        this.f9880d = view;
        this.f9881e = actVar;
        this.f9882f = cgqVar;
        this.f9883g = amiVar;
        this.f9884h = azgVar;
        this.f9885i = auuVar;
        this.f9886j = dhnVar;
        this.f9887k = executor;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: a */
    public final View mo12962a() {
        return this.f9880d;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: a */
    public final void mo12961a(ViewGroup viewGroup, dyd dydVar) {
        if (viewGroup == null || this.f9881e == null) {
            return;
        }
        this.f9881e.mo13471a(aei.m13553a(dydVar));
        viewGroup.setMinimumHeight(dydVar.f16092c);
        viewGroup.setMinimumWidth(dydVar.f16095f);
        this.f9888l = dydVar;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: b */
    public final eba mo12959b() {
        eba ebaVar;
        try {
            ebaVar = this.f9883g.mo11694a();
        } catch (zzdhk e) {
            ebaVar = null;
        }
        return ebaVar;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: c */
    public final cgq mo12958c() {
        cgq m11310a;
        boolean z;
        if (this.f9888l != null) {
            m11310a = chk.m11311a(this.f9888l);
        } else {
            if (this.f9998b.f12974T) {
                Iterator<String> it = this.f9998b.f12979a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    String next = it.next();
                    if (next != null && next.contains("FirstParty")) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    m11310a = new cgq(this.f9880d.getWidth(), this.f9880d.getHeight(), false);
                }
            }
            m11310a = chk.m11310a(this.f9998b.f12993o, this.f9882f);
        }
        return m11310a;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: d */
    public final cgq mo12957d() {
        return this.f9882f;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: e */
    public final int mo12956e() {
        return this.f9997a.f13035b.f13025b.f13007c;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: f */
    public final void mo12955f() {
        this.f9885i.m12416a();
    }

    @Override // com.google.android.gms.internal.ads.amh
    /* renamed from: g_ */
    public final void mo12299g_() {
        this.f9887k.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.akl

            /* renamed from: a */
            private final akm f9878a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9878a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9878a.m13019h();
            }
        });
        super.mo12299g_();
    }

    /* renamed from: h */
    public final /* synthetic */ void m13019h() {
        if (this.f9884h.m12213d() != null) {
            try {
                this.f9884h.m12213d().mo9246a(this.f9886j.mo9430a(), BinderC2734b.m13794a(this.f9879c));
            } catch (RemoteException e) {
                C3556uu.m6748c("RemoteException when notifyAdLoad is called", e);
            }
        }
    }
}
