package com.bumptech.glide;

import android.support.annotation.NonNull;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.request.transition.NoTransition;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.request.transition.ViewAnimationFactory;
import com.bumptech.glide.request.transition.ViewPropertyAnimationFactory;
import com.bumptech.glide.request.transition.ViewPropertyTransition;
import com.bumptech.glide.util.Preconditions;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/TransitionOptions.class */
public abstract class TransitionOptions<CHILD extends TransitionOptions<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    private TransitionFactory<? super TranscodeType> transitionFactory = NoTransition.getFactory();

    private CHILD self() {
        return this;
    }

    public final CHILD clone() {
        try {
            return (CHILD) ((TransitionOptions) super.clone());
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    public final CHILD dontTransition() {
        return transition(NoTransition.getFactory());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final TransitionFactory<? super TranscodeType> getTransitionFactory() {
        return this.transitionFactory;
    }

    @NonNull
    public final CHILD transition(int i) {
        return transition(new ViewAnimationFactory(i));
    }

    @NonNull
    public final CHILD transition(@NonNull TransitionFactory<? super TranscodeType> transitionFactory) {
        this.transitionFactory = (TransitionFactory) Preconditions.checkNotNull(transitionFactory);
        return self();
    }

    @NonNull
    public final CHILD transition(@NonNull ViewPropertyTransition.Animator animator) {
        return transition(new ViewPropertyAnimationFactory(animator));
    }
}
