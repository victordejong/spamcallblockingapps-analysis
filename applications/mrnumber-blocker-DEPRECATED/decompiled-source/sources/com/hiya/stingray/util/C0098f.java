package com.hiya.stingray.util;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/f.class */
public final class C0098f {
    /* renamed from: a */
    public static final void m1011a(e1 e1Var, String str, String str2) {
        k.g(e1Var, "$this$reportUserActionEvent");
        k.g(str, "nameValue");
        k.g(str2, "screen");
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h(str);
        b.m976k(str2);
        e1Var.c("user_action", b.m986a());
    }

    /* renamed from: b */
    public static final void m1010b(e1 e1Var, String str, String str2) {
        k.g(e1Var, "$this$reportViewScreen");
        k.g(str, "name");
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h(str);
        if (str2 != null) {
            b.m974m(str2);
        }
        e1Var.c("view_screen", b.m986a());
    }

    /* renamed from: c */
    public static /* synthetic */ void m1009c(e1 e1Var, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        m1010b(e1Var, str, str2);
    }
}
