package p000;

import android.content.Context;
/* renamed from: s71 */
/* loaded from: classes3-dex2jar.jar:s71.class */
public class s71 {

    /* renamed from: a */
    public static s71 f8076a;

    /* renamed from: b */
    public static t71 f8077b;

    public s71() {
        f8077b = new t71(fa1.m1840j());
    }

    /* renamed from: a */
    public static void m622a() {
        m621b(false);
    }

    /* renamed from: b */
    public static void m621b(boolean z) {
        t71 t71Var = f8077b;
        if (t71Var == null) {
            return;
        }
        t71Var.m553a(!z);
    }

    /* renamed from: c */
    public static void m620c(Context context) {
        t71 t71Var = f8077b;
        if (t71Var == null || context == null) {
            return;
        }
        t71Var.m550h(context);
    }

    /* renamed from: d */
    public static s71 m619d() {
        if (f8076a == null) {
            f8076a = new s71();
        }
        return f8076a;
    }

    /* renamed from: e */
    public static void m618e() {
        m619d();
    }
}
