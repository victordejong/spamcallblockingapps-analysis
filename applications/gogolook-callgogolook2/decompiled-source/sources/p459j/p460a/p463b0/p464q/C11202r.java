package p459j.p460a.p463b0.p464q;

import p459j.p460a.p582w0.p590x4.C14282k;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
/* renamed from: j.a.b0.q.r */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/r.class */
public final class C11202r {

    /* renamed from: a */
    public static C14282k f25149a;

    /* renamed from: b */
    public static final C11202r f25150b = new C11202r();

    /* renamed from: a */
    public final void m10034a() {
        C14282k kVar = f25149a;
        if (kVar != null) {
            kVar.m1923a();
        }
        f25149a = null;
    }

    /* renamed from: a */
    public final void m10033a(int i) {
        C14282k kVar = f25149a;
        if (kVar != null) {
            kVar.m1920a("duration", Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public final C14282k m10032b() {
        C14231a aVar = new C14231a();
        aVar.m2100a("duration", 0);
        aVar.m2100a("last_visible_call_log_position", 0);
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_calllog_v2")}, aVar);
    }

    /* renamed from: b */
    public final void m10031b(int i) {
        Integer num;
        C14282k kVar = f25149a;
        if (kVar != null && (num = (Integer) kVar.m1921a("last_visible_call_log_position")) != null && i > num.intValue()) {
            kVar.m1920a("last_visible_call_log_position", Integer.valueOf(i));
        }
    }

    /* renamed from: c */
    public final void m10030c() {
        f25149a = m10032b();
    }
}
