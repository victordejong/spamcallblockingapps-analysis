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
import android.util.StateSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p036e.C0833d;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14636g;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p364a.C14390b;
import com.google.android.material.p364a.C14394f;
import com.google.android.material.p364a.C14395g;
import com.google.android.material.p364a.C14396h;
import com.google.android.material.p372i.C14604a;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p373j.AbstractC14662b;
import com.google.android.material.p374k.AbstractC14695q;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.google.android.material.floatingactionbutton.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d.class */
public class C14578d {

    /* renamed from: a */
    static final TimeInterpolator f53161a = C14389a.f52370c;

    /* renamed from: t */
    static final int[] f53162t = {16842919, 16842910};

    /* renamed from: u */
    static final int[] f53163u = {16843623, 16842908, 16842910};

    /* renamed from: v */
    static final int[] f53164v = {16842908, 16842910};

    /* renamed from: w */
    static final int[] f53165w = {16843623, 16842910};

    /* renamed from: x */
    static final int[] f53166x = {16842910};

    /* renamed from: y */
    static final int[] f53167y = new int[0];

    /* renamed from: A */
    final AbstractC14662b f53168A;

    /* renamed from: B */
    ViewTreeObserver.OnPreDrawListener f53169B;

    /* renamed from: C */
    private final C14636g f53170C;

    /* renamed from: D */
    private C14396h f53171D;

    /* renamed from: E */
    private C14396h f53172E;

    /* renamed from: F */
    private Animator f53173F;

    /* renamed from: b */
    C14678m f53180b;

    /* renamed from: c */
    C14670h f53181c;

    /* renamed from: d */
    Drawable f53182d;

    /* renamed from: e */
    C14575c f53183e;

    /* renamed from: f */
    Drawable f53184f;

    /* renamed from: g */
    boolean f53185g;

    /* renamed from: i */
    float f53187i;

    /* renamed from: j */
    float f53188j;

    /* renamed from: k */
    float f53189k;

    /* renamed from: l */
    int f53190l;

    /* renamed from: m */
    C14396h f53191m;

    /* renamed from: n */
    C14396h f53192n;

    /* renamed from: o */
    float f53193o;

    /* renamed from: p */
    int f53194p;

    /* renamed from: q */
    public ArrayList<Animator.AnimatorListener> f53195q;

    /* renamed from: r */
    public ArrayList<Animator.AnimatorListener> f53196r;

    /* renamed from: s */
    public ArrayList<AbstractC14587d> f53197s;

    /* renamed from: z */
    final FloatingActionButton f53198z;

    /* renamed from: h */
    boolean f53186h = true;

    /* renamed from: G */
    private float f53174G = 1.0f;

    /* renamed from: H */
    private int f53175H = 0;

    /* renamed from: I */
    private final Rect f53176I = new Rect();

    /* renamed from: J */
    private final RectF f53177J = new RectF();

    /* renamed from: K */
    private final RectF f53178K = new RectF();

    /* renamed from: L */
    private final Matrix f53179L = new Matrix();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$a.class */
    public final class C14584a extends AbstractC14590g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14584a() {
            super();
            C14578d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C14578d.AbstractC14590g
        /* renamed from: a */
        protected final float mo10687a() {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$b.class */
    public final class C14585b extends AbstractC14590g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14585b() {
            super();
            C14578d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C14578d.AbstractC14590g
        /* renamed from: a */
        protected final float mo10687a() {
            return C14578d.this.f53187i + C14578d.this.f53188j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$c.class */
    public final class C14586c extends AbstractC14590g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14586c() {
            super();
            C14578d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C14578d.AbstractC14590g
        /* renamed from: a */
        protected final float mo10687a() {
            return C14578d.this.f53187i + C14578d.this.f53189k;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$d */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$d.class */
    public interface AbstractC14587d {
        /* renamed from: a */
        void mo10691a();

        /* renamed from: b */
        void mo10690b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$e */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$e.class */
    public interface AbstractC14588e {
        /* renamed from: a */
        void mo10689a();

        /* renamed from: b */
        void mo10688b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$f */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$f.class */
    public final class C14589f extends AbstractC14590g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14589f() {
            super();
            C14578d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C14578d.AbstractC14590g
        /* renamed from: a */
        protected final float mo10687a() {
            return C14578d.this.f53187i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$g */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$g.class */
    public abstract class AbstractC14590g extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        private boolean f53214a;

        /* renamed from: c */
        private float f53216c;

        /* renamed from: d */
        private float f53217d;

        private AbstractC14590g() {
            C14578d.this = r4;
        }

        /* renamed from: a */
        protected abstract float mo10687a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C14578d.this.m10702d((int) this.f53217d);
            this.f53214a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f53214a) {
                this.f53216c = C14578d.this.f53181c == null ? 0.0f : C14578d.this.f53181c.f53492t.f53514o;
                this.f53217d = mo10687a();
                this.f53214a = true;
            }
            C14578d c14578d = C14578d.this;
            float f = this.f53216c;
            c14578d.m10702d((int) (f + ((this.f53217d - f) * valueAnimator.getAnimatedFraction())));
        }
    }

    public C14578d(FloatingActionButton floatingActionButton, AbstractC14662b abstractC14662b) {
        this.f53198z = floatingActionButton;
        this.f53168A = abstractC14662b;
        C14636g c14636g = new C14636g();
        this.f53170C = c14636g;
        c14636g.m10523a(f53162t, m10713a(new C14586c()));
        c14636g.m10523a(f53163u, m10713a(new C14585b()));
        c14636g.m10523a(f53164v, m10713a(new C14585b()));
        c14636g.m10523a(f53165w, m10713a(new C14585b()));
        c14636g.m10523a(f53166x, m10713a(new C14589f()));
        c14636g.m10523a(f53167y, m10713a(new C14584a()));
        this.f53193o = floatingActionButton.getRotation();
    }

    /* renamed from: a */
    private AnimatorSet m10715a(C14396h c14396h, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f53198z, View.ALPHA, f);
        c14396h.m11330a("opacity").m11321a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f53198z, View.SCALE_X, f2);
        c14396h.m11330a("scale").m11321a((Animator) ofFloat2);
        m10716a(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f53198z, View.SCALE_Y, f2);
        c14396h.m11330a("scale").m11321a((Animator) ofFloat3);
        m10716a(ofFloat3);
        arrayList.add(ofFloat3);
        m10717a(f3, this.f53179L);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f53198z, new C14394f(), new C14395g() { // from class: com.google.android.material.floatingactionbutton.d.3
            @Override // com.google.android.material.p364a.C14395g
            /* renamed from: a */
            public final Matrix evaluate(float f4, Matrix matrix, Matrix matrix2) {
                C14578d.this.f53174G = f4;
                return super.evaluate(f4, matrix, matrix2);
            }
        }, new Matrix(this.f53179L));
        c14396h.m11330a("iconScale").m11321a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C14390b.m11337a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: a */
    private static ValueAnimator m10713a(AbstractC14590g abstractC14590g) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f53161a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(abstractC14590g);
        valueAnimator.addUpdateListener(abstractC14590g);
        valueAnimator.setFloatValues(BitmapDescriptorFactory.HUE_RED, 1.0f);
        return valueAnimator;
    }

    /* renamed from: a */
    private void m10717a(float f, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f53198z.getDrawable();
        if (drawable == null || this.f53194p == 0) {
            return;
        }
        RectF rectF = this.f53177J;
        RectF rectF2 = this.f53178K;
        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int i = this.f53194p;
        rectF2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, i);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i2 = this.f53194p;
        matrix.postScale(f, f, i2 / 2.0f, i2 / 2.0f);
    }

    /* renamed from: a */
    private void m10716a(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new TypeEvaluator<Float>() { // from class: com.google.android.material.floatingactionbutton.d.4

            /* renamed from: a */
            FloatEvaluator f53207a = new FloatEvaluator();

            @Override // android.animation.TypeEvaluator
            public final /* synthetic */ Float evaluate(float f, Float f2, Float f3) {
                float floatValue = this.f53207a.evaluate(f, (Number) f2, (Number) f3).floatValue();
                float f4 = floatValue;
                if (floatValue < 0.1f) {
                    f4 = 0.0f;
                }
                return Float.valueOf(f4);
            }
        });
    }

    /* renamed from: b */
    private void m10706b(Rect rect) {
        C0833d.m44409a(this.f53184f, "Didn't initialize content background");
        if (!mo10677i()) {
            this.f53168A.mo10485a(this.f53184f);
            return;
        }
        this.f53168A.mo10485a(new InsetDrawable(this.f53184f, rect.left, rect.top, rect.right, rect.bottom));
    }

    /* renamed from: e */
    private void m10700e(float f) {
        this.f53174G = f;
        Matrix matrix = this.f53179L;
        m10717a(f, matrix);
        this.f53198z.setImageMatrix(matrix);
    }

    /* renamed from: o */
    private C14396h m10695o() {
        if (this.f53171D == null) {
            this.f53171D = C14396h.m11333a(this.f53198z.getContext(), C14376a.C14377a.design_fab_show_motion_spec);
        }
        return (C14396h) C0833d.m44410a(this.f53171D);
    }

    /* renamed from: p */
    private C14396h m10694p() {
        if (this.f53172E == null) {
            this.f53172E = C14396h.m11333a(this.f53198z.getContext(), C14376a.C14377a.design_fab_hide_motion_spec);
        }
        return (C14396h) C0833d.m44410a(this.f53172E);
    }

    /* renamed from: q */
    private boolean m10693q() {
        return C0926v.m44157B(this.f53198z) && !this.f53198z.isInEditMode();
    }

    /* renamed from: a */
    float mo10686a() {
        return this.f53187i;
    }

    /* renamed from: a */
    public final void m10718a(float f) {
        if (this.f53187i != f) {
            this.f53187i = f;
            mo10684a(f, this.f53188j, this.f53189k);
        }
    }

    /* renamed from: a */
    void mo10684a(float f, float f2, float f3) {
        m10698h();
        m10702d(f);
    }

    /* renamed from: a */
    public void mo10683a(ColorStateList colorStateList) {
        Drawable drawable = this.f53182d;
        if (drawable != null) {
            C0840a.m44355a(drawable, C14607b.m10633b(colorStateList));
        }
    }

    /* renamed from: a */
    public void mo10682a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        C14670h mo10675k = mo10675k();
        this.f53181c = mo10675k;
        mo10675k.setTintList(colorStateList);
        if (mode != null) {
            this.f53181c.setTintMode(mode);
        }
        this.f53181c.m10453i();
        this.f53181c.m10479a(this.f53198z.getContext());
        C14604a c14604a = new C14604a(this.f53181c.f53492t.f53500a);
        c14604a.setTintList(C14607b.m10633b(colorStateList2));
        this.f53182d = c14604a;
        this.f53184f = new LayerDrawable(new Drawable[]{(Drawable) C0833d.m44410a(this.f53181c), c14604a});
    }

    /* renamed from: a */
    public void mo10681a(Rect rect) {
        int m10737c = this.f53185g ? (this.f53190l - this.f53198z.m10737c()) / 2 : 0;
        float mo10686a = this.f53186h ? mo10686a() + this.f53189k : 0.0f;
        int max = Math.max(m10737c, (int) Math.ceil(mo10686a));
        int max2 = Math.max(m10737c, (int) Math.ceil(mo10686a * 1.5f));
        rect.set(max, max2, max, max2);
    }

    /* renamed from: a */
    public final void m10714a(final AbstractC14588e abstractC14588e, final boolean z) {
        if (m10696m()) {
            return;
        }
        Animator animator = this.f53173F;
        if (animator != null) {
            animator.cancel();
        }
        if (!m10693q()) {
            this.f53198z.m10609a(z ? 8 : 4, z);
            if (abstractC14588e == null) {
                return;
            }
            abstractC14588e.mo10688b();
            return;
        }
        C14396h c14396h = this.f53192n;
        if (c14396h == null) {
            c14396h = m10694p();
        }
        AnimatorSet m10715a = m10715a(c14396h, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        m10715a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.d.1

            /* renamed from: d */
            private boolean f53202d;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator2) {
                this.f53202d = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                C14578d.this.f53175H = 0;
                C14578d.this.f53173F = null;
                if (!this.f53202d) {
                    FloatingActionButton floatingActionButton = C14578d.this.f53198z;
                    boolean z2 = z;
                    floatingActionButton.m10609a(z2 ? 8 : 4, z2);
                    AbstractC14588e abstractC14588e2 = abstractC14588e;
                    if (abstractC14588e2 == null) {
                        return;
                    }
                    abstractC14588e2.mo10688b();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator2) {
                C14578d.this.f53198z.m10609a(0, z);
                C14578d.this.f53175H = 1;
                C14578d.this.f53173F = animator2;
                this.f53202d = false;
            }
        });
        ArrayList<Animator.AnimatorListener> arrayList = this.f53196r;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m10715a.addListener(it2.next());
            }
        }
        m10715a.start();
    }

    /* renamed from: a */
    public final void m10709a(C14678m c14678m) {
        this.f53180b = c14678m;
        C14670h c14670h = this.f53181c;
        if (c14670h != null) {
            c14670h.setShapeAppearanceModel(c14678m);
        }
        Drawable drawable = this.f53182d;
        if (drawable instanceof AbstractC14695q) {
            ((AbstractC14695q) drawable).setShapeAppearanceModel(c14678m);
        }
        C14575c c14575c = this.f53183e;
        if (c14575c != null) {
            c14575c.m10719a(c14678m);
        }
    }

    /* renamed from: a */
    public void mo10680a(int[] iArr) {
        C14636g.C14638a c14638a;
        C14636g c14636g = this.f53170C;
        int size = c14636g.f53406a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c14638a = null;
                break;
            }
            C14636g.C14638a c14638a2 = c14636g.f53406a.get(i);
            if (StateSet.stateSetMatches(c14638a2.f53411a, iArr)) {
                c14638a = c14638a2;
                break;
            }
            i++;
        }
        if (c14638a != c14636g.f53407b) {
            if (c14636g.f53407b != null && c14636g.f53408c != null) {
                c14636g.f53408c.cancel();
                c14636g.f53408c = null;
            }
            c14636g.f53407b = c14638a;
            if (c14638a == null) {
                return;
            }
            c14636g.f53408c = c14638a.f53412b;
            c14636g.f53408c.start();
        }
    }

    /* renamed from: b */
    public final void m10708b() {
        m10700e(this.f53174G);
    }

    /* renamed from: b */
    public final void m10707b(float f) {
        if (this.f53188j != f) {
            this.f53188j = f;
            mo10684a(this.f53187i, f, this.f53189k);
        }
    }

    /* renamed from: b */
    public final void m10705b(final AbstractC14588e abstractC14588e, final boolean z) {
        if (m10697l()) {
            return;
        }
        Animator animator = this.f53173F;
        if (animator != null) {
            animator.cancel();
        }
        if (!m10693q()) {
            this.f53198z.m10609a(0, z);
            this.f53198z.setAlpha(1.0f);
            this.f53198z.setScaleY(1.0f);
            this.f53198z.setScaleX(1.0f);
            m10700e(1.0f);
            if (abstractC14588e == null) {
                return;
            }
            abstractC14588e.mo10689a();
            return;
        }
        if (this.f53198z.getVisibility() != 0) {
            this.f53198z.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.f53198z.setScaleY(BitmapDescriptorFactory.HUE_RED);
            this.f53198z.setScaleX(BitmapDescriptorFactory.HUE_RED);
            m10700e(BitmapDescriptorFactory.HUE_RED);
        }
        C14396h c14396h = this.f53191m;
        if (c14396h == null) {
            c14396h = m10695o();
        }
        AnimatorSet m10715a = m10715a(c14396h, 1.0f, 1.0f, 1.0f);
        m10715a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.d.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                C14578d.this.f53175H = 0;
                C14578d.this.f53173F = null;
                AbstractC14588e abstractC14588e2 = abstractC14588e;
                if (abstractC14588e2 != null) {
                    abstractC14588e2.mo10689a();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator2) {
                C14578d.this.f53198z.m10609a(0, z);
                C14578d.this.f53175H = 2;
                C14578d.this.f53173F = animator2;
            }
        });
        ArrayList<Animator.AnimatorListener> arrayList = this.f53195q;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m10715a.addListener(it2.next());
            }
        }
        m10715a.start();
    }

    /* renamed from: c */
    public final void m10703c(float f) {
        if (this.f53189k != f) {
            this.f53189k = f;
            mo10684a(this.f53187i, this.f53188j, f);
        }
    }

    /* renamed from: c */
    public final boolean m10704c() {
        return !this.f53185g || this.f53198z.m10737c() >= this.f53190l;
    }

    /* renamed from: d */
    public void mo10679d() {
        C14636g c14636g = this.f53170C;
        if (c14636g.f53408c != null) {
            c14636g.f53408c.end();
            c14636g.f53408c = null;
        }
    }

    /* renamed from: d */
    public final void m10702d(float f) {
        C14670h c14670h = this.f53181c;
        if (c14670h != null) {
            c14670h.m10439r(f);
        }
    }

    /* renamed from: e */
    public final void m10701e() {
        ArrayList<AbstractC14587d> arrayList = this.f53197s;
        if (arrayList != null) {
            Iterator<AbstractC14587d> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().mo10691a();
            }
        }
    }

    /* renamed from: f */
    public final void m10699f() {
        ArrayList<AbstractC14587d> arrayList = this.f53197s;
        if (arrayList != null) {
            Iterator<AbstractC14587d> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().mo10690b();
            }
        }
    }

    /* renamed from: g */
    public void mo10678g() {
    }

    /* renamed from: h */
    public final void m10698h() {
        Rect rect = this.f53176I;
        mo10681a(rect);
        m10706b(rect);
        this.f53168A.mo10486a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: i */
    boolean mo10677i() {
        return true;
    }

    /* renamed from: j */
    public boolean mo10676j() {
        return true;
    }

    /* renamed from: k */
    C14670h mo10675k() {
        return new C14670h((C14678m) C0833d.m44410a(this.f53180b));
    }

    /* renamed from: l */
    public final boolean m10697l() {
        return this.f53198z.getVisibility() != 0 ? this.f53175H == 2 : this.f53175H != 1;
    }

    /* renamed from: m */
    public final boolean m10696m() {
        return this.f53198z.getVisibility() == 0 ? this.f53175H == 1 : this.f53175H != 2;
    }

    /* renamed from: n */
    void mo10674n() {
        int i;
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f53193o % 90.0f != BitmapDescriptorFactory.HUE_RED) {
                if (this.f53198z.getLayerType() != 1) {
                    this.f53198z.setLayerType(1, null);
                }
            } else if (this.f53198z.getLayerType() != 0) {
                this.f53198z.setLayerType(0, null);
            }
        }
        C14670h c14670h = this.f53181c;
        if (c14670h == null || c14670h.f53492t.f53519t == (i = (int) this.f53193o)) {
            return;
        }
        c14670h.f53492t.f53519t = i;
        c14670h.m10455h();
    }
}
