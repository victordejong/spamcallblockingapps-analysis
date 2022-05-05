package androidx.core.transition;

import android.transition.Transition;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\n"}, m815d2 = {"androidx/core/transition/TransitionKt$addListener$listener$1", "Landroid/transition/Transition$TransitionListener;", "onTransitionCancel", "", AnimatedStateListDrawableCompat.ELEMENT_TRANSITION, "Landroid/transition/Transition;", "onTransitionEnd", "onTransitionPause", "onTransitionResume", "onTransitionStart", "core-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/transition/TransitionKt$addListener$listener$1.class */
public final class TransitionKt$addListener$listener$1 implements Transition.TransitionListener {
    public final /* synthetic */ AbstractC15118l $onCancel;
    public final /* synthetic */ AbstractC15118l $onEnd;
    public final /* synthetic */ AbstractC15118l $onPause;
    public final /* synthetic */ AbstractC15118l $onResume;
    public final /* synthetic */ AbstractC15118l $onStart;

    public TransitionKt$addListener$listener$1(AbstractC15118l lVar, AbstractC15118l lVar2, AbstractC15118l lVar3, AbstractC15118l lVar4, AbstractC15118l lVar5) {
        this.$onEnd = lVar;
        this.$onResume = lVar2;
        this.$onPause = lVar3;
        this.$onCancel = lVar4;
        this.$onStart = lVar5;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
        C15149k.m377b(transition, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
        this.$onCancel.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        C15149k.m377b(transition, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
        this.$onEnd.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
        C15149k.m377b(transition, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
        this.$onPause.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
        C15149k.m377b(transition, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
        this.$onResume.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        C15149k.m377b(transition, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
        this.$onStart.invoke(transition);
    }
}
