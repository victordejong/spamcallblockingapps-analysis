package p133j3;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import p029c4.C0822f;
/* renamed from: j3.a */
/* loaded from: classes-dex2jar.jar:j3/a.class */
public class C3178a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ BottomSheetBehavior f10706a;

    public C3178a(BottomSheetBehavior bottomSheetBehavior) {
        this.f10706a = bottomSheetBehavior;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        C0822f c0822f = this.f10706a.f6339i;
        if (c0822f != null) {
            c0822f.m7313r(floatValue);
        }
    }
}
