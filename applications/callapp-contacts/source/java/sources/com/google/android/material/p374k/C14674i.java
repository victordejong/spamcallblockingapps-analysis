package com.google.android.material.p374k;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.C14654r;
/* renamed from: com.google.android.material.k.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/i.class */
public final class C14674i {
    private C14674i() {
    }

    /* renamed from: a */
    public static C14666d m10438a(int i) {
        if (i != 0 && i == 1) {
            return new C14667e();
        }
        return new C14677l();
    }

    /* renamed from: a */
    public static void m10437a(View view) {
        Drawable background = view.getBackground();
        if (background instanceof C14670h) {
            m10435a(view, (C14670h) background);
        }
    }

    /* renamed from: a */
    public static void m10436a(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof C14670h) {
            ((C14670h) background).m10439r(f);
        }
    }

    /* renamed from: a */
    public static void m10435a(View view, C14670h c14670h) {
        if (c14670h.m10457g()) {
            c14670h.m10441q(C14654r.m10494c(view));
        }
    }
}
