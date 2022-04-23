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
import androidx.core.content.res.g;
import androidx.core.view.v;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Slide.class */
public class Slide extends Visibility {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeInterpolator f5729a = new DecelerateInterpolator();
    private static final TimeInterpolator k = new AccelerateInterpolator();
    private static final a n = new b() { // from class: androidx.transition.Slide.1
        @Override // androidx.transition.Slide.a
        public final float a(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - viewGroup.getWidth();
        }
    };
    private static final a o = new b() { // from class: androidx.transition.Slide.2
        @Override // androidx.transition.Slide.a
        public final float a(ViewGroup viewGroup, View view) {
            boolean z = true;
            if (v.f(viewGroup) != 1) {
                z = false;
            }
            return z ? view.getTranslationX() + viewGroup.getWidth() : view.getTranslationX() - viewGroup.getWidth();
        }
    };
    private static final a p = new c() { // from class: androidx.transition.Slide.3
        @Override // androidx.transition.Slide.a
        public final float b(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - viewGroup.getHeight();
        }
    };
    private static final a q = new b() { // from class: androidx.transition.Slide.4
        @Override // androidx.transition.Slide.a
        public final float a(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + viewGroup.getWidth();
        }
    };
    private static final a r = new b() { // from class: androidx.transition.Slide.5
        @Override // androidx.transition.Slide.a
        public final float a(ViewGroup viewGroup, View view) {
            boolean z = true;
            if (v.f(viewGroup) != 1) {
                z = false;
            }
            return z ? view.getTranslationX() - viewGroup.getWidth() : view.getTranslationX() + viewGroup.getWidth();
        }
    };
    private static final a s = new c() { // from class: androidx.transition.Slide.6
        @Override // androidx.transition.Slide.a
        public final float b(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + viewGroup.getHeight();
        }
    };
    private a l = s;
    private int m = 80;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$a.class */
    public interface a {
        float a(ViewGroup viewGroup, View view);

        float b(ViewGroup viewGroup, View view);
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$b.class */
    static abstract class b implements a {
        private b() {
        }

        @Override // androidx.transition.Slide.a
        public final float b(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$c.class */
    static abstract class c implements a {
        private c() {
        }

        @Override // androidx.transition.Slide.a
        public final float a(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    public Slide() {
        b(80);
    }

    public Slide(int i) {
        b(i);
    }

    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.h);
        int a2 = g.a(obtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        obtainStyledAttributes.recycle();
        b(a2);
    }

    private void b(int i) {
        if (i == 3) {
            this.l = n;
        } else if (i == 5) {
            this.l = q;
        } else if (i == 48) {
            this.l = p;
        } else if (i == 80) {
            this.l = s;
        } else if (i == 8388611) {
            this.l = o;
        } else if (i == 8388613) {
            this.l = r;
        } else {
            throw new IllegalArgumentException("Invalid slide direction");
        }
        this.m = i;
        r rVar = new r();
        rVar.f5832a = i;
        a(rVar);
    }

    private static void d(x xVar) {
        int[] iArr = new int[2];
        xVar.f5853b.getLocationOnScreen(iArr);
        xVar.f5852a.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, x xVar) {
        if (xVar == null) {
            return null;
        }
        int[] iArr = (int[]) xVar.f5852a.get("android:slide:screenPosition");
        return z.a(view, xVar, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.l.a(viewGroup, view), this.l.b(viewGroup, view), k, this);
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, x xVar, x xVar2) {
        if (xVar2 == null) {
            return null;
        }
        int[] iArr = (int[]) xVar2.f5852a.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return z.a(view, xVar2, iArr[0], iArr[1], this.l.a(viewGroup, view), this.l.b(viewGroup, view), translationX, translationY, f5729a, this);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void a(x xVar) {
        super.a(xVar);
        d(xVar);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void b(x xVar) {
        super.b(xVar);
        d(xVar);
    }
}
