package com.hiya.stingray.p000ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C0098f;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/a.class */
public final class C0023a {

    /* renamed from: a */
    private final e1 f29a;

    public C0023a(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f29a = e1Var;
    }

    /* renamed from: a */
    public final void m1245a() {
        e1 e1Var = this.f29a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("restore");
        b.m976k("premium_tab_upsell");
        e1Var.c("user_action", b.m986a());
    }

    /* renamed from: b */
    public final void m1244b() {
        C0098f.m1009c(this.f29a, "premium_tab_upsell", null, 2, null);
    }

    /* renamed from: c */
    public final void m1243c() {
        e1 e1Var = this.f29a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("upgrade");
        b.m976k("premium_tab_upsell");
        e1Var.c("user_action", b.m986a());
    }
}
