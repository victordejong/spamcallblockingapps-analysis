package com.hiya.stingray.p000ui.setting;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C0098f;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/b.class */
public class C0053b {

    /* renamed from: a */
    private final e1 f121a;

    public C0053b(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f121a = e1Var;
    }

    /* renamed from: a */
    public final void m1135a() {
        e1 e1Var = this.f121a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("cancel");
        b.m975l("verified_phone");
        e1Var.c("user_prompt_action", b.m986a());
    }

    /* renamed from: b */
    public final void m1134b() {
        e1 e1Var = this.f121a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("remove_phone");
        b.m974m("delete");
        e1Var.c("user_prompt_view", b.m986a());
    }

    /* renamed from: c */
    public final void m1133c() {
        e1 e1Var = this.f121a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("remove_phone");
        b.m975l("verified_phone");
        e1Var.c("user_prompt_action", b.m986a());
    }

    /* renamed from: d */
    public final void m1132d() {
        C0098f.m1009c(this.f121a, "my_phone_number", null, 2, null);
    }
}
