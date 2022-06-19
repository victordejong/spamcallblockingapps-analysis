package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ri1.class */
public final class ri1 extends i40 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, AbstractC6903qy {

    /* renamed from: d */
    private View f28960d;

    /* renamed from: e */
    private AbstractC6640ju f28961e;

    /* renamed from: f */
    private me1 f28962f;

    /* renamed from: g */
    private boolean f28963g = false;

    /* renamed from: h */
    private boolean f28964h = false;

    public ri1(me1 me1Var, re1 re1Var) {
        this.f28960d = re1Var.m11506h();
        this.f28961e = re1Var.m11511e0();
        this.f28962f = me1Var;
        if (re1Var.m11495r() != null) {
            re1Var.m11495r().mo7941O0(this);
        }
    }

    /* renamed from: E6 */
    private static final void m11465E6(n40 n40Var, int i) {
        try {
            n40Var.mo11882A(i);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: f */
    private final void m11461f() {
        View view;
        me1 me1Var = this.f28962f;
        if (me1Var == null || (view = this.f28960d) == null) {
            return;
        }
        me1Var.m13246J(view, Collections.emptyMap(), Collections.emptyMap(), me1.m13235i(this.f28960d));
    }

    private final void zzg() {
        View view = this.f28960d;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(this.f28960d);
    }

    @Override // com.google.android.gms.internal.ads.k40
    /* renamed from: E */
    public final void mo11466E(AbstractC6253a abstractC6253a) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        mo11460g6(abstractC6253a, new qi1(this));
    }

    @Override // com.google.android.gms.internal.ads.k40
    /* renamed from: b */
    public final AbstractC6640ju mo11464b() {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        if (this.f28963g) {
            ei0.m15467c("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.f28961e;
    }

    @Override // com.google.android.gms.internal.ads.k40
    /* renamed from: c */
    public final void mo11463c() {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        zzg();
        me1 me1Var = this.f28962f;
        if (me1Var != null) {
            me1Var.mo9020b();
        }
        this.f28962f = null;
        this.f28960d = null;
        this.f28961e = null;
        this.f28963g = true;
    }

    @Override // com.google.android.gms.internal.ads.k40
    /* renamed from: d */
    public final AbstractC6421dz mo11462d() {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        if (this.f28963g) {
            ei0.m15467c("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        me1 me1Var = this.f28962f;
        if (me1Var != null && me1Var.m13228p() != null) {
            return this.f28962f.m13228p().m12690a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.k40
    /* renamed from: g6 */
    public final void mo11460g6(AbstractC6253a abstractC6253a, n40 n40Var) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        if (this.f28963g) {
            ei0.m15467c("Instream ad can not be shown after destroy().");
            m11465E6(n40Var, 2);
            return;
        }
        View view = this.f28960d;
        if (view == null || this.f28961e == null) {
            String str = view == null ? "can not get video view." : "can not get video controller.";
            ei0.m15467c(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            m11465E6(n40Var, 0);
        } else if (this.f28964h) {
            ei0.m15467c("Instream ad should not be used again.");
            m11465E6(n40Var, 1);
        } else {
            this.f28964h = true;
            zzg();
            ((ViewGroup) BinderC6255b.m16745J0(abstractC6253a)).addView(this.f28960d, new ViewGroup.LayoutParams(-1, -1));
            C5667s.m18164A();
            dj0.m15789a(this.f28960d, this);
            C5667s.m18164A();
            dj0.m15788b(this.f28960d, this);
            m11461f();
            try {
                n40Var.mo11881a();
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m11461f();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m11461f();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6903qy
    public final void zza() {
        C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.pi1

            /* renamed from: d */
            private final ri1 f28013d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28013d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    this.f28013d.mo11463c();
                } catch (RemoteException e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
        });
    }
}
