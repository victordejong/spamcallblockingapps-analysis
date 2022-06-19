package p078c.p084c.p085a.p096b.p099o;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import p020b.p041h.p042e.C1522a;
import p078c.p084c.p085a.p096b.p105u.C1918b;
/* renamed from: c.c.a.b.o.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/o/a.class */
public class C1909a {
    /* renamed from: a */
    public static int m28718a(int i, int i2) {
        return C1522a.m29848d(i, (Color.alpha(i) * i2) / 255);
    }

    /* renamed from: b */
    public static int m28717b(Context context, int i, int i2) {
        TypedValue m28690a = C1918b.m28690a(context, i);
        return m28690a != null ? m28690a.data : i2;
    }

    /* renamed from: c */
    public static int m28716c(Context context, int i, String str) {
        return C1918b.m28688c(context, i, str);
    }

    /* renamed from: d */
    public static int m28715d(View view, int i) {
        return C1918b.m28687d(view, i);
    }

    /* renamed from: e */
    public static int m28714e(View view, int i, int i2) {
        return m28717b(view.getContext(), i, i2);
    }

    /* renamed from: f */
    public static int m28713f(int i, int i2) {
        return C1522a.m29850b(i2, i);
    }

    /* renamed from: g */
    public static int m28712g(int i, int i2, float f) {
        return m28713f(i, C1522a.m29848d(i2, Math.round(Color.alpha(i2) * f)));
    }

    /* renamed from: h */
    public static int m28711h(View view, int i, int i2, float f) {
        return m28712g(m28715d(view, i), m28715d(view, i2), f);
    }
}
