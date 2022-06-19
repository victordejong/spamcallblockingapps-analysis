package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.internal.C8203l;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1891g;
/* renamed from: com.google.android.material.appbar.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/b.class */
class C8001b {

    /* renamed from: a */
    private static final int[] f36094a = {16843848};

    /* renamed from: a */
    public static void m5661a(View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    /* renamed from: b */
    public static void m5660b(View view, float f) {
        int integer = view.getResources().getInteger(C1891g.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{16842766, C1886b.state_liftable, -C1886b.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j));
        stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }

    /* renamed from: c */
    public static void m5659c(View view, AttributeSet attributeSet, int i, int i2) {
        Context context = view.getContext();
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, f36094a, i, i2, new int[0]);
        try {
            if (m4462h.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, m4462h.getResourceId(0, 0)));
            }
        } finally {
            m4462h.recycle();
        }
    }
}
