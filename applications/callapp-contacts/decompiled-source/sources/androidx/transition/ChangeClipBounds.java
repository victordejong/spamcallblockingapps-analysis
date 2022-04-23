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
import androidx.core.view.v;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeClipBounds.class */
public class ChangeClipBounds extends Transition {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5700a = {"android:clipBounds:clip"};

    public ChangeClipBounds() {
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private static void d(x xVar) {
        View view = xVar.f5853b;
        if (view.getVisibility() != 8) {
            Rect D = v.D(view);
            xVar.f5852a.put("android:clipBounds:clip", D);
            if (D == null) {
                xVar.f5852a.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
            }
        }
    }

    @Override // androidx.transition.Transition
    public final Animator a(ViewGroup viewGroup, x xVar, x xVar2) {
        Rect rect;
        Rect rect2;
        ObjectAnimator objectAnimator = null;
        if (xVar != null) {
            objectAnimator = null;
            if (xVar2 != null) {
                objectAnimator = null;
                if (xVar.f5852a.containsKey("android:clipBounds:clip")) {
                    if (!xVar2.f5852a.containsKey("android:clipBounds:clip")) {
                        objectAnimator = null;
                    } else {
                        Rect rect3 = (Rect) xVar.f5852a.get("android:clipBounds:clip");
                        Rect rect4 = (Rect) xVar2.f5852a.get("android:clipBounds:clip");
                        boolean z = rect4 == null;
                        if (rect3 == null && rect4 == null) {
                            return null;
                        }
                        if (rect3 == null) {
                            rect2 = (Rect) xVar.f5852a.get("android:clipBounds:bounds");
                            rect = rect4;
                        } else {
                            rect2 = rect3;
                            rect = rect4;
                            if (rect4 == null) {
                                rect = (Rect) xVar2.f5852a.get("android:clipBounds:bounds");
                                rect2 = rect3;
                            }
                        }
                        if (rect2.equals(rect)) {
                            return null;
                        }
                        v.a(xVar2.f5853b, rect2);
                        ObjectAnimator ofObject = ObjectAnimator.ofObject(xVar2.f5853b, (Property<View, V>) ai.f5773b, (TypeEvaluator) new p(new Rect()), (Object[]) new Rect[]{rect2, rect});
                        objectAnimator = ofObject;
                        if (z) {
                            final View view = xVar2.f5853b;
                            ofObject.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeClipBounds.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    v.a(view, (Rect) null);
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
    public final void a(x xVar) {
        d(xVar);
    }

    @Override // androidx.transition.Transition
    public final String[] a() {
        return f5700a;
    }

    @Override // androidx.transition.Transition
    public final void b(x xVar) {
        d(xVar);
    }
}
