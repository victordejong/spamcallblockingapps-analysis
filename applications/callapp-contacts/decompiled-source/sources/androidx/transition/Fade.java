package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.g;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Fade.class */
public class Fade extends Visibility {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Fade$a.class */
    public static final class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final View f5724a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f5725b = false;

        a(View view) {
            this.f5724a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            ai.a(this.f5724a, 1.0f);
            if (this.f5725b) {
                this.f5724a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (v.u(this.f5724a) && this.f5724a.getLayerType() == 0) {
                this.f5725b = true;
                this.f5724a.setLayerType(2, null);
            }
        }
    }

    public Fade() {
    }

    public Fade(int i) {
        a(i);
    }

    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.f);
        a(g.a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "fadingMode", 0, l()));
        obtainStyledAttributes.recycle();
    }

    private static float a(x xVar, float f) {
        float f2 = f;
        if (xVar != null) {
            Float f3 = (Float) xVar.f5852a.get("android:fade:transitionAlpha");
            f2 = f;
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    private Animator a(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ai.a(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ai.f5772a, f2);
        ofFloat.addListener(new a(view));
        a(new t() { // from class: androidx.transition.Fade.1
            @Override // androidx.transition.t, androidx.transition.Transition.c
            public final void a(Transition transition) {
                ai.a(view, 1.0f);
                ai.e(view);
                transition.b(this);
            }
        });
        return ofFloat;
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, x xVar) {
        ai.d(view);
        return a(view, a(xVar, 1.0f), BitmapDescriptorFactory.HUE_RED);
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, x xVar, x xVar2) {
        r11 = BitmapDescriptorFactory.HUE_RED;
        float a2 = a(xVar, (float) BitmapDescriptorFactory.HUE_RED);
        if (a2 == 1.0f) {
        }
        return a(view, a2, 1.0f);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void a(x xVar) {
        super.a(xVar);
        xVar.f5852a.put("android:fade:transitionAlpha", Float.valueOf(ai.c(xVar.f5853b)));
    }
}
