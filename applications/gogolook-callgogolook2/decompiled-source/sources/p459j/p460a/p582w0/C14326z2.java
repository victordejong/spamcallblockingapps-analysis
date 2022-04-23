package p459j.p460a.p582w0;

import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.z2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/z2.class */
public final class C14326z2 {

    /* renamed from: a */
    public static final C14326z2 f32084a = new C14326z2();

    /* renamed from: a */
    public static final int m1569a(String str) {
        int i;
        C15149k.m377b(str, "periodStr");
        try {
            i = C14318y2.f32072e.m1597a(str).m1601b();
        } catch (Exception e) {
            C13973d4.m2952a(e);
            i = 0;
        }
        return i;
    }

    /* renamed from: b */
    public static final int m1568b(String str) {
        int i;
        C15149k.m377b(str, "periodStr");
        try {
            i = f32084a.m1570a(C14318y2.f32072e.m1597a(str));
        } catch (Exception e) {
            C13973d4.m2952a(e);
            i = 0;
        }
        return i;
    }

    /* renamed from: a */
    public final int m1570a(C14318y2 y2Var) {
        return (y2Var.m1600c() * 365) + (y2Var.m1601b() * 30) + y2Var.m1602a();
    }
}
