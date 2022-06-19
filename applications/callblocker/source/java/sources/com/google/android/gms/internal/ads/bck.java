package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bck.class */
public final class bck extends AbstractBinderC3176gs implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, AbstractC2832bi {

    /* renamed from: a */
    private View f10942a;

    /* renamed from: b */
    private eba f10943b;

    /* renamed from: c */
    private aym f10944c;

    /* renamed from: d */
    private boolean f10945d = false;

    /* renamed from: e */
    private boolean f10946e = false;

    public bck(aym aymVar, ayx ayxVar) {
        this.f10942a = ayxVar.m12244m();
        this.f10943b = ayxVar.m12263b();
        this.f10944c = aymVar;
        if (ayxVar.m12235v() != null) {
            ayxVar.m12235v().mo13468a(this);
        }
    }

    /* renamed from: a */
    private static void m12102a(AbstractC3178gu abstractC3178gu, int i) {
        try {
            abstractC3178gu.mo7807a(i);
        } catch (RemoteException e) {
            C3556uu.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: f */
    private final void m12100f() {
        if (this.f10942a == null) {
            return;
        }
        ViewParent parent = this.f10942a.getParent();
        if (!(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(this.f10942a);
    }

    /* renamed from: g */
    private final void m12099g() {
        if (this.f10944c == null || this.f10942a == null) {
            return;
        }
        this.f10944c.m12319a(this.f10942a, Collections.emptyMap(), Collections.emptyMap(), aym.m12308b(this.f10942a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2832bi
    /* renamed from: a */
    public final void mo11900a() {
        C3567ve.f17498a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bcj

            /* renamed from: a */
            private final bck f10941a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10941a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10941a.m12101e();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: a */
    public final void mo7813a(AbstractC2731a abstractC2731a) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        mo7812a(abstractC2731a, new bcm(this));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: a */
    public final void mo7812a(AbstractC2731a abstractC2731a, AbstractC3178gu abstractC3178gu) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        if (this.f10945d) {
            C3556uu.m6749c("Instream ad can not be shown after destroy().");
            m12102a(abstractC3178gu, 2);
        } else if (this.f10942a == null || this.f10943b == null) {
            String valueOf = String.valueOf(this.f10942a == null ? "can not get video view." : "can not get video controller.");
            C3556uu.m6749c(valueOf.length() != 0 ? "Instream internal error: ".concat(valueOf) : new String("Instream internal error: "));
            m12102a(abstractC3178gu, 0);
        } else if (this.f10946e) {
            C3556uu.m6749c("Instream ad should not be used again.");
            m12102a(abstractC3178gu, 1);
        } else {
            this.f10946e = true;
            m12100f();
            ((ViewGroup) BinderC2734b.m13795a(abstractC2731a)).addView(this.f10942a, new ViewGroup.LayoutParams(-1, -1));
            C2341q.m14721z();
            C3666yw.m6721a(this.f10942a, (ViewTreeObserver.OnGlobalLayoutListener) this);
            C2341q.m14721z();
            C3666yw.m6720a(this.f10942a, (ViewTreeObserver.OnScrollChangedListener) this);
            m12099g();
            try {
                abstractC3178gu.mo7808a();
            } catch (RemoteException e) {
                C3556uu.m6744e("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: b */
    public final eba mo7811b() {
        eba ebaVar;
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        if (this.f10945d) {
            C3556uu.m6749c("getVideoController: Instream ad should not be used after destroyed");
            ebaVar = null;
        } else {
            ebaVar = this.f10943b;
        }
        return ebaVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: c */
    public final void mo7810c() {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        m12100f();
        if (this.f10944c != null) {
            this.f10944c.mo12297k();
        }
        this.f10944c = null;
        this.f10942a = null;
        this.f10943b = null;
        this.f10945d = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: d */
    public final AbstractC2843bt mo7809d() {
        AbstractC2843bt abstractC2843bt;
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        if (this.f10945d) {
            C3556uu.m6749c("getVideoController: Instream ad should not be used after destroyed");
            abstractC2843bt = null;
        } else {
            abstractC2843bt = null;
            if (this.f10944c != null) {
                abstractC2843bt = null;
                if (this.f10944c.m12296m() != null) {
                    abstractC2843bt = this.f10944c.m12296m().m12291a();
                }
            }
        }
        return abstractC2843bt;
    }

    /* renamed from: e */
    public final /* synthetic */ void m12101e() {
        try {
            mo7810c();
        } catch (RemoteException e) {
            C3556uu.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m12099g();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m12099g();
    }
}
