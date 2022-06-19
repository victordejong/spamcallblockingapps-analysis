package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.core.content.p007d.C0614g;
import org.xmlpull.v1.XmlPullParser;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/transition/Slide.class */
public class Slide extends Visibility {

    /* renamed from: P */
    private static final TimeInterpolator f4798P = new DecelerateInterpolator();

    /* renamed from: Q */
    private static final TimeInterpolator f4799Q = new AccelerateInterpolator();

    /* renamed from: R */
    private static final AbstractC1102g f4800R = new C1096a();

    /* renamed from: S */
    private static final AbstractC1102g f4801S = new C1097b();

    /* renamed from: T */
    private static final AbstractC1102g f4802T = new C1098c();

    /* renamed from: U */
    private static final AbstractC1102g f4803U = new C1099d();

    /* renamed from: V */
    private static final AbstractC1102g f4804V = new C1100e();

    /* renamed from: W */
    private static final AbstractC1102g f4805W = new C1101f();

    /* renamed from: X */
    private AbstractC1102g f4806X = f4805W;

    /* renamed from: Y */
    private int f4807Y = 80;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.Slide$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$a.class */
    public static final class C1096a extends AbstractC1103h {
        C1096a() {
            super(null);
        }

        @Override // androidx.transition.Slide.AbstractC1102g
        /* renamed from: b */
        public float mo31021b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$b.class */
    static final class C1097b extends AbstractC1103h {
        C1097b() {
            super(null);
        }

        @Override // androidx.transition.Slide.AbstractC1102g
        /* renamed from: b */
        public float mo31021b(ViewGroup viewGroup, View view) {
            boolean z = true;
            if (C1679w.m29346C(viewGroup) != 1) {
                z = false;
            }
            return z ? view.getTranslationX() + viewGroup.getWidth() : view.getTranslationX() - viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$c.class */
    static final class C1098c extends AbstractC1104i {
        C1098c() {
            super(null);
        }

        @Override // androidx.transition.Slide.AbstractC1102g
        /* renamed from: a */
        public float mo31022a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - viewGroup.getHeight();
        }
    }

    /* renamed from: androidx.transition.Slide$d */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$d.class */
    static final class C1099d extends AbstractC1103h {
        C1099d() {
            super(null);
        }

        @Override // androidx.transition.Slide.AbstractC1102g
        /* renamed from: b */
        public float mo31021b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$e */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$e.class */
    static final class C1100e extends AbstractC1103h {
        C1100e() {
            super(null);
        }

        @Override // androidx.transition.Slide.AbstractC1102g
        /* renamed from: b */
        public float mo31021b(ViewGroup viewGroup, View view) {
            boolean z = true;
            if (C1679w.m29346C(viewGroup) != 1) {
                z = false;
            }
            return z ? view.getTranslationX() - viewGroup.getWidth() : view.getTranslationX() + viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$f */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$f.class */
    static final class C1101f extends AbstractC1104i {
        C1101f() {
            super(null);
        }

        @Override // androidx.transition.Slide.AbstractC1102g
        /* renamed from: a */
        public float mo31022a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + viewGroup.getHeight();
        }
    }

    /* renamed from: androidx.transition.Slide$g */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$g.class */
    public interface AbstractC1102g {
        /* renamed from: a */
        float mo31022a(ViewGroup viewGroup, View view);

        /* renamed from: b */
        float mo31021b(ViewGroup viewGroup, View view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.Slide$h */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$h.class */
    public static abstract class AbstractC1103h implements AbstractC1102g {
        private AbstractC1103h() {
        }

        /* synthetic */ AbstractC1103h(C1096a c1096a) {
            this();
        }

        @Override // androidx.transition.Slide.AbstractC1102g
        /* renamed from: a */
        public float mo31022a(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.Slide$i */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$i.class */
    public static abstract class AbstractC1104i implements AbstractC1102g {
        private AbstractC1104i() {
        }

        /* synthetic */ AbstractC1104i(C1096a c1096a) {
            this();
        }

        @Override // androidx.transition.Slide.AbstractC1102g
        /* renamed from: b */
        public float mo31021b(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    public Slide() {
        m31023u0(80);
    }

    @SuppressLint({"RestrictedApi"})
    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4978h);
        int m33253g = C0614g.m33253g(obtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        obtainStyledAttributes.recycle();
        m31023u0(m33253g);
    }

    /* renamed from: m0 */
    private void m31024m0(C1175y c1175y) {
        int[] iArr = new int[2];
        c1175y.f4996b.getLocationOnScreen(iArr);
        c1175y.f4995a.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        super.mo4473i(c1175y);
        m31024m0(c1175y);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        super.mo4472m(c1175y);
        m31024m0(c1175y);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: p0 */
    public Animator mo30948p0(ViewGroup viewGroup, View view, C1175y c1175y, C1175y c1175y2) {
        if (c1175y2 == null) {
            return null;
        }
        int[] iArr = (int[]) c1175y2.f4995a.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return C1118a0.m30938a(view, c1175y2, iArr[0], iArr[1], this.f4806X.mo31021b(viewGroup, view), this.f4806X.mo31022a(viewGroup, view), translationX, translationY, f4798P, this);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: r0 */
    public Animator mo30946r0(ViewGroup viewGroup, View view, C1175y c1175y, C1175y c1175y2) {
        if (c1175y == null) {
            return null;
        }
        int[] iArr = (int[]) c1175y.f4995a.get("android:slide:screenPosition");
        return C1118a0.m30938a(view, c1175y, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f4806X.mo31021b(viewGroup, view), this.f4806X.mo31022a(viewGroup, view), f4799Q, this);
    }

    /* renamed from: u0 */
    public void m31023u0(int i) {
        if (i == 3) {
            this.f4806X = f4800R;
        } else if (i == 5) {
            this.f4806X = f4803U;
        } else if (i == 48) {
            this.f4806X = f4802T;
        } else if (i == 80) {
            this.f4806X = f4805W;
        } else if (i == 8388611) {
            this.f4806X = f4801S;
        } else if (i != 8388613) {
            throw new IllegalArgumentException("Invalid slide direction");
        } else {
            this.f4806X = f4804V;
        }
        this.f4807Y = i;
        C1164s c1164s = new C1164s();
        c1164s.m30831j(i);
        mo30972i0(c1164s);
    }
}
