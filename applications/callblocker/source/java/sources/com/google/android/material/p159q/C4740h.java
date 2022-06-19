package com.google.android.material.p159q;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.C4703j;
/* renamed from: com.google.android.material.q.h */
/* loaded from: classes-dex2jar.jar:com/google/android/material/q/h.class */
public class C4740h {
    /* renamed from: a */
    public static C4733d m2686a() {
        return new C4742j();
    }

    /* renamed from: a */
    public static C4733d m2685a(int i) {
        C4733d c4734e;
        switch (i) {
            case 0:
                c4734e = new C4742j();
                break;
            case 1:
                c4734e = new C4734e();
                break;
            default:
                c4734e = m2686a();
                break;
        }
        return c4734e;
    }

    /* renamed from: a */
    public static void m2684a(View view) {
        Drawable background = view.getBackground();
        if (background instanceof C4736g) {
            m2682a(view, (C4736g) background);
        }
    }

    /* renamed from: a */
    public static void m2683a(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof C4736g) {
            ((C4736g) background).m2687r(f);
        }
    }

    /* renamed from: a */
    public static void m2682a(View view, C4736g c4736g) {
        if (c4736g.m2739P()) {
            c4736g.m2688q(C4703j.m2812b(view));
        }
    }

    /* renamed from: b */
    public static C4735f m2681b() {
        return new C4735f();
    }
}
