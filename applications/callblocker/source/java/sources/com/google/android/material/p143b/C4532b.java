package com.google.android.material.p143b;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.internal.C4692e;
import com.google.android.material.p143b.C4529a;
/* renamed from: com.google.android.material.b.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/b/b.class */
public class C4532b {

    /* renamed from: a */
    public static final boolean f19679a;

    static {
        f19679a = Build.VERSION.SDK_INT < 18;
    }

    /* renamed from: a */
    public static SparseArray<C4529a> m3697a(Context context, C4692e c4692e) {
        SparseArray<C4529a> sparseArray = new SparseArray<>(c4692e.size());
        for (int i = 0; i < c4692e.size(); i++) {
            int keyAt = c4692e.keyAt(i);
            C4529a.C4530a c4530a = (C4529a.C4530a) c4692e.valueAt(i);
            if (c4530a == null) {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
            sparseArray.put(keyAt, C4529a.m3731a(context, c4530a));
        }
        return sparseArray;
    }

    /* renamed from: a */
    public static C4692e m3695a(SparseArray<C4529a> sparseArray) {
        C4692e c4692e = new C4692e();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            C4529a valueAt = sparseArray.valueAt(i);
            if (valueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            c4692e.put(keyAt, valueAt.m3737a());
        }
        return c4692e;
    }

    /* renamed from: a */
    public static void m3696a(Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }

    /* renamed from: a */
    public static void m3694a(C4529a c4529a, View view, FrameLayout frameLayout) {
        m3692c(c4529a, view, frameLayout);
        if (f19679a) {
            frameLayout.setForeground(c4529a);
        } else {
            view.getOverlay().add(c4529a);
        }
    }

    /* renamed from: b */
    public static void m3693b(C4529a c4529a, View view, FrameLayout frameLayout) {
        if (c4529a == null) {
            return;
        }
        if (f19679a) {
            frameLayout.setForeground(null);
        } else {
            view.getOverlay().remove(c4529a);
        }
    }

    /* renamed from: c */
    public static void m3692c(C4529a c4529a, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        (f19679a ? frameLayout : view).getDrawingRect(rect);
        c4529a.setBounds(rect);
        c4529a.m3729a(view, frameLayout);
    }
}
