package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgk.class */
public final class bgk extends AbstractBinderC12655jc implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, AbstractC12326df {

    /* renamed from: a */
    private View f43869a;

    /* renamed from: b */
    private emk f43870b;

    /* renamed from: c */
    private bcf f43871c;

    /* renamed from: d */
    private boolean f43872d = false;

    /* renamed from: e */
    private boolean f43873e = false;

    public bgk(bcf bcfVar, bcr bcrVar) {
        this.f43869a = bcrVar.m18159m();
        this.f43870b = bcrVar.m18178b();
        this.f43871c = bcfVar;
        if (bcrVar.m18150v() != null) {
            bcrVar.m18150v().mo13780a(this);
        }
    }

    /* renamed from: a */
    private static void m17880a(AbstractC12657je abstractC12657je, int i) {
        try {
            abstractC12657je.mo14584a(i);
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: e */
    private final void m17879e() {
        View view = this.f43869a;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(this.f43869a);
    }

    /* renamed from: f */
    private final void m17878f() {
        View view;
        bcf bcfVar = this.f43871c;
        if (bcfVar == null || (view = this.f43869a) == null) {
            return;
        }
        bcfVar.m18229a(view, Collections.emptyMap(), Collections.emptyMap(), bcf.m18219b(this.f43869a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12326df
    /* renamed from: a */
    public final void mo16817a() {
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bgn

            /* renamed from: a */
            private final bgk f43877a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43877a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    this.f43877a.mo14587c();
                } catch (RemoteException e) {
                    zzd.zze("#007 Could not call remote method.", e);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: a */
    public final void mo14590a(AbstractC12126b abstractC12126b) throws RemoteException {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        mo14589a(abstractC12126b, new bgm(this));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: a */
    public final void mo14589a(AbstractC12126b abstractC12126b, AbstractC12657je abstractC12657je) throws RemoteException {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        if (this.f43872d) {
            zzd.zzex("Instream ad can not be shown after destroy().");
            m17880a(abstractC12657je, 2);
            return;
        }
        View view = this.f43869a;
        if (view == null || this.f43870b == null) {
            String str = view == null ? "can not get video view." : "can not get video controller.";
            zzd.zzex(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            m17880a(abstractC12657je, 0);
        } else if (this.f43873e) {
            zzd.zzex("Instream ad should not be used again.");
            m17880a(abstractC12657je, 1);
        } else {
            this.f43873e = true;
            m17879e();
            ((ViewGroup) BinderC12129d.m18980a(abstractC12126b)).addView(this.f43869a, new ViewGroup.LayoutParams(-1, -1));
            zzr.zzls();
            C13111zx.m13890a(this.f43869a, (ViewTreeObserver.OnGlobalLayoutListener) this);
            zzr.zzls();
            C13111zx.m13889a(this.f43869a, (ViewTreeObserver.OnScrollChangedListener) this);
            m17878f();
            try {
                abstractC12657je.mo14585a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: b */
    public final emk mo14588b() throws RemoteException {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        if (this.f43872d) {
            zzd.zzex("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.f43870b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: c */
    public final void mo14587c() throws RemoteException {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        m17879e();
        bcf bcfVar = this.f43871c;
        if (bcfVar != null) {
            bcfVar.mo18235a();
        }
        this.f43871c = null;
        this.f43869a = null;
        this.f43870b = null;
        this.f43872d = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: d */
    public final AbstractC12389dq mo14586d() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        if (this.f43872d) {
            zzd.zzex("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        bcf bcfVar = this.f43871c;
        if (bcfVar != null && bcfVar.f43533q != null) {
            return this.f43871c.f43533q.m18206a();
        }
        return null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m17878f();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m17878f();
    }
}
