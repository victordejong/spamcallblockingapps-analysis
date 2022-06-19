package p153l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
import p291y.C4951d;
/* renamed from: l1.c */
/* loaded from: classes-dex2jar.jar:l1/c.class */
public class C3441c extends AbstractC3478x {

    /* renamed from: l1.c$a */
    /* loaded from: classes-dex2jar.jar:l1/c$a.class */
    public class C3442a extends C3458j {

        /* renamed from: a */
        public final /* synthetic */ View f11506a;

        public C3442a(C3441c c3441c, View view) {
            this.f11506a = view;
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: d */
        public void mo2233d(AbstractC3451g abstractC3451g) {
            View view = this.f11506a;
            C4951d c4951d = C3469q.f11571a;
            c4951d.mo191l(view, 1.0f);
            c4951d.mo199d(this.f11506a);
            abstractC3451g.mo2251v(this);
        }
    }

    /* renamed from: l1.c$b */
    /* loaded from: classes-dex2jar.jar:l1/c$b.class */
    public static class C3443b extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final View f11507a;

        /* renamed from: b */
        public boolean f11508b = false;

        public C3443b(View view) {
            this.f11507a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C3469q.f11571a.mo191l(this.f11507a, 1.0f);
            if (this.f11508b) {
                this.f11507a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = this.f11507a;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (!C3589v.C3593d.m2086h(view) || this.f11507a.getLayerType() != 0) {
                return;
            }
            this.f11508b = true;
            this.f11507a.setLayerType(2, null);
        }
    }

    public C3441c() {
    }

    public C3441c(int i) {
        if ((i & (-4)) == 0) {
            this.f11583x = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    @Override // p153l1.AbstractC3478x
    /* renamed from: J */
    public Animator mo2241J(ViewGroup viewGroup, View view, C3466n c3466n, C3466n c3466n2) {
        C3469q.f11571a.mo193j(view);
        Float f = (Float) c3466n.f11566a.get("android:fade:transitionAlpha");
        return m2300K(view, f != null ? f.floatValue() : 1.0f, 0.0f);
    }

    /* renamed from: K */
    public final Animator m2300K(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C3469q.f11571a.mo191l(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C3469q.f11572b, f2);
        ofFloat.addListener(new C3443b(view));
        mo2258a(new C3442a(this, view));
        return ofFloat;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: g */
    public void mo2255g(C3466n c3466n) {
        m2243H(c3466n);
        c3466n.f11566a.put("android:fade:transitionAlpha", Float.valueOf(C3469q.m2245a(c3466n.f11567b)));
    }
}
