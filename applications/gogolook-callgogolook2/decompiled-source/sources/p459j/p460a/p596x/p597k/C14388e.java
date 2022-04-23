package p459j.p460a.p596x.p597k;

import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.p590x4.C14282k;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14233b;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
/* renamed from: j.a.x.k.e */
/* loaded from: classes2-dex2jar.jar:j/a/x/k/e.class */
public final class C14388e {

    /* renamed from: a */
    public static C14282k f32220a;

    /* renamed from: b */
    public static final C14388e f32221b = new C14388e();

    /* renamed from: a */
    public static final void m1426a(int i) {
        C14282k kVar = f32220a;
        if (kVar != null) {
            kVar.m1920a("action", Integer.valueOf(i));
        }
    }

    /* renamed from: a */
    public static final void m1425a(String str) {
        C14282k a = f32221b.m1427a();
        if (str != null) {
            a.m1920a("source", str);
        }
        a.m1920a("register_status", Integer.valueOf(C14137r4.m2369i() ? 1 : 0));
        f32220a = a;
    }

    /* renamed from: b */
    public static final void m1424b() {
        C14282k kVar = f32220a;
        if (kVar != null) {
            kVar.m1923a();
        }
        f32220a = null;
    }

    /* renamed from: b */
    public static final void m1423b(int i) {
        C14282k kVar = f32220a;
        if (kVar != null) {
            kVar.m1920a("duration", Integer.valueOf(i));
        }
    }

    /* renamed from: c */
    public static final void m1422c(int i) {
        C14282k kVar = f32220a;
        if (kVar != null) {
            kVar.m1920a("promote_type", Integer.valueOf(i));
        }
    }

    /* renamed from: a */
    public final C14282k m1427a() {
        C14231a aVar = new C14231a();
        aVar.m2100a("ver", 1);
        aVar.m2100a("action", -1);
        aVar.m2100a("subscribe_notice", 0);
        aVar.m2100a("register_status", 0);
        aVar.m2100a("duration", 0);
        aVar.m2100a("source", "others");
        aVar.m2100a("promote_type", 0);
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_onboarding_premium_page_pv"), new C14233b("whoscall_onboarding_premium_page_pv")}, aVar);
    }
}
