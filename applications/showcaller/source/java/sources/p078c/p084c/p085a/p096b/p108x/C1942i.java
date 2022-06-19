package p078c.p084c.p085a.p096b.p108x;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.C8209q;
/* renamed from: c.c.a.b.x.i */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/x/i.class */
public class C1942i {
    /* renamed from: a */
    public static C1934d m28584a(int i) {
        return i != 0 ? i != 1 ? m28583b() : new C1935e() : new C1945l();
    }

    /* renamed from: b */
    public static C1934d m28583b() {
        return new C1945l();
    }

    /* renamed from: c */
    public static C1936f m28582c() {
        return new C1936f();
    }

    /* renamed from: d */
    public static void m28581d(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof C1938h) {
            ((C1938h) background).m28626Z(f);
        }
    }

    /* renamed from: e */
    public static void m28580e(View view) {
        Drawable background = view.getBackground();
        if (background instanceof C1938h) {
            m28579f(view, (C1938h) background);
        }
    }

    /* renamed from: f */
    public static void m28579f(View view, C1938h c1938h) {
        if (c1938h.m28634R()) {
            c1938h.m28617e0(C8209q.m4446g(view));
        }
    }
}
