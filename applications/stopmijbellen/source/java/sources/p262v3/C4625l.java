package p262v3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;
/* renamed from: v3.l */
/* loaded from: classes-dex2jar.jar:v3/l.class */
public final class C4625l {

    /* renamed from: a */
    public final ArrayList<C4627b> f14294a = new ArrayList<>();

    /* renamed from: b */
    public C4627b f14295b = null;

    /* renamed from: c */
    public ValueAnimator f14296c = null;

    /* renamed from: d */
    public final Animator.AnimatorListener f14297d = new C4626a();

    /* renamed from: v3.l$a */
    /* loaded from: classes-dex2jar.jar:v3/l$a.class */
    public class C4626a extends AnimatorListenerAdapter {
        public C4626a() {
            C4625l.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C4625l c4625l = C4625l.this;
            if (c4625l.f14296c == animator) {
                c4625l.f14296c = null;
            }
        }
    }

    /* renamed from: v3.l$b */
    /* loaded from: classes-dex2jar.jar:v3/l$b.class */
    public static class C4627b {

        /* renamed from: a */
        public final int[] f14299a;

        /* renamed from: b */
        public final ValueAnimator f14300b;

        public C4627b(int[] iArr, ValueAnimator valueAnimator) {
            this.f14299a = iArr;
            this.f14300b = valueAnimator;
        }
    }

    /* renamed from: a */
    public void m694a(int[] iArr, ValueAnimator valueAnimator) {
        C4627b c4627b = new C4627b(iArr, valueAnimator);
        valueAnimator.addListener(this.f14297d);
        this.f14294a.add(c4627b);
    }
}
