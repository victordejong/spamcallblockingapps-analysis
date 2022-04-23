package androidx.core.animation;

import android.animation.Animator;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "", "it", "Landroid/animation/Animator;", "invoke"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/animation/AnimatorKt$addPauseListener$1.class */
public final class AnimatorKt$addPauseListener$1 extends AbstractC15150l implements AbstractC15118l<Animator, C14989s> {
    public static final AnimatorKt$addPauseListener$1 INSTANCE = new AnimatorKt$addPauseListener$1();

    public AnimatorKt$addPauseListener$1() {
        super(1);
    }

    @Override // p626l.p641z.p642c.AbstractC15118l
    public /* bridge */ /* synthetic */ C14989s invoke(Animator animator) {
        invoke2(animator);
        return C14989s.f33022a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Animator animator) {
        C15149k.m377b(animator, "it");
    }
}
