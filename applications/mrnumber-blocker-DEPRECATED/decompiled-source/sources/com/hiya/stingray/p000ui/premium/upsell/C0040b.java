package com.hiya.stingray.p000ui.premium.upsell;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.k1;
import com.hiya.stingray.util.C0098f;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/b.class */
public class C0040b {

    /* renamed from: a */
    private c$b f57a = c$b.TAB;

    /* renamed from: b */
    private final e1 f58b;

    /* renamed from: c */
    private final k1 f59c;

    public C0040b(e1 e1Var, k1 k1Var) {
        k.g(e1Var, "analyticsManager");
        k.g(k1Var, "appsFlyerManager");
        this.f58b = e1Var;
        this.f59c = k1Var;
    }

    /* renamed from: a */
    public final void m1193a() {
        C0098f.m1011a(this.f58b, "cancel", m1192b());
    }

    /* renamed from: b */
    public final String m1192b() {
        int i = C0039a.f56a[this.f57a.ordinal()];
        return i != 1 ? i != 2 ? "premium_interstitial" : "paywall" : "premium_tab_upsell";
    }

    /* renamed from: c */
    public final void m1191c() {
        e1 e1Var = this.f58b;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("help");
        b.m976k(m1192b());
        e1Var.c("user_action", b.m986a());
    }

    /* renamed from: d */
    public final void m1190d() {
        e1 e1Var = this.f58b;
        AbstractC0101c.C0102a aVar = new AbstractC0101c.C0102a();
        aVar.m979h("required_permission_deny");
        aVar.m976k(m1192b());
        e1Var.c("user_prompt_action", aVar.m986a());
    }

    /* renamed from: e */
    public final void m1189e() {
        e1 e1Var = this.f58b;
        AbstractC0101c.C0102a aVar = new AbstractC0101c.C0102a();
        aVar.m979h("required_permission_allow");
        aVar.m976k(m1192b());
        e1Var.c("user_prompt_action", aVar.m986a());
    }

    /* renamed from: f */
    public final void m1188f() {
        e1 e1Var = this.f58b;
        AbstractC0101c.C0102a aVar = new AbstractC0101c.C0102a();
        aVar.m974m("permission_prompt");
        aVar.m979h("required_permission");
        e1Var.c("user_prompt_view", aVar.m986a());
    }

    /* renamed from: g */
    public final void m1187g() {
        e1 e1Var = this.f58b;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("restore_purchase");
        b.m976k(m1192b());
        e1Var.c("user_action", b.m986a());
    }

    /* renamed from: h */
    public final void m1186h(boolean z) {
        C0098f.m1010b(this.f58b, m1192b(), z ? "trial" : "subscribe");
        this.f58b.c("upsell_view", (AbstractC0101c) null);
        this.f59c.i(m1192b());
    }

    /* renamed from: i */
    public final void m1185i(c$b c_b) {
        k.g(c_b, "<set-?>");
        this.f57a = c_b;
    }

    /* renamed from: j */
    public final void m1184j() {
        C0098f.m1011a(this.f58b, "terms_of_use", m1192b());
    }
}
