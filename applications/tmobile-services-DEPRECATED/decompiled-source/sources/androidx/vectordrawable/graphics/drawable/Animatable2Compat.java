package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/Animatable2Compat.class */
public interface Animatable2Compat extends Animatable {

    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback.class */
    public static abstract class AnimationCallback {

        /* renamed from: androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback$1 */
        /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1.class */
        class C05691 extends Animatable2.AnimationCallback {

            /* renamed from: a */
            final /* synthetic */ AnimationCallback f5350a;

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationEnd(Drawable drawable) {
                this.f5350a.m16651a(drawable);
            }

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationStart(Drawable drawable) {
                this.f5350a.m16650b(drawable);
            }
        }

        /* renamed from: a */
        public void m16651a(Drawable drawable) {
        }

        /* renamed from: b */
        public void m16650b(Drawable drawable) {
        }
    }
}
