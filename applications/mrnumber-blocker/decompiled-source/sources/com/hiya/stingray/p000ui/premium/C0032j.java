package com.hiya.stingray.p000ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C0098f;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/j.class */
public final class C0032j {

    /* renamed from: a */
    private final e1 f52a;

    public C0032j(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f52a = e1Var;
    }

    /* renamed from: a */
    public final void m1219a(boolean z) {
        e1 e1Var = this.f52a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("auto_block_scam");
        b.m973n(z ? "on" : "off");
        b.m976k("premium_tab");
        e1Var.c("apply_setting", b.m986a());
    }

    /* renamed from: b */
    public final void m1218b(boolean z) {
        e1 e1Var = this.f52a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("auto_block_nuisance");
        b.m973n(z ? "on" : "off");
        b.m976k("premium_tab");
        e1Var.c("apply_setting", b.m986a());
    }

    /* renamed from: c */
    public final void m1217c() {
        C0098f.m1009c(this.f52a, "premium_tab", null, 2, null);
    }
}
