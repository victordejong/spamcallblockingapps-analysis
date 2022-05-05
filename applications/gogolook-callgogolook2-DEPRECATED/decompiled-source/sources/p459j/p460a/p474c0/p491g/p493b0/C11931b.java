package p459j.p460a.p474c0.p491g.p493b0;

import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14282k;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.g.b0.b */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/b.class */
public final class C11931b {

    /* renamed from: a */
    public static final C11931b f26738a = new C11931b();

    /* renamed from: a */
    public static final void m7889a(String str, int i) {
        C15149k.m377b(str, "clickItem");
        C14282k a = f26738a.m7890a();
        a.m1920a("menu_name", str);
        a.m1920a("sms_type", Integer.valueOf(i));
        a.m1923a();
    }

    /* renamed from: a */
    public final C14282k m7890a() {
        C14231a aVar = new C14231a();
        aVar.m2100a("menu_name", C14247d.f31851f);
        aVar.m2100a("sms_type", -1);
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_cp_context_menu")}, aVar);
    }
}
