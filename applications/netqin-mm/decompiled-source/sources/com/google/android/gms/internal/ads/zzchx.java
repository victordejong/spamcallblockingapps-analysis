package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzchx;
import java.util.Collections;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC3621hj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchx.class */
public final class zzchx extends zzajd implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzadn {

    /* renamed from: a */
    public View f26039a;

    /* renamed from: b */
    public zzyo f26040b;

    /* renamed from: c */
    public zzcdx f26041c;

    /* renamed from: d */
    public boolean f26042d = false;

    /* renamed from: e */
    public boolean f26043e = false;

    public zzchx(zzcdx zzcdxVar, zzcei zzceiVar) {
        this.f26039a = zzceiVar.m14678s();
        this.f26040b = zzceiVar.m14683n();
        this.f26041c = zzcdxVar;
        if (zzceiVar.m14677t() != null) {
            zzceiVar.m14677t().mo15589a(this);
        }
    }

    /* renamed from: a */
    public static void m14256a(zzajf zzajfVar, int i) {
        try {
            zzajfVar.mo16729g(i);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    /* renamed from: B */
    public final void mo14261B(IObjectWrapper iObjectWrapper) throws RemoteException {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        mo14257a(iObjectWrapper, new BinderC3621hj(this));
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    /* renamed from: L1 */
    public final void mo14260L1() {
        zzayu.f24665h.post(new Runnable(this) { // from class: c.d.b.d.g.a.jj

            /* renamed from: a */
            public final zzchx f13794a;

            {
                this.f13794a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13794a.m14255a2();
            }
        });
    }

    /* renamed from: Q1 */
    public final void m14259Q1() {
        View view = this.f26039a;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f26039a);
            }
        }
    }

    /* renamed from: T1 */
    public final void m14258T1() {
        View view;
        zzcdx zzcdxVar = this.f26041c;
        if (zzcdxVar != null && (view = this.f26039a) != null) {
            zzcdxVar.m14758a(view, Collections.emptyMap(), Collections.emptyMap(), zzcdx.m14743d(this.f26039a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    /* renamed from: a */
    public final void mo14257a(IObjectWrapper iObjectWrapper, zzajf zzajfVar) throws RemoteException {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        if (this.f26042d) {
            zzbbq.m15856b("Instream ad can not be shown after destroy().");
            m14256a(zzajfVar, 2);
        } else if (this.f26039a == null || this.f26040b == null) {
            String str = this.f26039a == null ? "can not get video view." : "can not get video controller.";
            zzbbq.m15856b(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            m14256a(zzajfVar, 0);
        } else if (this.f26043e) {
            zzbbq.m15856b("Instream ad should not be used again.");
            m14256a(zzajfVar, 1);
        } else {
            this.f26043e = true;
            m14259Q1();
            ((ViewGroup) ObjectWrapper.m17021Q(iObjectWrapper)).addView(this.f26039a, new ViewGroup.LayoutParams(-1, -1));
            zzp.m17946z();
            zzbco.m15824a(this.f26039a, (ViewTreeObserver.OnGlobalLayoutListener) this);
            zzp.m17946z();
            zzbco.m15823a(this.f26039a, (ViewTreeObserver.OnScrollChangedListener) this);
            m14258T1();
            try {
                zzajfVar.mo16728r1();
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        }
    }

    /* renamed from: a2 */
    public final /* synthetic */ void m14255a2() {
        try {
            destroy();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    public final void destroy() throws RemoteException {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        m14259Q1();
        zzcdx zzcdxVar = this.f26041c;
        if (zzcdxVar != null) {
            zzcdxVar.mo14764a();
        }
        this.f26041c = null;
        this.f26039a = null;
        this.f26040b = null;
        this.f26042d = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    public final zzyo getVideoController() throws RemoteException {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        if (!this.f26042d) {
            return this.f26040b;
        }
        zzbbq.m15856b("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m14258T1();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m14258T1();
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    /* renamed from: u0 */
    public final zzadz mo14254u0() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        if (this.f26042d) {
            zzbbq.m15856b("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zzcdx zzcdxVar = this.f26041c;
        if (zzcdxVar == null || zzcdxVar.m14736m() == null) {
            return null;
        }
        return this.f26041c.m14736m().m14731a();
    }
}
