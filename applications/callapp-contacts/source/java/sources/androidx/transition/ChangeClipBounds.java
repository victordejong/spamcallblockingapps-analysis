package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0926v;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeClipBounds.class */
public class ChangeClipBounds extends Transition {

    /* renamed from: a */
    private static final String[] f10688a = {"android:clipBounds:clip"};

    public ChangeClipBounds() {
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    private static void m39836d(C2914x c2914x) {
        View view = c2914x.f10934b;
        if (view.getVisibility() == 8) {
            return;
        }
        Rect m44155D = C0926v.m44155D(view);
        c2914x.f10933a.put("android:clipBounds:clip", m44155D);
        if (m44155D != null) {
            return;
        }
        c2914x.f10933a.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final Animator mo10514a(ViewGroup viewGroup, C2914x c2914x, C2914x c2914x2) {
        Rect rect;
        Rect rect2;
        ObjectAnimator objectAnimator = null;
        if (c2914x != null) {
            objectAnimator = null;
            if (c2914x2 != null) {
                objectAnimator = null;
                if (c2914x.f10933a.containsKey("android:clipBounds:clip")) {
                    if (!c2914x2.f10933a.containsKey("android:clipBounds:clip")) {
                        objectAnimator = null;
                    } else {
                        Rect rect3 = (Rect) c2914x.f10933a.get("android:clipBounds:clip");
                        Rect rect4 = (Rect) c2914x2.f10933a.get("android:clipBounds:clip");
                        boolean z = rect4 == null;
                        if (rect3 == null && rect4 == null) {
                            return null;
                        }
                        if (rect3 == null) {
                            rect2 = (Rect) c2914x.f10933a.get("android:clipBounds:bounds");
                            rect = rect4;
                        } else {
                            rect2 = rect3;
                            rect = rect4;
                            if (rect4 == null) {
                                rect = (Rect) c2914x2.f10933a.get("android:clipBounds:bounds");
                                rect2 = rect3;
                            }
                        }
                        if (rect2.equals(rect)) {
                            return null;
                        }
                        C0926v.m44129a(c2914x2.f10934b, rect2);
                        ObjectAnimator ofObject = ObjectAnimator.ofObject(c2914x2.f10934b, (Property<View, V>) C2867ai.f10833b, (TypeEvaluator) new C2903p(new Rect()), (Object[]) new Rect[]{rect2, rect});
                        objectAnimator = ofObject;
                        if (z) {
                            final View view = c2914x2.f10934b;
                            ofObject.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeClipBounds.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    C0926v.m44129a(view, (Rect) null);
                                }
                            });
                            objectAnimator = ofObject;
                        }
                    }
                }
            }
        }
        return objectAnimator;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        m39836d(c2914x);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo39768a() {
        return f10688a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        m39836d(c2914x);
    }
}
