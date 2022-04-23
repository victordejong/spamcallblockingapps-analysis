package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.g;
import androidx.transition.Transition;
import androidx.transition.a;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Visibility.class */
public abstract class Visibility extends Transition {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5745a = {"android:visibility:visibility", "android:visibility:parent"};
    private int k = 3;

    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$a.class */
    static final class a extends AnimatorListenerAdapter implements Transition.c, a.AbstractC0118a {

        /* renamed from: a  reason: collision with root package name */
        boolean f5750a = false;

        /* renamed from: b  reason: collision with root package name */
        private final View f5751b;

        /* renamed from: c  reason: collision with root package name */
        private final int f5752c;

        /* renamed from: d  reason: collision with root package name */
        private final ViewGroup f5753d;
        private final boolean e;
        private boolean f;

        a(View view, int i, boolean z) {
            this.f5751b = view;
            this.f5752c = i;
            this.f5753d = (ViewGroup) view.getParent();
            this.e = z;
            a(true);
        }

        private void a(boolean z) {
            ViewGroup viewGroup;
            if (this.e && this.f != z && (viewGroup = this.f5753d) != null) {
                this.f = z;
                ad.a(viewGroup, z);
            }
        }

        private void d() {
            if (!this.f5750a) {
                ai.a(this.f5751b, this.f5752c);
                ViewGroup viewGroup = this.f5753d;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }

        @Override // androidx.transition.Transition.c
        public final void a() {
        }

        @Override // androidx.transition.Transition.c
        public final void a(Transition transition) {
            d();
            transition.b(this);
        }

        @Override // androidx.transition.Transition.c
        public final void b() {
            a(false);
        }

        @Override // androidx.transition.Transition.c
        public final void b(Transition transition) {
        }

        @Override // androidx.transition.Transition.c
        public final void c() {
            a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f5750a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            d();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.a.AbstractC0118a
        public final void onAnimationPause(Animator animator) {
            if (!this.f5750a) {
                ai.a(this.f5751b, this.f5752c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.a.AbstractC0118a
        public final void onAnimationResume(Animator animator) {
            if (!this.f5750a) {
                ai.a(this.f5751b, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        boolean f5754a;

        /* renamed from: b  reason: collision with root package name */
        boolean f5755b;

        /* renamed from: c  reason: collision with root package name */
        int f5756c;

        /* renamed from: d  reason: collision with root package name */
        int f5757d;
        ViewGroup e;
        ViewGroup f;

        b() {
        }
    }

    public Visibility() {
    }

    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.e);
        int a2 = g.a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (a2 != 0) {
            a(a2);
        }
    }

    private static b b(x xVar, x xVar2) {
        b bVar = new b();
        bVar.f5754a = false;
        bVar.f5755b = false;
        if (xVar == null || !xVar.f5852a.containsKey("android:visibility:visibility")) {
            bVar.f5756c = -1;
            bVar.e = null;
        } else {
            bVar.f5756c = ((Integer) xVar.f5852a.get("android:visibility:visibility")).intValue();
            bVar.e = (ViewGroup) xVar.f5852a.get("android:visibility:parent");
        }
        if (xVar2 == null || !xVar2.f5852a.containsKey("android:visibility:visibility")) {
            bVar.f5757d = -1;
            bVar.f = null;
        } else {
            bVar.f5757d = ((Integer) xVar2.f5852a.get("android:visibility:visibility")).intValue();
            bVar.f = (ViewGroup) xVar2.f5852a.get("android:visibility:parent");
        }
        if (xVar == null || xVar2 == null) {
            if (xVar == null && bVar.f5757d == 0) {
                bVar.f5755b = true;
                bVar.f5754a = true;
            } else if (xVar2 == null && bVar.f5756c == 0) {
                bVar.f5755b = false;
                bVar.f5754a = true;
            }
        } else if (bVar.f5756c == bVar.f5757d && bVar.e == bVar.f) {
            return bVar;
        } else {
            if (bVar.f5756c != bVar.f5757d) {
                if (bVar.f5756c == 0) {
                    bVar.f5755b = false;
                    bVar.f5754a = true;
                } else if (bVar.f5757d == 0) {
                    bVar.f5755b = true;
                    bVar.f5754a = true;
                }
            } else if (bVar.f == null) {
                bVar.f5755b = false;
                bVar.f5754a = true;
            } else if (bVar.e == null) {
                bVar.f5755b = true;
                bVar.f5754a = true;
            }
        }
        return bVar;
    }

    private static void d(x xVar) {
        xVar.f5852a.put("android:visibility:visibility", Integer.valueOf(xVar.f5853b.getVisibility()));
        xVar.f5852a.put("android:visibility:parent", xVar.f5853b.getParent());
        int[] iArr = new int[2];
        xVar.f5853b.getLocationOnScreen(iArr);
        xVar.f5852a.put("android:visibility:screenLocation", iArr);
    }

    public Animator a(ViewGroup viewGroup, View view, x xVar) {
        return null;
    }

    public Animator a(ViewGroup viewGroup, View view, x xVar, x xVar2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x017c, code lost:
        if (r8.h != false) goto L_0x017f;
     */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator a(final android.view.ViewGroup r9, androidx.transition.x r10, androidx.transition.x r11) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.a(android.view.ViewGroup, androidx.transition.x, androidx.transition.x):android.animation.Animator");
    }

    public final void a(int i) {
        if ((i & (-4)) == 0) {
            this.k = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    @Override // androidx.transition.Transition
    public void a(x xVar) {
        d(xVar);
    }

    @Override // androidx.transition.Transition
    public final boolean a(x xVar, x xVar2) {
        if (xVar == null && xVar2 == null) {
            return false;
        }
        if (xVar != null && xVar2 != null && xVar2.f5852a.containsKey("android:visibility:visibility") != xVar.f5852a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b b2 = b(xVar, xVar2);
        if (b2.f5754a) {
            return b2.f5756c == 0 || b2.f5757d == 0;
        }
        return false;
    }

    @Override // androidx.transition.Transition
    public final String[] a() {
        return f5745a;
    }

    @Override // androidx.transition.Transition
    public void b(x xVar) {
        d(xVar);
    }

    public final int l() {
        return this.k;
    }
}
