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
import androidx.core.graphics.drawable.C0615a;
import com.google.android.material.internal.C8194h;
import java.util.ArrayList;
import java.util.Iterator;
import p020b.p041h.p049k.C1597h;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1885a;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p097m.C1898b;
import p078c.p084c.p085a.p096b.p097m.C1902f;
import p078c.p084c.p085a.p096b.p097m.C1903g;
import p078c.p084c.p085a.p096b.p097m.C1904h;
import p078c.p084c.p085a.p096b.p106v.C1925a;
import p078c.p084c.p085a.p096b.p106v.C1928b;
import p078c.p084c.p085a.p096b.p107w.AbstractC1930b;
import p078c.p084c.p085a.p096b.p108x.AbstractC1962p;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1942i;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* renamed from: com.google.android.material.floatingactionbutton.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d.class */
public class C8149d {

    /* renamed from: a */
    static final TimeInterpolator f36792a = C1897a.f6815c;

    /* renamed from: b */
    static final int[] f36793b = {16842919, 16842910};

    /* renamed from: c */
    static final int[] f36794c = {16843623, 16842908, 16842910};

    /* renamed from: d */
    static final int[] f36795d = {16842908, 16842910};

    /* renamed from: e */
    static final int[] f36796e = {16843623, 16842910};

    /* renamed from: f */
    static final int[] f36797f = {16842910};

    /* renamed from: g */
    static final int[] f36798g = new int[0];

    /* renamed from: A */
    private int f36799A;

    /* renamed from: C */
    private ArrayList<Animator.AnimatorListener> f36801C;

    /* renamed from: D */
    private ArrayList<Animator.AnimatorListener> f36802D;

    /* renamed from: E */
    private ArrayList<AbstractC8158i> f36803E;

    /* renamed from: F */
    final FloatingActionButton f36804F;

    /* renamed from: G */
    final AbstractC1930b f36805G;

    /* renamed from: L */
    private ViewTreeObserver.OnPreDrawListener f36810L;

    /* renamed from: h */
    C1946m f36811h;

    /* renamed from: i */
    C1938h f36812i;

    /* renamed from: j */
    Drawable f36813j;

    /* renamed from: k */
    C8146c f36814k;

    /* renamed from: l */
    Drawable f36815l;

    /* renamed from: m */
    boolean f36816m;

    /* renamed from: o */
    float f36818o;

    /* renamed from: p */
    float f36819p;

    /* renamed from: q */
    float f36820q;

    /* renamed from: r */
    int f36821r;

    /* renamed from: s */
    private final C8194h f36822s;

    /* renamed from: t */
    private C1904h f36823t;

    /* renamed from: u */
    private C1904h f36824u;

    /* renamed from: v */
    private Animator f36825v;

    /* renamed from: w */
    private C1904h f36826w;

    /* renamed from: x */
    private C1904h f36827x;

    /* renamed from: y */
    private float f36828y;

    /* renamed from: n */
    boolean f36817n = true;

    /* renamed from: z */
    private float f36829z = 1.0f;

    /* renamed from: B */
    private int f36800B = 0;

    /* renamed from: H */
    private final Rect f36806H = new Rect();

    /* renamed from: I */
    private final RectF f36807I = new RectF();

    /* renamed from: J */
    private final RectF f36808J = new RectF();

    /* renamed from: K */
    private final Matrix f36809K = new Matrix();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$a.class */
    public class C8150a extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f36830a;

        /* renamed from: b */
        final /* synthetic */ boolean f36831b;

        /* renamed from: c */
        final /* synthetic */ AbstractC8159j f36832c;

        C8150a(boolean z, AbstractC8159j abstractC8159j) {
            C8149d.this = r4;
            this.f36831b = z;
            this.f36832c = abstractC8159j;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f36830a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C8149d.this.f36800B = 0;
            C8149d.this.f36825v = null;
            if (!this.f36830a) {
                FloatingActionButton floatingActionButton = C8149d.this.f36804F;
                boolean z = this.f36831b;
                floatingActionButton.m4623b(z ? 8 : 4, z);
                AbstractC8159j abstractC8159j = this.f36832c;
                if (abstractC8159j == null) {
                    return;
                }
                abstractC8159j.mo4689b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C8149d.this.f36804F.m4623b(0, this.f36831b);
            C8149d.this.f36800B = 1;
            C8149d.this.f36825v = animator;
            this.f36830a = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$b.class */
    public class C8151b extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ boolean f36834a;

        /* renamed from: b */
        final /* synthetic */ AbstractC8159j f36835b;

        C8151b(boolean z, AbstractC8159j abstractC8159j) {
            C8149d.this = r4;
            this.f36834a = z;
            this.f36835b = abstractC8159j;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C8149d.this.f36800B = 0;
            C8149d.this.f36825v = null;
            AbstractC8159j abstractC8159j = this.f36835b;
            if (abstractC8159j != null) {
                abstractC8159j.mo4690a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C8149d.this.f36804F.m4623b(0, this.f36834a);
            C8149d.this.f36800B = 2;
            C8149d.this.f36825v = animator;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$c.class */
    public class C8152c extends C1903g {
        C8152c() {
            C8149d.this = r4;
        }

        @Override // p078c.p084c.p085a.p096b.p097m.C1903g
        /* renamed from: a */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            C8149d.this.f36829z = f;
            return super.mo4694a(f, matrix, matrix2);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$d.class */
    public class C8153d implements TypeEvaluator<Float> {

        /* renamed from: a */
        FloatEvaluator f36838a = new FloatEvaluator();

        C8153d() {
            C8149d.this = r5;
        }

        /* renamed from: a */
        public Float evaluate(float f, Float f2, Float f3) {
            float floatValue = this.f36838a.evaluate(f, (Number) f2, (Number) f3).floatValue();
            float f4 = floatValue;
            if (floatValue < 0.1f) {
                f4 = 0.0f;
            }
            return Float.valueOf(f4);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$e.class */
    public class ViewTreeObserver$OnPreDrawListenerC8154e implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC8154e() {
            C8149d.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C8149d.this.m4739H();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$f.class */
    public class C8155f extends AbstractC8161l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8155f() {
            super(r5, null);
            C8149d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C8149d.AbstractC8161l
        /* renamed from: a */
        protected float mo4688a() {
            return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$g.class */
    public class C8156g extends AbstractC8161l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8156g() {
            super(r5, null);
            C8149d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C8149d.AbstractC8161l
        /* renamed from: a */
        protected float mo4688a() {
            C8149d c8149d = C8149d.this;
            return c8149d.f36818o + c8149d.f36819p;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$h.class */
    public class C8157h extends AbstractC8161l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8157h() {
            super(r5, null);
            C8149d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C8149d.AbstractC8161l
        /* renamed from: a */
        protected float mo4688a() {
            C8149d c8149d = C8149d.this;
            return c8149d.f36818o + c8149d.f36820q;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$i.class */
    public interface AbstractC8158i {
        /* renamed from: a */
        void mo4692a();

        /* renamed from: b */
        void mo4691b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$j */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$j.class */
    public interface AbstractC8159j {
        /* renamed from: a */
        void mo4690a();

        /* renamed from: b */
        void mo4689b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$k */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$k.class */
    public class C8160k extends AbstractC8161l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8160k() {
            super(r5, null);
            C8149d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C8149d.AbstractC8161l
        /* renamed from: a */
        protected float mo4688a() {
            return C8149d.this.f36818o;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$l */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/d$l.class */
    public abstract class AbstractC8161l extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        private boolean f36845a;

        /* renamed from: b */
        private float f36846b;

        /* renamed from: c */
        private float f36847c;

        private AbstractC8161l() {
            C8149d.this = r4;
        }

        /* synthetic */ AbstractC8161l(C8149d c8149d, C8150a c8150a) {
            this();
        }

        /* renamed from: a */
        protected abstract float mo4688a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C8149d.this.m4711g0((int) this.f36847c);
            this.f36845a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f36845a) {
                C1938h c1938h = C8149d.this.f36812i;
                this.f36846b = c1938h == null ? 0.0f : c1938h.m28588w();
                this.f36847c = mo4688a();
                this.f36845a = true;
            }
            C8149d c8149d = C8149d.this;
            float f = this.f36846b;
            c8149d.m4711g0((int) (f + ((this.f36847c - f) * valueAnimator.getAnimatedFraction())));
        }
    }

    public C8149d(FloatingActionButton floatingActionButton, AbstractC1930b abstractC1930b) {
        this.f36804F = floatingActionButton;
        this.f36805G = abstractC1930b;
        C8194h c8194h = new C8194h();
        this.f36822s = c8194h;
        c8194h.m4491a(f36793b, m4708i(new C8157h()));
        c8194h.m4491a(f36794c, m4708i(new C8156g()));
        c8194h.m4491a(f36795d, m4708i(new C8156g()));
        c8194h.m4491a(f36796e, m4708i(new C8156g()));
        c8194h.m4491a(f36797f, m4708i(new C8160k()));
        c8194h.m4491a(f36798g, m4708i(new C8155f()));
        this.f36828y = floatingActionButton.getRotation();
    }

    /* renamed from: a0 */
    private boolean m4722a0() {
        return C1679w.m29313V(this.f36804F) && !this.f36804F.isInEditMode();
    }

    /* renamed from: g */
    private void m4712g(float f, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f36804F.getDrawable();
        if (drawable == null || this.f36799A == 0) {
            return;
        }
        RectF rectF = this.f36807I;
        RectF rectF2 = this.f36808J;
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int i = this.f36799A;
        rectF2.set(0.0f, 0.0f, i, i);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i2 = this.f36799A;
        matrix.postScale(f, f, i2 / 2.0f, i2 / 2.0f);
    }

    /* renamed from: h */
    private AnimatorSet m4710h(C1904h c1904h, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f36804F, View.ALPHA, f);
        c1904h.m28733h("opacity").m28727a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f36804F, View.SCALE_X, f2);
        c1904h.m28733h("scale").m28727a(ofFloat2);
        m4709h0(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f36804F, View.SCALE_Y, f2);
        c1904h.m28733h("scale").m28727a(ofFloat3);
        m4709h0(ofFloat3);
        arrayList.add(ofFloat3);
        m4712g(f3, this.f36809K);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f36804F, new C1902f(), new C8152c(), new Matrix(this.f36809K));
        c1904h.m28733h("iconScale").m28727a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C1898b.m28749a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: h0 */
    private void m4709h0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new C8153d());
    }

    /* renamed from: i */
    private ValueAnimator m4708i(AbstractC8161l abstractC8161l) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f36792a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(abstractC8161l);
        valueAnimator.addUpdateListener(abstractC8161l);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: l */
    private C1904h m4706l() {
        if (this.f36824u == null) {
            this.f36824u = C1904h.m28737d(this.f36804F.getContext(), C1885a.design_fab_hide_motion_spec);
        }
        return (C1904h) C1597h.m29659e(this.f36824u);
    }

    /* renamed from: m */
    private C1904h m4705m() {
        if (this.f36823t == null) {
            this.f36823t = C1904h.m28737d(this.f36804F.getContext(), C1885a.design_fab_show_motion_spec);
        }
        return (C1904h) C1597h.m29659e(this.f36823t);
    }

    /* renamed from: r */
    private ViewTreeObserver.OnPreDrawListener m4701r() {
        if (this.f36810L == null) {
            this.f36810L = new ViewTreeObserver$OnPreDrawListenerC8154e();
        }
        return this.f36810L;
    }

    /* renamed from: A */
    public void mo4687A() {
        this.f36822s.m4489c();
    }

    /* renamed from: B */
    public void m4742B() {
        C1938h c1938h = this.f36812i;
        if (c1938h != null) {
            C1942i.m28579f(this.f36804F, c1938h);
        }
        if (mo4683K()) {
            this.f36804F.getViewTreeObserver().addOnPreDrawListener(m4701r());
        }
    }

    /* renamed from: C */
    public void mo4686C() {
    }

    /* renamed from: D */
    public void m4741D() {
        ViewTreeObserver viewTreeObserver = this.f36804F.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.f36810L;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.f36810L = null;
        }
    }

    /* renamed from: E */
    public void mo4685E(int[] iArr) {
        this.f36822s.m4488d(iArr);
    }

    /* renamed from: F */
    void mo4684F(float f, float f2, float f3) {
        m4713f0();
        m4711g0(f);
    }

    /* renamed from: G */
    void m4740G(Rect rect) {
        C1597h.m29658f(this.f36815l, "Didn't initialize content background");
        if (!mo4681Z()) {
            this.f36805G.mo4758b(this.f36815l);
            return;
        }
        this.f36805G.mo4758b(new InsetDrawable(this.f36815l, rect.left, rect.top, rect.right, rect.bottom));
    }

    /* renamed from: H */
    void m4739H() {
        float rotation = this.f36804F.getRotation();
        if (this.f36828y != rotation) {
            this.f36828y = rotation;
            mo4680d0();
        }
    }

    /* renamed from: I */
    public void m4738I() {
        ArrayList<AbstractC8158i> arrayList = this.f36803E;
        if (arrayList != null) {
            Iterator<AbstractC8158i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo4691b();
            }
        }
    }

    /* renamed from: J */
    public void m4737J() {
        ArrayList<AbstractC8158i> arrayList = this.f36803E;
        if (arrayList != null) {
            Iterator<AbstractC8158i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo4692a();
            }
        }
    }

    /* renamed from: K */
    boolean mo4683K() {
        return true;
    }

    /* renamed from: L */
    public void m4736L(ColorStateList colorStateList) {
        C1938h c1938h = this.f36812i;
        if (c1938h != null) {
            c1938h.setTintList(colorStateList);
        }
        C8146c c8146c = this.f36814k;
        if (c8146c != null) {
            c8146c.m4746c(colorStateList);
        }
    }

    /* renamed from: M */
    public void m4735M(PorterDuff.Mode mode) {
        C1938h c1938h = this.f36812i;
        if (c1938h != null) {
            c1938h.setTintMode(mode);
        }
    }

    /* renamed from: N */
    public final void m4734N(float f) {
        if (this.f36818o != f) {
            this.f36818o = f;
            mo4684F(f, this.f36819p, this.f36820q);
        }
    }

    /* renamed from: O */
    public void m4733O(boolean z) {
        this.f36816m = z;
    }

    /* renamed from: P */
    public final void m4732P(C1904h c1904h) {
        this.f36827x = c1904h;
    }

    /* renamed from: Q */
    public final void m4731Q(float f) {
        if (this.f36819p != f) {
            this.f36819p = f;
            mo4684F(this.f36818o, f, this.f36820q);
        }
    }

    /* renamed from: R */
    final void m4730R(float f) {
        this.f36829z = f;
        Matrix matrix = this.f36809K;
        m4712g(f, matrix);
        this.f36804F.setImageMatrix(matrix);
    }

    /* renamed from: S */
    public final void m4729S(int i) {
        if (this.f36799A != i) {
            this.f36799A = i;
            m4715e0();
        }
    }

    /* renamed from: T */
    public void m4728T(int i) {
        this.f36821r = i;
    }

    /* renamed from: U */
    public final void m4727U(float f) {
        if (this.f36820q != f) {
            this.f36820q = f;
            mo4684F(this.f36818o, this.f36819p, f);
        }
    }

    /* renamed from: V */
    public void mo4682V(ColorStateList colorStateList) {
        Drawable drawable = this.f36813j;
        if (drawable != null) {
            C0615a.m33215o(drawable, C1928b.m28658d(colorStateList));
        }
    }

    /* renamed from: W */
    public void m4726W(boolean z) {
        this.f36817n = z;
        m4713f0();
    }

    /* renamed from: X */
    public final void m4725X(C1946m c1946m) {
        this.f36811h = c1946m;
        C1938h c1938h = this.f36812i;
        if (c1938h != null) {
            c1938h.setShapeAppearanceModel(c1946m);
        }
        Drawable drawable = this.f36813j;
        if (drawable instanceof AbstractC1962p) {
            ((AbstractC1962p) drawable).setShapeAppearanceModel(c1946m);
        }
        C8146c c8146c = this.f36814k;
        if (c8146c != null) {
            c8146c.m4743f(c1946m);
        }
    }

    /* renamed from: Y */
    public final void m4724Y(C1904h c1904h) {
        this.f36826w = c1904h;
    }

    /* renamed from: Z */
    boolean mo4681Z() {
        return true;
    }

    /* renamed from: b0 */
    public final boolean m4720b0() {
        return !this.f36816m || this.f36804F.getSizeDimension() >= this.f36821r;
    }

    /* renamed from: c0 */
    public void m4718c0(AbstractC8159j abstractC8159j, boolean z) {
        if (m4695z()) {
            return;
        }
        Animator animator = this.f36825v;
        if (animator != null) {
            animator.cancel();
        }
        if (!m4722a0()) {
            this.f36804F.m4623b(0, z);
            this.f36804F.setAlpha(1.0f);
            this.f36804F.setScaleY(1.0f);
            this.f36804F.setScaleX(1.0f);
            m4730R(1.0f);
            if (abstractC8159j == null) {
                return;
            }
            abstractC8159j.mo4690a();
            return;
        }
        if (this.f36804F.getVisibility() != 0) {
            this.f36804F.setAlpha(0.0f);
            this.f36804F.setScaleY(0.0f);
            this.f36804F.setScaleX(0.0f);
            m4730R(0.0f);
        }
        C1904h c1904h = this.f36826w;
        if (c1904h == null) {
            c1904h = m4705m();
        }
        AnimatorSet m4710h = m4710h(c1904h, 1.0f, 1.0f, 1.0f);
        m4710h.addListener(new C8151b(z, abstractC8159j));
        ArrayList<Animator.AnimatorListener> arrayList = this.f36801C;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                m4710h.addListener(it.next());
            }
        }
        m4710h.start();
    }

    /* renamed from: d */
    public void m4717d(Animator.AnimatorListener animatorListener) {
        if (this.f36802D == null) {
            this.f36802D = new ArrayList<>();
        }
        this.f36802D.add(animatorListener);
    }

    /* renamed from: d0 */
    void mo4680d0() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f36828y % 90.0f != 0.0f) {
                if (this.f36804F.getLayerType() != 1) {
                    this.f36804F.setLayerType(1, null);
                }
            } else if (this.f36804F.getLayerType() != 0) {
                this.f36804F.setLayerType(0, null);
            }
        }
        C1938h c1938h = this.f36812i;
        if (c1938h != null) {
            c1938h.m28611h0((int) this.f36828y);
        }
    }

    /* renamed from: e */
    public void m4716e(Animator.AnimatorListener animatorListener) {
        if (this.f36801C == null) {
            this.f36801C = new ArrayList<>();
        }
        this.f36801C.add(animatorListener);
    }

    /* renamed from: e0 */
    public final void m4715e0() {
        m4730R(this.f36829z);
    }

    /* renamed from: f */
    public void m4714f(AbstractC8158i abstractC8158i) {
        if (this.f36803E == null) {
            this.f36803E = new ArrayList<>();
        }
        this.f36803E.add(abstractC8158i);
    }

    /* renamed from: f0 */
    public final void m4713f0() {
        Rect rect = this.f36806H;
        mo4675s(rect);
        m4740G(rect);
        this.f36805G.mo4759a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: g0 */
    public void m4711g0(float f) {
        C1938h c1938h = this.f36812i;
        if (c1938h != null) {
            c1938h.m28626Z(f);
        }
    }

    /* renamed from: j */
    C1938h mo4678j() {
        return new C1938h((C1946m) C1597h.m29659e(this.f36811h));
    }

    /* renamed from: k */
    public final Drawable m4707k() {
        return this.f36815l;
    }

    /* renamed from: n */
    public float mo4676n() {
        return this.f36818o;
    }

    /* renamed from: o */
    public boolean m4704o() {
        return this.f36816m;
    }

    /* renamed from: p */
    public final C1904h m4703p() {
        return this.f36827x;
    }

    /* renamed from: q */
    public float m4702q() {
        return this.f36819p;
    }

    /* renamed from: s */
    public void mo4675s(Rect rect) {
        int sizeDimension = this.f36816m ? (this.f36821r - this.f36804F.getSizeDimension()) / 2 : 0;
        float mo4676n = this.f36817n ? mo4676n() + this.f36820q : 0.0f;
        int max = Math.max(sizeDimension, (int) Math.ceil(mo4676n));
        int max2 = Math.max(sizeDimension, (int) Math.ceil(mo4676n * 1.5f));
        rect.set(max, max2, max, max2);
    }

    /* renamed from: t */
    public float m4700t() {
        return this.f36820q;
    }

    /* renamed from: u */
    public final C1946m m4699u() {
        return this.f36811h;
    }

    /* renamed from: v */
    public final C1904h m4698v() {
        return this.f36826w;
    }

    /* renamed from: w */
    public void m4697w(AbstractC8159j abstractC8159j, boolean z) {
        if (m4696y()) {
            return;
        }
        Animator animator = this.f36825v;
        if (animator != null) {
            animator.cancel();
        }
        if (!m4722a0()) {
            this.f36804F.m4623b(z ? 8 : 4, z);
            if (abstractC8159j == null) {
                return;
            }
            abstractC8159j.mo4689b();
            return;
        }
        C1904h c1904h = this.f36827x;
        if (c1904h == null) {
            c1904h = m4706l();
        }
        AnimatorSet m4710h = m4710h(c1904h, 0.0f, 0.0f, 0.0f);
        m4710h.addListener(new C8150a(z, abstractC8159j));
        ArrayList<Animator.AnimatorListener> arrayList = this.f36802D;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                m4710h.addListener(it.next());
            }
        }
        m4710h.start();
    }

    /* renamed from: x */
    public void mo4674x(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        C1938h mo4678j = mo4678j();
        this.f36812i = mo4678j;
        mo4678j.setTintList(colorStateList);
        if (mode != null) {
            this.f36812i.setTintMode(mode);
        }
        this.f36812i.m28613g0(-12303292);
        this.f36812i.m28636P(this.f36804F.getContext());
        C1925a c1925a = new C1925a(this.f36812i.m28648D());
        c1925a.setTintList(C1928b.m28658d(colorStateList2));
        this.f36813j = c1925a;
        this.f36815l = new LayerDrawable(new Drawable[]{(Drawable) C1597h.m29659e(this.f36812i), c1925a});
    }

    /* renamed from: y */
    public boolean m4696y() {
        boolean z = false;
        if (this.f36804F.getVisibility() == 0) {
            if (this.f36800B == 1) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (this.f36800B != 2) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: z */
    public boolean m4695z() {
        boolean z = false;
        if (this.f36804F.getVisibility() != 0) {
            if (this.f36800B == 2) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (this.f36800B != 1) {
            z2 = true;
        }
        return z2;
    }
}
