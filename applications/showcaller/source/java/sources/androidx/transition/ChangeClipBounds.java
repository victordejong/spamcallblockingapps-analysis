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
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeClipBounds.class */
public class ChangeClipBounds extends Transition {

    /* renamed from: N */
    private static final String[] f4750N = {"android:clipBounds:clip"};

    /* renamed from: androidx.transition.ChangeClipBounds$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeClipBounds$a.class */
    class C1084a extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ View f4751a;

        C1084a(View view) {
            ChangeClipBounds.this = r4;
            this.f4751a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1679w.m29261x0(this.f4751a, null);
        }
    }

    public ChangeClipBounds() {
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: m0 */
    private void m31060m0(C1175y c1175y) {
        View view = c1175y.f4996b;
        if (view.getVisibility() == 8) {
            return;
        }
        Rect m29268u = C1679w.m29268u(view);
        c1175y.f4995a.put("android:clipBounds:clip", m29268u);
        if (m29268u != null) {
            return;
        }
        c1175y.f4995a.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo30953J() {
        return f4750N;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        m31060m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        m31060m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo4470q(ViewGroup viewGroup, C1175y c1175y, C1175y c1175y2) {
        Rect rect;
        Rect rect2;
        ObjectAnimator objectAnimator = null;
        if (c1175y != null) {
            objectAnimator = null;
            if (c1175y2 != null) {
                objectAnimator = null;
                if (c1175y.f4995a.containsKey("android:clipBounds:clip")) {
                    if (!c1175y2.f4995a.containsKey("android:clipBounds:clip")) {
                        objectAnimator = null;
                    } else {
                        Rect rect3 = (Rect) c1175y.f4995a.get("android:clipBounds:clip");
                        Rect rect4 = (Rect) c1175y2.f4995a.get("android:clipBounds:clip");
                        boolean z = rect4 == null;
                        if (rect3 == null && rect4 == null) {
                            return null;
                        }
                        if (rect3 == null) {
                            rect = (Rect) c1175y.f4995a.get("android:clipBounds:bounds");
                            rect2 = rect4;
                        } else {
                            rect = rect3;
                            rect2 = rect4;
                            if (rect4 == null) {
                                rect2 = (Rect) c1175y2.f4995a.get("android:clipBounds:bounds");
                                rect = rect3;
                            }
                        }
                        if (rect.equals(rect2)) {
                            return null;
                        }
                        C1679w.m29261x0(c1175y2.f4996b, rect);
                        ObjectAnimator ofObject = ObjectAnimator.ofObject(c1175y2.f4996b, (Property<View, V>) C1144j0.f4941c, (TypeEvaluator) new C1160q(new Rect()), (Object[]) new Rect[]{rect, rect2});
                        objectAnimator = ofObject;
                        if (z) {
                            ofObject.addListener(new C1084a(c1175y2.f4996b));
                            objectAnimator = ofObject;
                        }
                    }
                }
            }
        }
        return objectAnimator;
    }
}
