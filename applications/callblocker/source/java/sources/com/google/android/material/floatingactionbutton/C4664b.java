package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p025g.C0527f;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4694f;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p142a.C4506b;
import com.google.android.material.p142a.C4510f;
import com.google.android.material.p142a.C4511g;
import com.google.android.material.p142a.C4512h;
import com.google.android.material.p157o.C4724a;
import com.google.android.material.p157o.C4727b;
import com.google.android.material.p158p.AbstractC4729b;
import com.google.android.material.p159q.AbstractC4758n;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4740h;
import com.google.android.material.p159q.C4743k;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.google.android.material.floatingactionbutton.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b.class */
public class C4664b {

    /* renamed from: a */
    static final TimeInterpolator f20231a = C4505a.f19571c;

    /* renamed from: m */
    static final int[] f20232m = {16842919, 16842910};

    /* renamed from: n */
    static final int[] f20233n = {16843623, 16842908, 16842910};

    /* renamed from: o */
    static final int[] f20234o = {16842908, 16842910};

    /* renamed from: p */
    static final int[] f20235p = {16843623, 16842910};

    /* renamed from: q */
    static final int[] f20236q = {16842910};

    /* renamed from: r */
    static final int[] f20237r = new int[0];

    /* renamed from: A */
    private float f20238A;

    /* renamed from: C */
    private int f20240C;

    /* renamed from: E */
    private ArrayList<Animator.AnimatorListener> f20242E;

    /* renamed from: F */
    private ArrayList<Animator.AnimatorListener> f20243F;

    /* renamed from: G */
    private ArrayList<AbstractC4673d> f20244G;

    /* renamed from: L */
    private ViewTreeObserver.OnPreDrawListener f20249L;

    /* renamed from: b */
    C4743k f20250b;

    /* renamed from: c */
    C4736g f20251c;

    /* renamed from: d */
    Drawable f20252d;

    /* renamed from: e */
    C4661a f20253e;

    /* renamed from: f */
    Drawable f20254f;

    /* renamed from: g */
    boolean f20255g;

    /* renamed from: i */
    float f20257i;

    /* renamed from: j */
    float f20258j;

    /* renamed from: k */
    float f20259k;

    /* renamed from: l */
    int f20260l;

    /* renamed from: s */
    final FloatingActionButton f20261s;

    /* renamed from: t */
    final AbstractC4729b f20262t;

    /* renamed from: v */
    private C4512h f20264v;

    /* renamed from: w */
    private C4512h f20265w;

    /* renamed from: x */
    private Animator f20266x;

    /* renamed from: y */
    private C4512h f20267y;

    /* renamed from: z */
    private C4512h f20268z;

    /* renamed from: h */
    boolean f20256h = true;

    /* renamed from: B */
    private float f20239B = 1.0f;

    /* renamed from: D */
    private int f20241D = 0;

    /* renamed from: H */
    private final Rect f20245H = new Rect();

    /* renamed from: I */
    private final RectF f20246I = new RectF();

    /* renamed from: J */
    private final RectF f20247J = new RectF();

    /* renamed from: K */
    private final Matrix f20248K = new Matrix();

    /* renamed from: u */
    private final C4694f f20263u = new C4694f();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$a.class */
    public class C4670a extends AbstractC4676g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4670a() {
            super();
            C4664b.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C4664b.AbstractC4676g
        /* renamed from: a */
        protected float mo2949a() {
            return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$b.class */
    public class C4671b extends AbstractC4676g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4671b() {
            super();
            C4664b.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C4664b.AbstractC4676g
        /* renamed from: a */
        protected float mo2949a() {
            return C4664b.this.f20257i + C4664b.this.f20258j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$c.class */
    public class C4672c extends AbstractC4676g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4672c() {
            super();
            C4664b.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C4664b.AbstractC4676g
        /* renamed from: a */
        protected float mo2949a() {
            return C4664b.this.f20257i + C4664b.this.f20259k;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.b$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$d.class */
    public interface AbstractC4673d {
        /* renamed from: a */
        void mo2953a();

        /* renamed from: b */
        void mo2952b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.b$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$e.class */
    public interface AbstractC4674e {
        /* renamed from: a */
        void mo2951a();

        /* renamed from: b */
        void mo2950b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.b$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$f.class */
    public class C4675f extends AbstractC4676g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4675f() {
            super();
            C4664b.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C4664b.AbstractC4676g
        /* renamed from: a */
        protected float mo2949a() {
            return C4664b.this.f20257i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.b$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$g.class */
    public abstract class AbstractC4676g extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        private boolean f20284a;

        /* renamed from: c */
        private float f20286c;

        /* renamed from: d */
        private float f20287d;

        private AbstractC4676g() {
            C4664b.this = r4;
        }

        /* renamed from: a */
        protected abstract float mo2949a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C4664b.this.m2971e((int) this.f20287d);
            this.f20284a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f20284a) {
                this.f20286c = C4664b.this.f20251c == null ? 0.0f : C4664b.this.f20251c.m2736S();
                this.f20287d = mo2949a();
                this.f20284a = true;
            }
            C4664b.this.m2971e((int) (this.f20286c + ((this.f20287d - this.f20286c) * valueAnimator.getAnimatedFraction())));
        }
    }

    public C4664b(FloatingActionButton floatingActionButton, AbstractC4729b abstractC4729b) {
        this.f20261s = floatingActionButton;
        this.f20262t = abstractC4729b;
        this.f20263u.m2845a(f20232m, m2990a((AbstractC4676g) new C4672c()));
        this.f20263u.m2845a(f20233n, m2990a((AbstractC4676g) new C4671b()));
        this.f20263u.m2845a(f20234o, m2990a((AbstractC4676g) new C4671b()));
        this.f20263u.m2845a(f20235p, m2990a((AbstractC4676g) new C4671b()));
        this.f20263u.m2845a(f20236q, m2990a((AbstractC4676g) new C4675f()));
        this.f20263u.m2845a(f20237r, m2990a((AbstractC4676g) new C4670a()));
        this.f20238A = this.f20261s.getRotation();
    }

    /* renamed from: A */
    private ViewTreeObserver.OnPreDrawListener m3003A() {
        if (this.f20249L == null) {
            this.f20249L = new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.floatingactionbutton.b.5
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    C4664b.this.m2960t();
                    return true;
                }
            };
        }
        return this.f20249L;
    }

    /* renamed from: B */
    private boolean m3002B() {
        return C0595u.m20299y(this.f20261s) && !this.f20261s.isInEditMode();
    }

    /* renamed from: a */
    private AnimatorSet m2993a(C4512h c4512h, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f20261s, View.ALPHA, f);
        c4512h.m3837b("opacity").m3835a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f20261s, View.SCALE_X, f2);
        c4512h.m3837b("scale").m3835a((Animator) ofFloat2);
        m2997a(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f20261s, View.SCALE_Y, f2);
        c4512h.m3837b("scale").m3835a((Animator) ofFloat3);
        m2997a(ofFloat3);
        arrayList.add(ofFloat3);
        m3000a(f3, this.f20248K);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f20261s, new C4510f(), new C4511g() { // from class: com.google.android.material.floatingactionbutton.b.3
            @Override // com.google.android.material.p142a.C4511g
            /* renamed from: a */
            public Matrix evaluate(float f4, Matrix matrix, Matrix matrix2) {
                C4664b.this.f20239B = f4;
                return super.evaluate(f4, matrix, matrix2);
            }
        }, new Matrix(this.f20248K));
        c4512h.m3837b("iconScale").m3835a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C4506b.m3854a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: a */
    private ValueAnimator m2990a(AbstractC4676g abstractC4676g) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f20231a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(abstractC4676g);
        valueAnimator.addUpdateListener(abstractC4676g);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: a */
    private void m3000a(float f, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f20261s.getDrawable();
        if (drawable == null || this.f20240C == 0) {
            return;
        }
        RectF rectF = this.f20246I;
        RectF rectF2 = this.f20247J;
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        rectF2.set(0.0f, 0.0f, this.f20240C, this.f20240C);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        matrix.postScale(f, f, this.f20240C / 2.0f, this.f20240C / 2.0f);
    }

    /* renamed from: a */
    private void m2997a(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new TypeEvaluator<Float>() { // from class: com.google.android.material.floatingactionbutton.b.4

            /* renamed from: a */
            FloatEvaluator f20277a = new FloatEvaluator();

            /* renamed from: a */
            public Float evaluate(float f, Float f2, Float f3) {
                float floatValue = this.f20277a.evaluate(f, (Number) f2, (Number) f3).floatValue();
                float f4 = floatValue;
                if (floatValue < 0.1f) {
                    f4 = 0.0f;
                }
                return Float.valueOf(f4);
            }
        });
    }

    /* renamed from: y */
    private C4512h m2957y() {
        if (this.f20264v == null) {
            this.f20264v = C4512h.m3844a(this.f20261s.getContext(), C4492a.C4493a.design_fab_show_motion_spec);
        }
        return (C4512h) C0527f.m20644a(this.f20264v);
    }

    /* renamed from: z */
    private C4512h m2956z() {
        if (this.f20265w == null) {
            this.f20265w = C4512h.m3844a(this.f20261s.getContext(), C4492a.C4493a.design_fab_hide_motion_spec);
        }
        return (C4512h) C0527f.m20644a(this.f20265w);
    }

    /* renamed from: a */
    public float mo2948a() {
        return this.f20257i;
    }

    /* renamed from: a */
    public final void m3001a(float f) {
        if (this.f20257i != f) {
            this.f20257i = f;
            mo2946a(this.f20257i, this.f20258j, this.f20259k);
        }
    }

    /* renamed from: a */
    void mo2946a(float f, float f2, float f3) {
        m2963o();
        m2971e(f);
    }

    /* renamed from: a */
    public void m2999a(int i) {
        this.f20260l = i;
    }

    /* renamed from: a */
    public void m2998a(Animator.AnimatorListener animatorListener) {
        if (this.f20242E == null) {
            this.f20242E = new ArrayList<>();
        }
        this.f20242E.add(animatorListener);
    }

    /* renamed from: a */
    public void m2996a(ColorStateList colorStateList) {
        if (this.f20251c != null) {
            this.f20251c.setTintList(colorStateList);
        }
        if (this.f20253e != null) {
            this.f20253e.m3006a(colorStateList);
        }
    }

    /* renamed from: a */
    public void mo2944a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        this.f20251c = mo2936u();
        this.f20251c.setTintList(colorStateList);
        if (mode != null) {
            this.f20251c.setTintMode(mode);
        }
        this.f20251c.m2744D(-12303292);
        this.f20251c.m2722a(this.f20261s.getContext());
        C4724a c4724a = new C4724a(this.f20251c.m2743L());
        c4724a.setTintList(C4727b.m2756b(colorStateList2));
        this.f20252d = c4724a;
        this.f20254f = new LayerDrawable(new Drawable[]{(Drawable) C0527f.m20644a(this.f20251c), c4724a});
    }

    /* renamed from: a */
    public void m2995a(PorterDuff.Mode mode) {
        if (this.f20251c != null) {
            this.f20251c.setTintMode(mode);
        }
    }

    /* renamed from: a */
    public void mo2943a(Rect rect) {
        int sizeDimension = this.f20255g ? (this.f20260l - this.f20261s.getSizeDimension()) / 2 : 0;
        float mo2948a = this.f20256h ? mo2948a() + this.f20259k : 0.0f;
        int max = Math.max(sizeDimension, (int) Math.ceil(mo2948a));
        int max2 = Math.max(sizeDimension, (int) Math.ceil(mo2948a * 1.5f));
        rect.set(max, max2, max, max2);
    }

    /* renamed from: a */
    public final void m2994a(C4512h c4512h) {
        this.f20267y = c4512h;
    }

    /* renamed from: a */
    public void m2992a(AbstractC4673d abstractC4673d) {
        if (this.f20244G == null) {
            this.f20244G = new ArrayList<>();
        }
        this.f20244G.add(abstractC4673d);
    }

    /* renamed from: a */
    public void m2991a(final AbstractC4674e abstractC4674e, final boolean z) {
        if (m2958w()) {
            return;
        }
        if (this.f20266x != null) {
            this.f20266x.cancel();
        }
        if (!m3002B()) {
            this.f20261s.m2809a(z ? 8 : 4, z);
            if (abstractC4674e == null) {
                return;
            }
            abstractC4674e.mo2950b();
            return;
        }
        AnimatorSet m2993a = m2993a(this.f20268z != null ? this.f20268z : m2956z(), 0.0f, 0.0f, 0.0f);
        m2993a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.b.1

            /* renamed from: d */
            private boolean f20272d;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.f20272d = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C4664b.this.f20241D = 0;
                C4664b.this.f20266x = null;
                if (!this.f20272d) {
                    C4664b.this.f20261s.m2809a(z ? 8 : 4, z);
                    if (abstractC4674e == null) {
                        return;
                    }
                    abstractC4674e.mo2950b();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C4664b.this.f20261s.m2809a(0, z);
                C4664b.this.f20241D = 1;
                C4664b.this.f20266x = animator;
                this.f20272d = false;
            }
        });
        if (this.f20243F != null) {
            Iterator<Animator.AnimatorListener> it = this.f20243F.iterator();
            while (it.hasNext()) {
                m2993a.addListener(it.next());
            }
        }
        m2993a.start();
    }

    /* renamed from: a */
    public final void m2986a(C4743k c4743k) {
        this.f20250b = c4743k;
        if (this.f20251c != null) {
            this.f20251c.setShapeAppearanceModel(c4743k);
        }
        if (this.f20252d instanceof AbstractC4758n) {
            ((AbstractC4758n) this.f20252d).setShapeAppearanceModel(c4743k);
        }
        if (this.f20253e != null) {
            this.f20253e.m3005a(c4743k);
        }
    }

    /* renamed from: a */
    public void m2985a(boolean z) {
        this.f20255g = z;
    }

    /* renamed from: a */
    public void mo2942a(int[] iArr) {
        this.f20263u.m2846a(iArr);
    }

    /* renamed from: b */
    public float m2984b() {
        return this.f20258j;
    }

    /* renamed from: b */
    public final void m2983b(float f) {
        if (this.f20258j != f) {
            this.f20258j = f;
            mo2946a(this.f20257i, this.f20258j, this.f20259k);
        }
    }

    /* renamed from: b */
    public final void m2982b(int i) {
        if (this.f20240C != i) {
            this.f20240C = i;
            m2974d();
        }
    }

    /* renamed from: b */
    public void m2981b(Animator.AnimatorListener animatorListener) {
        if (this.f20243F == null) {
            this.f20243F = new ArrayList<>();
        }
        this.f20243F.add(animatorListener);
    }

    /* renamed from: b */
    public void mo2941b(ColorStateList colorStateList) {
        if (this.f20252d != null) {
            C0535a.m20595a(this.f20252d, C4727b.m2756b(colorStateList));
        }
    }

    /* renamed from: b */
    void m2980b(Rect rect) {
        C0527f.m20643a(this.f20254f, "Didn't initialize content background");
        if (!mo2938p()) {
            this.f20262t.mo2749a(this.f20254f);
            return;
        }
        this.f20262t.mo2749a(new InsetDrawable(this.f20254f, rect.left, rect.top, rect.right, rect.bottom));
    }

    /* renamed from: b */
    public final void m2979b(C4512h c4512h) {
        this.f20268z = c4512h;
    }

    /* renamed from: b */
    public void m2978b(final AbstractC4674e abstractC4674e, final boolean z) {
        if (m2959v()) {
            return;
        }
        if (this.f20266x != null) {
            this.f20266x.cancel();
        }
        if (!m3002B()) {
            this.f20261s.m2809a(0, z);
            this.f20261s.setAlpha(1.0f);
            this.f20261s.setScaleY(1.0f);
            this.f20261s.setScaleX(1.0f);
            m2973d(1.0f);
            if (abstractC4674e == null) {
                return;
            }
            abstractC4674e.mo2951a();
            return;
        }
        if (this.f20261s.getVisibility() != 0) {
            this.f20261s.setAlpha(0.0f);
            this.f20261s.setScaleY(0.0f);
            this.f20261s.setScaleX(0.0f);
            m2973d(0.0f);
        }
        AnimatorSet m2993a = m2993a(this.f20267y != null ? this.f20267y : m2957y(), 1.0f, 1.0f, 1.0f);
        m2993a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.b.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C4664b.this.f20241D = 0;
                C4664b.this.f20266x = null;
                if (abstractC4674e != null) {
                    abstractC4674e.mo2951a();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C4664b.this.f20261s.m2809a(0, z);
                C4664b.this.f20241D = 2;
                C4664b.this.f20266x = animator;
            }
        });
        if (this.f20242E != null) {
            Iterator<Animator.AnimatorListener> it = this.f20242E.iterator();
            while (it.hasNext()) {
                m2993a.addListener(it.next());
            }
        }
        m2993a.start();
    }

    /* renamed from: b */
    public void m2977b(boolean z) {
        this.f20256h = z;
        m2963o();
    }

    /* renamed from: c */
    public float m2976c() {
        return this.f20259k;
    }

    /* renamed from: c */
    public final void m2975c(float f) {
        if (this.f20259k != f) {
            this.f20259k = f;
            mo2946a(this.f20257i, this.f20258j, this.f20259k);
        }
    }

    /* renamed from: d */
    public final void m2974d() {
        m2973d(this.f20239B);
    }

    /* renamed from: d */
    final void m2973d(float f) {
        this.f20239B = f;
        Matrix matrix = this.f20248K;
        m3000a(f, matrix);
        this.f20261s.setImageMatrix(matrix);
    }

    /* renamed from: e */
    public final C4743k m2972e() {
        return this.f20250b;
    }

    /* renamed from: e */
    public void m2971e(float f) {
        if (this.f20251c != null) {
            this.f20251c.m2687r(f);
        }
    }

    /* renamed from: f */
    public final C4512h m2970f() {
        return this.f20267y;
    }

    /* renamed from: g */
    public final C4512h m2969g() {
        return this.f20268z;
    }

    /* renamed from: h */
    public final boolean m2968h() {
        return !this.f20255g || this.f20261s.getSizeDimension() >= this.f20260l;
    }

    /* renamed from: i */
    public boolean m2967i() {
        return this.f20255g;
    }

    /* renamed from: j */
    public void mo2940j() {
        this.f20263u.m2848a();
    }

    /* renamed from: k */
    public void m2966k() {
        if (this.f20244G != null) {
            Iterator<AbstractC4673d> it = this.f20244G.iterator();
            while (it.hasNext()) {
                it.next().mo2953a();
            }
        }
    }

    /* renamed from: l */
    public void m2965l() {
        if (this.f20244G != null) {
            Iterator<AbstractC4673d> it = this.f20244G.iterator();
            while (it.hasNext()) {
                it.next().mo2952b();
            }
        }
    }

    /* renamed from: m */
    public final Drawable m2964m() {
        return this.f20254f;
    }

    /* renamed from: n */
    public void mo2939n() {
    }

    /* renamed from: o */
    public final void m2963o() {
        Rect rect = this.f20245H;
        mo2943a(rect);
        m2980b(rect);
        this.f20262t.mo2750a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: p */
    boolean mo2938p() {
        return true;
    }

    /* renamed from: q */
    public void m2962q() {
        if (this.f20251c != null) {
            C4740h.m2682a(this.f20261s, this.f20251c);
        }
        if (mo2937s()) {
            this.f20261s.getViewTreeObserver().addOnPreDrawListener(m3003A());
        }
    }

    /* renamed from: r */
    public void m2961r() {
        ViewTreeObserver viewTreeObserver = this.f20261s.getViewTreeObserver();
        if (this.f20249L != null) {
            viewTreeObserver.removeOnPreDrawListener(this.f20249L);
            this.f20249L = null;
        }
    }

    /* renamed from: s */
    boolean mo2937s() {
        return true;
    }

    /* renamed from: t */
    void m2960t() {
        float rotation = this.f20261s.getRotation();
        if (this.f20238A != rotation) {
            this.f20238A = rotation;
            mo2935x();
        }
    }

    /* renamed from: u */
    C4736g mo2936u() {
        return new C4736g((C4743k) C0527f.m20644a(this.f20250b));
    }

    /* renamed from: v */
    public boolean m2959v() {
        boolean z = true;
        if (this.f20261s.getVisibility() != 0) {
            if (this.f20241D != 2) {
                z = false;
            }
        } else if (this.f20241D == 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: w */
    public boolean m2958w() {
        boolean z = true;
        if (this.f20261s.getVisibility() == 0) {
            if (this.f20241D != 1) {
                z = false;
            }
        } else if (this.f20241D == 2) {
            z = false;
        }
        return z;
    }

    /* renamed from: x */
    void mo2935x() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f20238A % 90.0f != 0.0f) {
                if (this.f20261s.getLayerType() != 1) {
                    this.f20261s.setLayerType(1, null);
                }
            } else if (this.f20261s.getLayerType() != 0) {
                this.f20261s.setLayerType(0, null);
            }
        }
        if (this.f20251c != null) {
            this.f20251c.m2745C((int) this.f20238A);
        }
    }
}
