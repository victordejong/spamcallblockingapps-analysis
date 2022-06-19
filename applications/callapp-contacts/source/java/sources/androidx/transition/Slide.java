package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.core.content.res.C0810g;
import androidx.core.view.C0926v;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Slide.class */
public class Slide extends Visibility {

    /* renamed from: a */
    private static final TimeInterpolator f10736a = new DecelerateInterpolator();

    /* renamed from: k */
    private static final TimeInterpolator f10737k = new AccelerateInterpolator();

    /* renamed from: n */
    private static final AbstractC2841a f10738n = new AbstractC2842b() { // from class: androidx.transition.Slide.1
        @Override // androidx.transition.Slide.AbstractC2841a
        /* renamed from: a */
        public final float mo39815a(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - viewGroup.getWidth();
        }
    };

    /* renamed from: o */
    private static final AbstractC2841a f10739o = new AbstractC2842b() { // from class: androidx.transition.Slide.2
        @Override // androidx.transition.Slide.AbstractC2841a
        /* renamed from: a */
        public final float mo39815a(ViewGroup viewGroup, View view) {
            boolean z = true;
            if (C0926v.m44097f(viewGroup) != 1) {
                z = false;
            }
            return z ? view.getTranslationX() + viewGroup.getWidth() : view.getTranslationX() - viewGroup.getWidth();
        }
    };

    /* renamed from: p */
    private static final AbstractC2841a f10740p = new AbstractC2843c() { // from class: androidx.transition.Slide.3
        @Override // androidx.transition.Slide.AbstractC2841a
        /* renamed from: b */
        public final float mo39816b(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - viewGroup.getHeight();
        }
    };

    /* renamed from: q */
    private static final AbstractC2841a f10741q = new AbstractC2842b() { // from class: androidx.transition.Slide.4
        @Override // androidx.transition.Slide.AbstractC2841a
        /* renamed from: a */
        public final float mo39815a(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + viewGroup.getWidth();
        }
    };

    /* renamed from: r */
    private static final AbstractC2841a f10742r = new AbstractC2842b() { // from class: androidx.transition.Slide.5
        @Override // androidx.transition.Slide.AbstractC2841a
        /* renamed from: a */
        public final float mo39815a(ViewGroup viewGroup, View view) {
            boolean z = true;
            if (C0926v.m44097f(viewGroup) != 1) {
                z = false;
            }
            return z ? view.getTranslationX() - viewGroup.getWidth() : view.getTranslationX() + viewGroup.getWidth();
        }
    };

    /* renamed from: s */
    private static final AbstractC2841a f10743s = new AbstractC2843c() { // from class: androidx.transition.Slide.6
        @Override // androidx.transition.Slide.AbstractC2841a
        /* renamed from: b */
        public final float mo39816b(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + viewGroup.getHeight();
        }
    };

    /* renamed from: l */
    private AbstractC2841a f10744l = f10743s;

    /* renamed from: m */
    private int f10745m = 80;

    /* renamed from: androidx.transition.Slide$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$a.class */
    public interface AbstractC2841a {
        /* renamed from: a */
        float mo39815a(ViewGroup viewGroup, View view);

        /* renamed from: b */
        float mo39816b(ViewGroup viewGroup, View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.Slide$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$b.class */
    public static abstract class AbstractC2842b implements AbstractC2841a {
        private AbstractC2842b() {
        }

        @Override // androidx.transition.Slide.AbstractC2841a
        /* renamed from: b */
        public final float mo39816b(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.Slide$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$c.class */
    public static abstract class AbstractC2843c implements AbstractC2841a {
        private AbstractC2843c() {
        }

        @Override // androidx.transition.Slide.AbstractC2841a
        /* renamed from: a */
        public final float mo39815a(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    public Slide() {
        m39818b(80);
    }

    public Slide(int i) {
        m39818b(i);
    }

    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10914h);
        int m44454a = C0810g.m44454a(obtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        obtainStyledAttributes.recycle();
        m39818b(m44454a);
    }

    /* renamed from: b */
    private void m39818b(int i) {
        if (i == 3) {
            this.f10744l = f10738n;
        } else if (i == 5) {
            this.f10744l = f10741q;
        } else if (i == 48) {
            this.f10744l = f10740p;
        } else if (i == 80) {
            this.f10744l = f10743s;
        } else if (i == 8388611) {
            this.f10744l = f10739o;
        } else if (i != 8388613) {
            throw new IllegalArgumentException("Invalid slide direction");
        } else {
            this.f10744l = f10742r;
        }
        this.f10745m = i;
        C2905r c2905r = new C2905r();
        c2905r.f10905a = i;
        mo39784a(c2905r);
    }

    /* renamed from: d */
    private static void m39817d(C2914x c2914x) {
        int[] iArr = new int[2];
        c2914x.f10934b.getLocationOnScreen(iArr);
        c2914x.f10933a.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo39766a(ViewGroup viewGroup, View view, C2914x c2914x) {
        if (c2914x == null) {
            return null;
        }
        int[] iArr = (int[]) c2914x.f10933a.get("android:slide:screenPosition");
        return C2916z.m39673a(view, c2914x, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f10744l.mo39815a(viewGroup, view), this.f10744l.mo39816b(viewGroup, view), f10737k, this);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo39765a(ViewGroup viewGroup, View view, C2914x c2914x, C2914x c2914x2) {
        if (c2914x2 == null) {
            return null;
        }
        int[] iArr = (int[]) c2914x2.f10933a.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return C2916z.m39673a(view, c2914x2, iArr[0], iArr[1], this.f10744l.mo39815a(viewGroup, view), this.f10744l.mo39816b(viewGroup, view), translationX, translationY, f10736a, this);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        super.mo10513a(c2914x);
        m39817d(c2914x);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        super.mo10512b(c2914x);
        m39817d(c2914x);
    }
}
