package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.C0810g;
import androidx.transition.C2855a;
import androidx.transition.Transition;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Visibility.class */
public abstract class Visibility extends Transition {

    /* renamed from: a */
    private static final String[] f10797a = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: k */
    private int f10798k = 3;

    /* renamed from: androidx.transition.Visibility$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$a.class */
    static final class C2853a extends AnimatorListenerAdapter implements Transition.AbstractC2849c, C2855a.AbstractC2856a {

        /* renamed from: a */
        boolean f10803a = false;

        /* renamed from: b */
        private final View f10804b;

        /* renamed from: c */
        private final int f10805c;

        /* renamed from: d */
        private final ViewGroup f10806d;

        /* renamed from: e */
        private final boolean f10807e;

        /* renamed from: f */
        private boolean f10808f;

        C2853a(View view, int i, boolean z) {
            this.f10804b = view;
            this.f10805c = i;
            this.f10806d = (ViewGroup) view.getParent();
            this.f10807e = z;
            m39760a(true);
        }

        /* renamed from: a */
        private void m39760a(boolean z) {
            ViewGroup viewGroup;
            if (!this.f10807e || this.f10808f == z || (viewGroup = this.f10806d) == null) {
                return;
            }
            this.f10808f = z;
            C2860ad.m39753a(viewGroup, z);
        }

        /* renamed from: d */
        private void m39759d() {
            if (!this.f10803a) {
                C2867ai.m39742a(this.f10804b, this.f10805c);
                ViewGroup viewGroup = this.f10806d;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m39760a(false);
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: a */
        public final void mo39672a() {
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: a */
        public final void mo39671a(Transition transition) {
            m39759d();
            transition.mo39779b(this);
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: b */
        public final void mo39670b() {
            m39760a(false);
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: b */
        public final void mo39669b(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: c */
        public final void mo39668c() {
            m39760a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f10803a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            m39759d();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.C2855a.AbstractC2856a
        public final void onAnimationPause(Animator animator) {
            if (!this.f10803a) {
                C2867ai.m39742a(this.f10804b, this.f10805c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.C2855a.AbstractC2856a
        public final void onAnimationResume(Animator animator) {
            if (!this.f10803a) {
                C2867ai.m39742a(this.f10804b, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: androidx.transition.Visibility$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$b.class */
    public static final class C2854b {

        /* renamed from: a */
        boolean f10809a;

        /* renamed from: b */
        boolean f10810b;

        /* renamed from: c */
        int f10811c;

        /* renamed from: d */
        int f10812d;

        /* renamed from: e */
        ViewGroup f10813e;

        /* renamed from: f */
        ViewGroup f10814f;

        C2854b() {
        }
    }

    public Visibility() {
    }

    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10911e);
        int m44454a = C0810g.m44454a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (m44454a != 0) {
            m39767a(m44454a);
        }
    }

    /* renamed from: b */
    private static C2854b m39763b(C2914x c2914x, C2914x c2914x2) {
        C2854b c2854b = new C2854b();
        c2854b.f10809a = false;
        c2854b.f10810b = false;
        if (c2914x == null || !c2914x.f10933a.containsKey("android:visibility:visibility")) {
            c2854b.f10811c = -1;
            c2854b.f10813e = null;
        } else {
            c2854b.f10811c = ((Integer) c2914x.f10933a.get("android:visibility:visibility")).intValue();
            c2854b.f10813e = (ViewGroup) c2914x.f10933a.get("android:visibility:parent");
        }
        if (c2914x2 == null || !c2914x2.f10933a.containsKey("android:visibility:visibility")) {
            c2854b.f10812d = -1;
            c2854b.f10814f = null;
        } else {
            c2854b.f10812d = ((Integer) c2914x2.f10933a.get("android:visibility:visibility")).intValue();
            c2854b.f10814f = (ViewGroup) c2914x2.f10933a.get("android:visibility:parent");
        }
        if (c2914x == null || c2914x2 == null) {
            if (c2914x == null && c2854b.f10812d == 0) {
                c2854b.f10810b = true;
                c2854b.f10809a = true;
            } else if (c2914x2 == null && c2854b.f10811c == 0) {
                c2854b.f10810b = false;
                c2854b.f10809a = true;
            }
        } else if (c2854b.f10811c == c2854b.f10812d && c2854b.f10813e == c2854b.f10814f) {
            return c2854b;
        } else {
            if (c2854b.f10811c != c2854b.f10812d) {
                if (c2854b.f10811c == 0) {
                    c2854b.f10810b = false;
                    c2854b.f10809a = true;
                } else if (c2854b.f10812d == 0) {
                    c2854b.f10810b = true;
                    c2854b.f10809a = true;
                }
            } else if (c2854b.f10814f == null) {
                c2854b.f10810b = false;
                c2854b.f10809a = true;
            } else if (c2854b.f10813e == null) {
                c2854b.f10810b = true;
                c2854b.f10809a = true;
            }
        }
        return c2854b;
    }

    /* renamed from: d */
    private static void m39762d(C2914x c2914x) {
        c2914x.f10933a.put("android:visibility:visibility", Integer.valueOf(c2914x.f10934b.getVisibility()));
        c2914x.f10933a.put("android:visibility:parent", c2914x.f10934b.getParent());
        int[] iArr = new int[2];
        c2914x.f10934b.getLocationOnScreen(iArr);
        c2914x.f10933a.put("android:visibility:screenLocation", iArr);
    }

    /* renamed from: a */
    public Animator mo39766a(ViewGroup viewGroup, View view, C2914x c2914x) {
        return null;
    }

    /* renamed from: a */
    public Animator mo39765a(ViewGroup viewGroup, View view, C2914x c2914x, C2914x c2914x2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x017c, code lost:
        if (r8.f10763h != false) goto L64;
     */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo10514a(final android.view.ViewGroup r9, androidx.transition.C2914x r10, androidx.transition.C2914x r11) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.mo10514a(android.view.ViewGroup, androidx.transition.x, androidx.transition.x):android.animation.Animator");
    }

    /* renamed from: a */
    public final void m39767a(int i) {
        if ((i & (-4)) == 0) {
            this.f10798k = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public void mo10513a(C2914x c2914x) {
        m39762d(c2914x);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final boolean mo39764a(C2914x c2914x, C2914x c2914x2) {
        if (c2914x == null && c2914x2 == null) {
            return false;
        }
        if (c2914x != null && c2914x2 != null && c2914x2.f10933a.containsKey("android:visibility:visibility") != c2914x.f10933a.containsKey("android:visibility:visibility")) {
            return false;
        }
        C2854b m39763b = m39763b(c2914x, c2914x2);
        if (!m39763b.f10809a) {
            return false;
        }
        return m39763b.f10811c == 0 || m39763b.f10812d == 0;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo39768a() {
        return f10797a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public void mo10512b(C2914x c2914x) {
        m39762d(c2914x);
    }

    /* renamed from: l */
    public final int m39761l() {
        return this.f10798k;
    }
}
