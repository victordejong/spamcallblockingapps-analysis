package com.bumptech.glide.request.transition;

import android.view.View;
import com.bumptech.glide.request.transition.Transition;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/ViewPropertyTransition.class */
public class ViewPropertyTransition<R> implements Transition<R> {
    private final Animator animator;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/ViewPropertyTransition$Animator.class */
    public interface Animator {
        void animate(View view);
    }

    public ViewPropertyTransition(Animator animator) {
        this.animator = animator;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public boolean transition(R r, Transition.ViewAdapter viewAdapter) {
        if (viewAdapter.getView() == null) {
            return false;
        }
        this.animator.animate(viewAdapter.getView());
        return false;
    }
}
