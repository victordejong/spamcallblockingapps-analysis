package com.google.android.material.internal;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.core.p026h.AbstractC0591q;
import androidx.core.p026h.C0572ac;
import androidx.core.p026h.C0595u;
/* renamed from: com.google.android.material.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/j.class */
public class C4703j {

    /* renamed from: com.google.android.material.internal.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/j$a.class */
    public interface AbstractC4706a {
        /* renamed from: a */
        C0572ac mo2811a(View view, C0572ac c0572ac, C4707b c4707b);
    }

    /* renamed from: com.google.android.material.internal.j$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/j$b.class */
    public static class C4707b {

        /* renamed from: a */
        public int f20394a;

        /* renamed from: b */
        public int f20395b;

        /* renamed from: c */
        public int f20396c;

        /* renamed from: d */
        public int f20397d;

        public C4707b(int i, int i2, int i3, int i4) {
            this.f20394a = i;
            this.f20395b = i2;
            this.f20396c = i3;
            this.f20397d = i4;
        }

        public C4707b(C4707b c4707b) {
            this.f20394a = c4707b.f20394a;
            this.f20395b = c4707b.f20395b;
            this.f20396c = c4707b.f20396c;
            this.f20397d = c4707b.f20397d;
        }

        /* renamed from: a */
        public void m2810a(View view) {
            C0595u.m20355a(view, this.f20394a, this.f20395b, this.f20396c, this.f20397d);
        }
    }

    /* renamed from: a */
    public static float m2815a(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    public static PorterDuff.Mode m2816a(int i, PorterDuff.Mode mode) {
        PorterDuff.Mode mode2 = mode;
        switch (i) {
            case 3:
                mode2 = PorterDuff.Mode.SRC_OVER;
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 5:
                mode2 = PorterDuff.Mode.SRC_IN;
                break;
            case 9:
                mode2 = PorterDuff.Mode.SRC_ATOP;
                break;
            case 14:
                mode2 = PorterDuff.Mode.MULTIPLY;
                break;
            case 15:
                mode2 = PorterDuff.Mode.SCREEN;
                break;
            case 16:
                mode2 = PorterDuff.Mode.ADD;
                break;
            default:
                mode2 = mode;
                break;
        }
        return mode2;
    }

    /* renamed from: a */
    public static void m2814a(View view) {
        if (C0595u.m20370B(view)) {
            C0595u.m20307q(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.internal.j.2
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    view2.removeOnAttachStateChangeListener(this);
                    C0595u.m20307q(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }

    /* renamed from: a */
    public static void m2813a(View view, final AbstractC4706a abstractC4706a) {
        final C4707b c4707b = new C4707b(C0595u.m20316i(view), view.getPaddingTop(), C0595u.m20314j(view), view.getPaddingBottom());
        C0595u.m20343a(view, new AbstractC0591q() { // from class: com.google.android.material.internal.j.1
            @Override // androidx.core.p026h.AbstractC0591q
            /* renamed from: a */
            public C0572ac mo2513a(View view2, C0572ac c0572ac) {
                return abstractC4706a.mo2811a(view2, c0572ac, new C4707b(c4707b));
            }
        });
        m2814a(view);
    }

    /* renamed from: b */
    public static float m2812b(View view) {
        ViewParent parent = view.getParent();
        float f = 0.0f;
        while (true) {
            float f2 = f;
            if (parent instanceof View) {
                float m20310n = C0595u.m20310n((View) parent);
                parent = parent.getParent();
                f = m20310n + f2;
            } else {
                return f2;
            }
        }
    }
}
