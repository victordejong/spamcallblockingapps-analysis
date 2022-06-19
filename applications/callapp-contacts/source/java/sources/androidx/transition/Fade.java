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
import androidx.core.content.res.C0810g;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Fade.class */
public class Fade extends Visibility {

    /* renamed from: androidx.transition.Fade$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Fade$a.class */
    public static final class C2834a extends AnimatorListenerAdapter {

        /* renamed from: a */
        private final View f10731a;

        /* renamed from: b */
        private boolean f10732b = false;

        C2834a(View view) {
            this.f10731a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            C2867ai.m39743a(this.f10731a, 1.0f);
            if (this.f10732b) {
                this.f10731a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (!C0926v.m44078u(this.f10731a) || this.f10731a.getLayerType() != 0) {
                return;
            }
            this.f10732b = true;
            this.f10731a.setLayerType(2, null);
        }
    }

    public Fade() {
    }

    public Fade(int i) {
        m39767a(i);
    }

    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10912f);
        m39767a(C0810g.m44454a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "fadingMode", 0, m39761l()));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static float m39821a(C2914x c2914x, float f) {
        float f2 = f;
        if (c2914x != null) {
            Float f3 = (Float) c2914x.f10933a.get("android:fade:transitionAlpha");
            f2 = f;
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    /* renamed from: a */
    private Animator m39822a(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C2867ai.m39743a(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C2867ai.f10832a, f2);
        ofFloat.addListener(new C2834a(view));
        mo39786a(new C2907t() { // from class: androidx.transition.Fade.1
            @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
            /* renamed from: a */
            public final void mo39671a(Transition transition) {
                C2867ai.m39743a(view, 1.0f);
                C2867ai.m39734e(view);
                transition.mo39779b(this);
            }
        });
        return ofFloat;
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo39766a(ViewGroup viewGroup, View view, C2914x c2914x) {
        C2867ai.m39735d(view);
        return m39822a(view, m39821a(c2914x, 1.0f), BitmapDescriptorFactory.HUE_RED);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo39765a(ViewGroup viewGroup, View view, C2914x c2914x, C2914x c2914x2) {
        float m39821a = m39821a(c2914x, (float) BitmapDescriptorFactory.HUE_RED);
        if (m39821a == 1.0f) {
            m39821a = 0.0f;
        }
        return m39822a(view, m39821a, 1.0f);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        super.mo10513a(c2914x);
        c2914x.f10933a.put("android:fade:transitionAlpha", Float.valueOf(C2867ai.m39737c(c2914x.f10934b)));
    }
}
