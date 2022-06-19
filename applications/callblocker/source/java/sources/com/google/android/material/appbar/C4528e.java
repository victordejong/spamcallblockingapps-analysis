package com.google.android.material.appbar;

import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.view.View;
import com.google.android.material.C4492a;
/* renamed from: com.google.android.material.appbar.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/e.class */
class C4528e {

    /* renamed from: a */
    private static final int[] f19652a = {16843848};

    /* renamed from: a */
    public static void m3738a(View view, float f) {
        int integer = view.getResources().getInteger(C4492a.C4499g.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(new int[]{16842766, C4492a.C4494b.state_liftable, -C4492a.C4494b.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(integer));
        stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(integer));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
