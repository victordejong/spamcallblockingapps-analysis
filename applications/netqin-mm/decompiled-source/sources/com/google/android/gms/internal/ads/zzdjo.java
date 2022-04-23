package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzdjo;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p170b.p224d.p252g.p253a.C3893ov;
import p131c.p161d.p170b.p224d.p252g.p253a.C3930pv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjo.class */
public final class zzdjo extends zzxf implements zzw, zzbwb, zzsc {

    /* renamed from: a */
    public final zzbix f27413a;

    /* renamed from: b */
    public final Context f27414b;

    /* renamed from: c */
    public final ViewGroup f27415c;

    /* renamed from: d */
    public AtomicBoolean f27416d = new AtomicBoolean();

    /* renamed from: e */
    public final String f27417e;

    /* renamed from: f */
    public final zzdjm f27418f;

    /* renamed from: g */
    public final zzdkc f27419g;

    /* renamed from: h */
    public final zzbbx f27420h;

    /* renamed from: i */
    public long f27421i;

    /* renamed from: j */
    public zzbnh f27422j;

    /* renamed from: k */
    public zzbnv f27423k;

    public zzdjo(zzbix zzbixVar, Context context, String str, zzdjm zzdjmVar, zzdkc zzdkcVar, zzbbx zzbbxVar) {
        this.f27415c = new FrameLayout(context);
        this.f27413a = zzbixVar;
        this.f27414b = context;
        this.f27417e = str;
        this.f27418f = zzdjmVar;
        this.f27419g = zzdkcVar;
        zzdkcVar.m13544a(this);
        this.f27420h = zzbbxVar;
    }

    /* renamed from: c */
    public static RelativeLayout.LayoutParams m13565c(zzbnv zzbnvVar) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(zzbnvVar.m15263g() ? 11 : 9);
        return layoutParams;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: D1 */
    public final zzxk mo10970D1() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: G */
    public final Bundle mo10969G() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: Q0 */
    public final IObjectWrapper mo10968Q0() {
        Preconditions.m17286a("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.m17020a(this.f27415c);
    }

    /* renamed from: Q1 */
    public final void m13561d2() {
        if (this.f27416d.compareAndSet(false, true)) {
            zzbnv zzbnvVar = this.f27423k;
            if (!(zzbnvVar == null || zzbnvVar.m15256n() == null)) {
                this.f27419g.m13540a(this.f27423k.m15256n());
            }
            this.f27419g.m13546a();
            this.f27415c.removeAllViews();
            zzbnh zzbnhVar = this.f27422j;
            if (zzbnhVar != null) {
                zzp.m17966f().m11507b(zzbnhVar);
            }
            zzbnv zzbnvVar2 = this.f27423k;
            if (zzbnvVar2 != null) {
                zzbnvVar2.m15266a(zzp.m17962j().mo17092a() - this.f27421i);
            }
            destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    /* renamed from: T0 */
    public final void mo13535T0() {
        if (this.f27423k != null) {
            this.f27421i = zzp.m17962j().mo17092a();
            int h = this.f27423k.m15262h();
            if (h > 0) {
                zzbnh zzbnhVar = new zzbnh(this.f27413a.mo15393b(), zzp.m17962j());
                this.f27422j = zzbnhVar;
                zzbnhVar.m15286a(h, new Runnable(this) { // from class: c.d.b.d.g.a.mv

                    /* renamed from: a */
                    public final zzdjo f14203a;

                    {
                        this.f14203a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f14203a.m13569a2();
                    }
                });
            }
        }
    }

    /* renamed from: T1 */
    public final zzvn m13574T1() {
        return zzdoq.m13403a(this.f27414b, Collections.singletonList(this.f27423k.m15259k()));
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: V1 */
    public final void mo10967V1() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: X0 */
    public final zzwt mo10966X0() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzw
    /* renamed from: Y */
    public final void mo13573Y() {
        m13561d2();
    }

    /* renamed from: a */
    public final zzo m13572a(zzbnv zzbnvVar) {
        boolean g = zzbnvVar.m15263g();
        int intValue = ((Integer) zzwm.m11166e().m16921a(zzabb.f23859n2)).intValue();
        zzr zzrVar = new zzr();
        zzrVar.f22783d = 50;
        int i = 0;
        zzrVar.f22780a = g ? intValue : 0;
        if (!g) {
            i = intValue;
        }
        zzrVar.f22781b = i;
        zzrVar.f22782c = intValue;
        return new zzo(this.f27414b, zzrVar, this);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final String mo10965a() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10964a(zzaak zzaakVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10963a(zzaby zzabyVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10962a(zzari zzariVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10961a(zzaro zzaroVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10960a(zzaug zzaugVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10959a(zzsh zzshVar) {
        this.f27419g.m13541a(zzshVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10958a(zzvn zzvnVar) {
        synchronized (this) {
            Preconditions.m17286a("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10957a(zzvs zzvsVar) {
        this.f27418f.m13553a(zzvsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10956a(zzwo zzwoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10955a(zzxj zzxjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10954a(zzxk zzxkVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10953a(zzxq zzxqVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10952a(zzyi zzyiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10951a(zzyu zzyuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10949a(boolean z) {
    }

    /* renamed from: a2 */
    public final /* synthetic */ void m13569a2() {
        this.f27413a.mo15396a().execute(new Runnable(this) { // from class: c.d.b.d.g.a.nv

            /* renamed from: a */
            public final zzdjo f14273a;

            {
                this.f14273a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14273a.m13561d2();
            }
        });
    }

    /* renamed from: b */
    public final void m13568b(zzbnv zzbnvVar) {
        zzbnvVar.m15265a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final void mo10946b(zzwt zzwtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10948b() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10947b(zzvg zzvgVar) throws RemoteException {
        synchronized (this) {
            Preconditions.m17286a("loadAd must be called on the main UI thread.");
            zzp.m17969c();
            if (zzayu.m16078p(this.f27414b) && zzvgVar.f29019s == null) {
                zzbbq.m15856b("Failed to load the ad because app ID is missing.");
                this.f27419g.mo13335a(zzdpe.m13339a(zzdpg.APP_ID_MISSING, null, null));
                return false;
            } else if (mo10939n()) {
                return false;
            } else {
                this.f27416d = new AtomicBoolean();
                return this.f27418f.mo13489a(zzvgVar, this.f27417e, new C3930pv(this), new C3893ov(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: d */
    public final void mo10945d(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void destroy() {
        synchronized (this) {
            Preconditions.m17286a("destroy must be called on the main UI thread.");
            if (this.f27423k != null) {
                this.f27423k.mo14764a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f */
    public final void mo10944f(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f2 */
    public final zzvn mo10943f2() {
        synchronized (this) {
            Preconditions.m17286a("getAdSize must be called on the main UI thread.");
            if (this.f27423k == null) {
                return null;
            }
            return zzdoq.m13403a(this.f27414b, Collections.singletonList(this.f27423k.m15259k()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final String getAdUnitId() {
        String str;
        synchronized (this) {
            str = this.f27417e;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final zzyo getVideoController() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: i */
    public final void mo10942i(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: k0 */
    public final String mo10941k0() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: l */
    public final zzyn mo10940l() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: n */
    public final boolean mo10939n() {
        boolean n;
        synchronized (this) {
            n = this.f27418f.mo13485n();
        }
        return n;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void pause() {
        synchronized (this) {
            Preconditions.m17286a("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void resume() {
        synchronized (this) {
            Preconditions.m17286a("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: x1 */
    public final void mo10938x1() {
    }

    @Override // com.google.android.gms.internal.ads.zzsc
    /* renamed from: z0 */
    public final void mo11478z0() {
        m13561d2();
    }
}
