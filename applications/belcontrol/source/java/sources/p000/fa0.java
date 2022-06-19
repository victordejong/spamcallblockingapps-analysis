package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import carbon.widget.ProgressBar;
/* renamed from: fa0 */
/* loaded from: classes-dex2jar.jar:fa0.class */
public class fa0 {

    /* renamed from: fa0$a */
    /* loaded from: classes-dex2jar.jar:fa0$a.class */
    public static final class C1408a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public ColorMatrix f6554a = new ColorMatrix();

        /* renamed from: b */
        public ColorMatrix f6555b = new ColorMatrix();

        /* renamed from: c */
        public final /* synthetic */ ja0 f6556c;

        /* renamed from: d */
        public final /* synthetic */ AccelerateDecelerateInterpolator f6557d;

        public C1408a(ja0 ja0Var, AccelerateDecelerateInterpolator accelerateDecelerateInterpolator) {
            this.f6556c = ja0Var;
            this.f6557d = accelerateDecelerateInterpolator;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ImageView imageView = (ImageView) this.f6556c.b();
            float animatedFraction = this.f6556c.getAnimatedFraction();
            this.f6554a.setSaturation(((Float) this.f6556c.getAnimatedValue()).floatValue());
            float interpolation = 2.0f - this.f6557d.getInterpolation(Math.min((4.0f * animatedFraction) / 3.0f, 1.0f));
            this.f6555b.setScale(interpolation, interpolation, interpolation, 1.0f);
            this.f6554a.preConcat(this.f6555b);
            imageView.setColorFilter(new ColorMatrixColorFilter(this.f6554a));
            imageView.setAlpha(this.f6557d.getInterpolation(Math.min(animatedFraction * 2.0f, 1.0f)));
        }
    }

    /* renamed from: fa0$b */
    /* loaded from: classes-dex2jar.jar:fa0$b.class */
    public static final class C1409b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public ColorMatrix f6558a = new ColorMatrix();

        /* renamed from: b */
        public ColorMatrix f6559b = new ColorMatrix();

        /* renamed from: c */
        public final /* synthetic */ ja0 f6560c;

        /* renamed from: d */
        public final /* synthetic */ AccelerateDecelerateInterpolator f6561d;

        public C1409b(ja0 ja0Var, AccelerateDecelerateInterpolator accelerateDecelerateInterpolator) {
            this.f6560c = ja0Var;
            this.f6561d = accelerateDecelerateInterpolator;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ImageView imageView = (ImageView) this.f6560c.b();
            float animatedFraction = this.f6560c.getAnimatedFraction();
            this.f6558a.setSaturation(((Float) this.f6560c.getAnimatedValue()).floatValue());
            float f = 1.0f - animatedFraction;
            float interpolation = 2.0f - this.f6561d.getInterpolation(Math.min((4.0f * f) / 3.0f, 1.0f));
            this.f6559b.setScale(interpolation, interpolation, interpolation, 1.0f);
            this.f6558a.preConcat(this.f6559b);
            imageView.setColorFilter(new ColorMatrixColorFilter(this.f6558a));
            imageView.setAlpha(this.f6561d.getInterpolation(Math.min(f * 2.0f, 1.0f)));
        }
    }

    /* renamed from: fa0$c */
    /* loaded from: classes-dex2jar.jar:fa0$c.class */
    public static final class C1410c extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ValueAnimator f6562a;

        /* renamed from: b */
        public final /* synthetic */ ud0 f6563b;

        public C1410c(ValueAnimator valueAnimator, ud0 ud0Var) {
            this.f6562a = valueAnimator;
            this.f6563b = ud0Var;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f6562a.setFloatValues(this.f6563b.getTranslationZ(), this.f6563b.getResources().getDimension(j80.carbon_translationButton));
        }
    }

    /* renamed from: fa0$d */
    /* loaded from: classes-dex2jar.jar:fa0$d.class */
    public static final class C1411d extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ValueAnimator f6564a;

        /* renamed from: b */
        public final /* synthetic */ ud0 f6565b;

        public C1411d(ValueAnimator valueAnimator, ud0 ud0Var) {
            this.f6564a = valueAnimator;
            this.f6565b = ud0Var;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f6564a.setFloatValues(this.f6565b.getTranslationZ(), 0.0f);
        }
    }

    /* renamed from: fa0$e */
    /* loaded from: classes-dex2jar.jar:fa0$e.class */
    public static final class C1412e extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ValueAnimator f6566a;

        /* renamed from: b */
        public final /* synthetic */ ud0 f6567b;

        public C1412e(ValueAnimator valueAnimator, ud0 ud0Var) {
            this.f6566a = valueAnimator;
            this.f6567b = ud0Var;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f6566a.setFloatValues(this.f6567b.getElevation(), 0.0f);
        }
    }

    /* renamed from: fa0$f */
    /* loaded from: classes-dex2jar.jar:fa0$f.class */
    public static final class C1413f extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ValueAnimator f6568a;

        /* renamed from: b */
        public final /* synthetic */ ud0 f6569b;

        public C1413f(ValueAnimator valueAnimator, ud0 ud0Var) {
            this.f6568a = valueAnimator;
            this.f6569b = ud0Var;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f6568a.setFloatValues(this.f6569b.getTranslationZ(), -this.f6569b.getElevation());
        }
    }

    /* renamed from: fa0$g */
    /* loaded from: classes-dex2jar.jar:fa0$g.class */
    public interface AbstractC1414g {
        Animator getAnimator();
    }

    /* renamed from: fa0$h */
    /* loaded from: classes-dex2jar.jar:fa0$h.class */
    public enum EnumC1415h {
        None(d90.a, e90.a),
        Fade(aa0.a, z90.a),
        Pop(r80.a, w90.a),
        Fly(v90.a, ea0.a),
        Slide(y90.a, x90.a),
        BrightnessSaturationFade(ba0.a, ca0.a),
        ProgressWidth(da0.a, q80.a);
        

        /* renamed from: a */
        public AbstractC1414g f6578a;

        /* renamed from: b */
        public AbstractC1414g f6579b;

        EnumC1415h(AbstractC1414g abstractC1414g, AbstractC1414g abstractC1414g2) {
            this.f6578a = abstractC1414g;
            this.f6579b = abstractC1414g2;
        }

        /* renamed from: c */
        public static /* synthetic */ Animator m1867c() {
            return null;
        }

        /* renamed from: d */
        public static /* synthetic */ Animator m1866d() {
            return null;
        }

        /* renamed from: a */
        public Animator m1869a() {
            return this.f6578a.getAnimator();
        }

        /* renamed from: b */
        public Animator m1868b() {
            return this.f6579b.getAnimator();
        }
    }

    /* renamed from: A */
    public static /* synthetic */ void m1909A(ja0 ja0Var, ValueAnimator valueAnimator) {
        View b = ja0Var.b();
        b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        b.setScaleX(((Float) valueAnimator.getAnimatedValue()).floatValue());
        b.setScaleY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: B */
    public static /* synthetic */ void m1908B(ja0 ja0Var) {
        ProgressBar b = ja0Var.b();
        float barPadding = b.getBarPadding() + b.getBarWidth();
        float barWidth = b.getBarWidth();
        ja0Var.setFloatValues(b.getBarWidth(), barPadding);
        ja0Var.setDuration((barPadding - barWidth) * 100.0f);
    }

    /* renamed from: C */
    public static /* synthetic */ void m1907C(ja0 ja0Var, ValueAnimator valueAnimator) {
        ProgressBar b = ja0Var.b();
        float barPadding = b.getBarPadding();
        float barWidth = b.getBarWidth();
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        b.setBarWidth(floatValue);
        b.setBarPadding((barPadding + barWidth) - floatValue);
    }

    /* renamed from: D */
    public static /* synthetic */ void m1906D(ja0 ja0Var) {
        float barWidth = ja0Var.b().getBarWidth();
        ja0Var.setFloatValues(barWidth, 0.0f);
        ja0Var.setDuration(barWidth * 100.0f);
    }

    /* renamed from: E */
    public static /* synthetic */ void m1905E(ja0 ja0Var, ValueAnimator valueAnimator) {
        ProgressBar b = ja0Var.b();
        float barPadding = b.getBarPadding();
        float barWidth = b.getBarWidth();
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        b.setBarWidth(floatValue);
        b.setBarPadding((barPadding + barWidth) - floatValue);
    }

    /* renamed from: F */
    public static /* synthetic */ void m1904F(ja0 ja0Var) {
        View b = ja0Var.b();
        ja0Var.setFloatValues(b.getTranslationY(), 0.0f);
        int measuredHeight = b.getMeasuredHeight();
        ViewGroup.LayoutParams layoutParams = b.getLayoutParams();
        int i = measuredHeight;
        if (layoutParams != null) {
            i = measuredHeight;
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                i = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }
        }
        ja0Var.setDuration(Math.abs(b.getTranslationY() / i) * 200.0f);
    }

    /* renamed from: H */
    public static /* synthetic */ void m1902H(ja0 ja0Var, int i) {
        View b = ja0Var.b();
        int measuredHeight = b.getMeasuredHeight();
        ViewGroup.LayoutParams layoutParams = b.getLayoutParams();
        boolean z = (i & 80) == 80;
        int i2 = measuredHeight;
        if (layoutParams != null) {
            i2 = measuredHeight;
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                i2 = measuredHeight + (z ? marginLayoutParams.bottomMargin : marginLayoutParams.topMargin);
            }
        }
        ja0Var.setFloatValues(b.getTranslationY(), z ? i2 : -i2);
        ja0Var.setDuration((1.0f - Math.abs(b.getTranslationY() / i2)) * 200.0f);
    }

    /* renamed from: N */
    public static void m1896N(ia0 ia0Var, final ud0 ud0Var) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
        ofFloat.setDuration(200L);
        ofFloat.setInterpolator(new de());
        C1410c c1410c = new C1410c(ofFloat, ud0Var);
        ofFloat.addUpdateListener(new r90(ud0Var));
        ia0Var.c(new int[]{16842919}, ofFloat, c1410c);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 0.0f);
        ofFloat2.setDuration(200L);
        ofFloat2.setInterpolator(new de());
        C1411d c1411d = new C1411d(ofFloat2, ud0Var);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: f90
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ud0Var.setTranslationZ(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        ia0Var.c(new int[]{-16842919, 16842910}, ofFloat2, c1411d);
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 0.0f);
        ofFloat3.setDuration(200L);
        ofFloat3.setInterpolator(new de());
        C1412e c1412e = new C1412e(ofFloat3, ud0Var);
        ofFloat3.addUpdateListener(new n90(ud0Var));
        ia0Var.c(new int[]{16842910}, ofFloat3, c1412e);
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(0.0f, 0.0f);
        ofFloat4.setDuration(200L);
        ofFloat4.setInterpolator(new de());
        C1413f c1413f = new C1413f(ofFloat4, ud0Var);
        ofFloat4.addUpdateListener(new j90(ud0Var));
        ia0Var.c(new int[]{-16842910}, ofFloat4, c1413f);
    }

    /* renamed from: a */
    public static Animator m1895a() {
        ja0 ja0Var = new ja0();
        AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        ja0Var.setInterpolator(accelerateDecelerateInterpolator);
        ja0Var.c(new p90(ja0Var));
        ja0Var.addUpdateListener(new C1408a(ja0Var, accelerateDecelerateInterpolator));
        return ja0Var;
    }

    /* renamed from: b */
    public static Animator m1894b() {
        ja0 ja0Var = new ja0();
        AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        ja0Var.setInterpolator(accelerateDecelerateInterpolator);
        ja0Var.c(new s80(ja0Var));
        ja0Var.addUpdateListener(new C1409b(ja0Var, accelerateDecelerateInterpolator));
        return ja0Var;
    }

    /* renamed from: c */
    public static ValueAnimator m1893c() {
        ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new DecelerateInterpolator());
        ja0Var.c(new z80(ja0Var));
        ja0Var.addUpdateListener(new u80(ja0Var));
        return ja0Var;
    }

    /* renamed from: d */
    public static ValueAnimator m1892d() {
        ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new DecelerateInterpolator());
        ja0Var.c(new v80(ja0Var));
        ja0Var.addUpdateListener(new i90(ja0Var));
        return ja0Var;
    }

    /* renamed from: e */
    public static ValueAnimator m1891e() {
        ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new ee());
        ja0Var.c(new t80(ja0Var));
        ja0Var.addUpdateListener(new h90(ja0Var));
        return ja0Var;
    }

    /* renamed from: f */
    public static ValueAnimator m1890f() {
        final ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new ce());
        ja0Var.c(new m90(ja0Var));
        ja0Var.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c90
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                fa0.m1873w(ja0Var, valueAnimator);
            }
        });
        return ja0Var;
    }

    /* renamed from: g */
    public static Animator m1889g() {
        ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new DecelerateInterpolator());
        ja0Var.c(new k90(ja0Var));
        ja0Var.addUpdateListener(new o90(ja0Var));
        return ja0Var;
    }

    /* renamed from: h */
    public static Animator m1888h() {
        ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new DecelerateInterpolator());
        ja0Var.c(new g90(ja0Var));
        ja0Var.addUpdateListener(new l90(ja0Var));
        return ja0Var;
    }

    /* renamed from: i */
    public static ValueAnimator m1887i() {
        ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new ee());
        ja0Var.c(new t90(ja0Var));
        ja0Var.addUpdateListener(new q90(ja0Var));
        return ja0Var;
    }

    /* renamed from: j */
    public static Animator m1886j() {
        ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new ce());
        ja0Var.c(new w80(ja0Var));
        ja0Var.addUpdateListener(new x80(ja0Var));
        return ja0Var;
    }

    /* renamed from: k */
    public static ValueAnimator m1885k() {
        ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new ee());
        ja0Var.c(new s90(ja0Var));
        ja0Var.addUpdateListener(new y80(ja0Var));
        return ja0Var;
    }

    /* renamed from: l */
    public static ValueAnimator m1884l() {
        return m1883m(80);
    }

    /* renamed from: m */
    public static ValueAnimator m1883m(int i) {
        final ja0 ja0Var = new ja0();
        ja0Var.setInterpolator(new ce());
        ja0Var.c(new a90(ja0Var, i));
        ja0Var.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: b90
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ja0Var.b().setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ja0Var;
    }

    /* renamed from: n */
    public static /* synthetic */ void m1882n(ja0 ja0Var) {
        ja0Var.setFloatValues(0.0f, 1.0f);
        ja0Var.setDuration(800L);
    }

    /* renamed from: o */
    public static /* synthetic */ void m1881o(ja0 ja0Var) {
        ja0Var.setFloatValues(1.0f, 0.0f);
        ja0Var.setDuration(800L);
    }

    /* renamed from: p */
    public static /* synthetic */ void m1880p(ja0 ja0Var) {
        View b = ja0Var.b();
        if (b.getVisibility() != 0) {
            b.setAlpha(0.0f);
        }
        float alpha = b.getAlpha();
        ja0Var.setFloatValues(alpha, 1.0f);
        ja0Var.setDuration((1.0f - alpha) * 200.0f);
    }

    /* renamed from: r */
    public static /* synthetic */ void m1878r(ja0 ja0Var) {
        float alpha = ja0Var.b().getAlpha();
        ja0Var.setFloatValues(alpha, 0.0f);
        ja0Var.setDuration(alpha * 200.0f);
    }

    /* renamed from: t */
    public static /* synthetic */ void m1876t(ja0 ja0Var) {
        View b = ja0Var.b();
        if (b.getVisibility() != 0) {
            b.setAlpha(0.0f);
        }
        float alpha = b.getAlpha();
        ja0Var.setFloatValues(alpha, 1.0f);
        ja0Var.setDuration((1.0f - alpha) * 200.0f);
    }

    /* renamed from: u */
    public static /* synthetic */ void m1875u(ja0 ja0Var, ValueAnimator valueAnimator) {
        View b = ja0Var.b();
        b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        b.setTranslationY(Math.min(b.getHeight() / 2, b.getResources().getDimension(j80.carbon_1dip) * 50.0f) * (1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue()));
    }

    /* renamed from: v */
    public static /* synthetic */ void m1874v(ja0 ja0Var) {
        float alpha = ja0Var.b().getAlpha();
        ja0Var.setFloatValues(alpha, 0.0f);
        ja0Var.setDuration(alpha * 200.0f);
    }

    /* renamed from: w */
    public static /* synthetic */ void m1873w(ja0 ja0Var, ValueAnimator valueAnimator) {
        View b = ja0Var.b();
        b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        b.setTranslationY(Math.min(b.getHeight() / 2, b.getResources().getDimension(j80.carbon_1dip) * 50.0f) * (1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue()));
    }

    /* renamed from: x */
    public static /* synthetic */ void m1872x(ja0 ja0Var) {
        View b = ja0Var.b();
        if (b.getVisibility() != 0) {
            b.setAlpha(0.0f);
        }
        float alpha = b.getAlpha();
        ja0Var.setFloatValues(alpha, 1.0f);
        ja0Var.setDuration((1.0f - alpha) * 200.0f);
    }

    /* renamed from: y */
    public static /* synthetic */ void m1871y(ja0 ja0Var, ValueAnimator valueAnimator) {
        View b = ja0Var.b();
        b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        b.setScaleX(((Float) valueAnimator.getAnimatedValue()).floatValue());
        b.setScaleY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: z */
    public static /* synthetic */ void m1870z(ja0 ja0Var) {
        float alpha = ja0Var.b().getAlpha();
        ja0Var.setFloatValues(alpha, 0.0f);
        ja0Var.setDuration(alpha * 200.0f);
    }
}
