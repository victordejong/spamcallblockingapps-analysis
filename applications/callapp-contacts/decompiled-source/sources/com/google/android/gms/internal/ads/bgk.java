package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgk.class */
public final class bgk extends jc implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, df {

    /* renamed from: a  reason: collision with root package name */
    private View f24389a;

    /* renamed from: b  reason: collision with root package name */
    private emk f24390b;

    /* renamed from: c  reason: collision with root package name */
    private bcf f24391c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f24392d = false;
    private boolean e = false;

    public bgk(bcf bcfVar, bcr bcrVar) {
        this.f24389a = bcrVar.m();
        this.f24390b = bcrVar.b();
        this.f24391c = bcfVar;
        if (bcrVar.v() != null) {
            bcrVar.v().a(this);
        }
    }

    private static void a(je jeVar, int i) {
        try {
            jeVar.a(i);
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    private final void e() {
        View view = this.f24389a;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f24389a);
            }
        }
    }

    private final void f() {
        View view;
        bcf bcfVar = this.f24391c;
        if (bcfVar != null && (view = this.f24389a) != null) {
            bcfVar.a(view, Collections.emptyMap(), Collections.emptyMap(), bcf.b(this.f24389a));
        }
    }

    @Override // com.google.android.gms.internal.ads.df
    public final void a() {
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bgn

            /* renamed from: a  reason: collision with root package name */
            private final bgk f24396a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24396a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    this.f24396a.c();
                } catch (RemoteException e) {
                    zzd.zze("#007 Could not call remote method.", e);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final void a(b bVar) throws RemoteException {
        o.b("#008 Must be called on the main UI thread.");
        a(bVar, new bgm(this));
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final void a(b bVar, je jeVar) throws RemoteException {
        o.b("#008 Must be called on the main UI thread.");
        if (this.f24392d) {
            zzd.zzex("Instream ad can not be shown after destroy().");
            a(jeVar, 2);
            return;
        }
        View view = this.f24389a;
        if (view == null || this.f24390b == null) {
            String str = view == null ? "can not get video view." : "can not get video controller.";
            zzd.zzex(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            a(jeVar, 0);
        } else if (this.e) {
            zzd.zzex("Instream ad should not be used again.");
            a(jeVar, 1);
        } else {
            this.e = true;
            e();
            ((ViewGroup) d.a(bVar)).addView(this.f24389a, new ViewGroup.LayoutParams(-1, -1));
            zzr.zzls();
            zx.a(this.f24389a, (ViewTreeObserver.OnGlobalLayoutListener) this);
            zzr.zzls();
            zx.a(this.f24389a, (ViewTreeObserver.OnScrollChangedListener) this);
            f();
            try {
                jeVar.a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final emk b() throws RemoteException {
        o.b("#008 Must be called on the main UI thread.");
        if (!this.f24392d) {
            return this.f24390b;
        }
        zzd.zzex("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final void c() throws RemoteException {
        o.b("#008 Must be called on the main UI thread.");
        e();
        bcf bcfVar = this.f24391c;
        if (bcfVar != null) {
            bcfVar.a();
        }
        this.f24391c = null;
        this.f24389a = null;
        this.f24390b = null;
        this.f24392d = true;
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final dq d() {
        o.b("#008 Must be called on the main UI thread.");
        if (this.f24392d) {
            zzd.zzex("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        bcf bcfVar = this.f24391c;
        if (bcfVar == null || bcfVar.q == null) {
            return null;
        }
        return this.f24391c.q.a();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        f();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        f();
    }
}
