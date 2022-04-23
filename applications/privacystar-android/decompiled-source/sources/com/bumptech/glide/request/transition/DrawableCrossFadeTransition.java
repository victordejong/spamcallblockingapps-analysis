package com.bumptech.glide.request.transition;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.transition.Transition;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/DrawableCrossFadeTransition.class */
public class DrawableCrossFadeTransition implements Transition<Drawable> {
    private final int duration;
    private final boolean isCrossFadeEnabled;

    public DrawableCrossFadeTransition(int i, boolean z) {
        this.duration = i;
        this.isCrossFadeEnabled = z;
    }

    public boolean transition(Drawable drawable, Transition.ViewAdapter viewAdapter) {
        Drawable currentDrawable = viewAdapter.getCurrentDrawable();
        Drawable drawable2 = currentDrawable;
        if (currentDrawable == null) {
            drawable2 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        transitionDrawable.setCrossFadeEnabled(this.isCrossFadeEnabled);
        transitionDrawable.startTransition(this.duration);
        viewAdapter.setDrawable(transitionDrawable);
        return true;
    }
}
