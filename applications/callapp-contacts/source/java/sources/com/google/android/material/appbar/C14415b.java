package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14647l;
/* renamed from: com.google.android.material.appbar.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/b.class */
final class C14415b {

    /* renamed from: a */
    private static final int[] f52488a = {16843848};

    C14415b() {
    }

    /* renamed from: a */
    public static void m11245a(View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    /* renamed from: a */
    public static void m11244a(View view, float f) {
        int integer = view.getResources().getInteger(C14376a.C14383g.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{16842766, C14376a.C14378b.state_liftable, -C14376a.C14378b.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", BitmapDescriptorFactory.HUE_RED).setDuration(j));
        stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", BitmapDescriptorFactory.HUE_RED).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }

    /* renamed from: a */
    public static void m11243a(View view, AttributeSet attributeSet, int i, int i2) {
        Context context = view.getContext();
        TypedArray m10508a = C14647l.m10508a(context, attributeSet, f52488a, i, i2, new int[0]);
        try {
            if (m10508a.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, m10508a.getResourceId(0, 0)));
            }
        } finally {
            m10508a.recycle();
        }
    }
}
