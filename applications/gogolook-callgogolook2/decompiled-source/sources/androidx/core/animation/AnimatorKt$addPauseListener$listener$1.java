package androidx.core.animation;

import android.animation.Animator;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m815d2 = {"androidx/core/animation/AnimatorKt$addPauseListener$listener$1", "Landroid/animation/Animator$AnimatorPauseListener;", "onAnimationPause", "", "animator", "Landroid/animation/Animator;", "onAnimationResume", "core-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/animation/AnimatorKt$addPauseListener$listener$1.class */
public final class AnimatorKt$addPauseListener$listener$1 implements Animator.AnimatorPauseListener {
    public final /* synthetic */ AbstractC15118l $onPause;
    public final /* synthetic */ AbstractC15118l $onResume;

    public AnimatorKt$addPauseListener$listener$1(AbstractC15118l lVar, AbstractC15118l lVar2) {
        this.$onPause = lVar;
        this.$onResume = lVar2;
    }

    @Override // android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        C15149k.m377b(animator, "animator");
        this.$onPause.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        C15149k.m377b(animator, "animator");
        this.$onResume.invoke(animator);
    }
}
