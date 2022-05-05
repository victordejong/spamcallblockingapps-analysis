package p459j.p460a.p576w;

import p459j.p460a.p582w0.p590x4.C14282k;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.l */
/* loaded from: classes2-dex2jar.jar:j/a/w/l.class */
public final class C13755l {

    /* renamed from: a */
    public static C14282k f30866a;

    /* renamed from: b */
    public static final C13755l f30867b = new C13755l();

    /* renamed from: a */
    public static final void m3513a(int i) {
        C14282k kVar = f30866a;
        if (kVar != null) {
            kVar.m1920a("action", Integer.valueOf(i));
        }
    }

    /* renamed from: a */
    public static final void m3512a(String str, String str2) {
        C15149k.m377b(str, "from");
        C15149k.m377b(str2, "type");
        C14282k a = f30867b.m3514a();
        a.m1920a("type", str2);
        a.m1920a("source", str);
        f30866a = a;
    }

    /* renamed from: b */
    public static final void m3511b() {
        C14282k kVar = f30866a;
        if (kVar != null) {
            kVar.m1923a();
        }
        f30866a = null;
    }

    /* renamed from: a */
    public final C14282k m3514a() {
        C14231a aVar = new C14231a();
        aVar.m2100a("ver", 1);
        aVar.m2100a("type", "restore");
        aVar.m2100a("action", 0);
        aVar.m2100a("source", "call_log");
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_restore_subscription_notice")}, aVar);
    }
}
