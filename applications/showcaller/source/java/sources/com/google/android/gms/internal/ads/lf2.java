package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lf2.class */
public final class lf2 implements f03<xw0> {

    /* renamed from: a */
    final /* synthetic */ p42 f26088a;

    /* renamed from: b */
    final /* synthetic */ vx0 f26089b;

    /* renamed from: c */
    final /* synthetic */ mf2 f26090c;

    public lf2(mf2 mf2Var, p42 p42Var, vx0 vx0Var) {
        this.f26090c = mf2Var;
        this.f26088a = p42Var;
        this.f26089b = vx0Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        o51 o51Var;
        Executor executor;
        zzbcz m16455h = this.f26089b.mo9842b().m16455h(th);
        synchronized (this.f26090c) {
            this.f26090c.f26590j = null;
            this.f26089b.mo9843a().mo9146O(m16455h);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25553O5)).booleanValue()) {
                executor = this.f26090c.f26582b;
                executor.execute(new Runnable(this, m16455h) { // from class: com.google.android.gms.internal.ads.kf2

                    /* renamed from: d */
                    private final lf2 f25206d;

                    /* renamed from: e */
                    private final zzbcz f25207e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25206d = this;
                        this.f25207e = m16455h;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        a42 a42Var;
                        lf2 lf2Var = this.f25206d;
                        zzbcz zzbczVar = this.f25207e;
                        a42Var = lf2Var.f26090c.f26584d;
                        a42Var.mo9146O(zzbczVar);
                    }
                });
            }
            o51Var = this.f26090c.f26588h;
            o51Var.m12729S0(60);
            nk2.m12892a(m16455h.f33653d, th, "BannerAdLoader.onFailure");
            this.f26088a.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(xw0 xw0Var) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        o51 o51Var;
        Executor executor;
        a42 a42Var;
        a42 a42Var2;
        e42 e42Var;
        xw0 xw0Var2 = xw0Var;
        synchronized (this.f26090c) {
            this.f26090c.f26590j = null;
            viewGroup = this.f26090c.f26586f;
            viewGroup.removeAllViews();
            if (xw0Var2.mo9037g() != null) {
                ViewParent parent = xw0Var2.mo9037g().getParent();
                if (parent instanceof ViewGroup) {
                    String str = "";
                    if (xw0Var2.m9018d() != null) {
                        str = xw0Var2.m9018d().mo12041a();
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(str);
                    sb.append(" already has a parent view. Removing its old parent.");
                    ei0.m15464f(sb.toString());
                    ((ViewGroup) parent).removeView(xw0Var2.mo9037g());
                }
            }
            AbstractC6381cw<Boolean> abstractC6381cw = C6679kw.f25553O5;
            if (((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue()) {
                i71 m9016f = xw0Var2.m9016f();
                a42Var2 = this.f26090c.f26584d;
                m9016f.m14474a(a42Var2);
                e42Var = this.f26090c.f26585e;
                m9016f.m14473b(e42Var);
            }
            viewGroup2 = this.f26090c.f26586f;
            viewGroup2.addView(xw0Var2.mo9037g());
            this.f26088a.mo8353b(xw0Var2);
            if (((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue()) {
                executor = this.f26090c.f26582b;
                a42Var = this.f26090c.f26584d;
                a42Var.getClass();
                executor.execute(jf2.m14131a(a42Var));
            }
            o51Var = this.f26090c.f26588h;
            o51Var.m12729S0(xw0Var2.mo9032l());
        }
    }
}
