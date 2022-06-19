package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.PathInterpolator;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import p019b4.AbstractC0729b;
import p029c4.AbstractC0841m;
import p029c4.C0822f;
import p029c4.C0827i;
import p087f0.C2697d;
import p090f3.C2727a;
import p090f3.C2731e;
import p090f3.C2732f;
import p090f3.C2733g;
import p124i4.C3102d;
import p163m0.C3589v;
import p163m0.C3611y;
import p251u3.C4477a;
import p251u3.C4480b;
import p262v3.C4625l;
import p273w3.C4735a;
import p304z3.C5070b;
/* renamed from: com.google.android.material.floatingactionbutton.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d.class */
public class C1782d {

    /* renamed from: D */
    public static final TimeInterpolator f6656D = C2727a.f9374c;

    /* renamed from: E */
    public static final int[] f6657E = {16842919, 16842910};

    /* renamed from: F */
    public static final int[] f6658F = {16843623, 16842908, 16842910};

    /* renamed from: G */
    public static final int[] f6659G = {16842908, 16842910};

    /* renamed from: H */
    public static final int[] f6660H = {16843623, 16842910};

    /* renamed from: I */
    public static final int[] f6661I = {16842910};

    /* renamed from: J */
    public static final int[] f6662J = new int[0];

    /* renamed from: C */
    public ViewTreeObserver.OnPreDrawListener f6665C;

    /* renamed from: a */
    public C0827i f6666a;

    /* renamed from: b */
    public C0822f f6667b;

    /* renamed from: c */
    public Drawable f6668c;

    /* renamed from: d */
    public C4477a f6669d;

    /* renamed from: e */
    public Drawable f6670e;

    /* renamed from: f */
    public boolean f6671f;

    /* renamed from: h */
    public float f6673h;

    /* renamed from: i */
    public float f6674i;

    /* renamed from: j */
    public float f6675j;

    /* renamed from: k */
    public int f6676k;

    /* renamed from: l */
    public final C4625l f6677l;

    /* renamed from: m */
    public Animator f6678m;

    /* renamed from: n */
    public C2733g f6679n;

    /* renamed from: o */
    public C2733g f6680o;

    /* renamed from: p */
    public float f6681p;

    /* renamed from: r */
    public int f6683r;

    /* renamed from: t */
    public ArrayList<Animator.AnimatorListener> f6685t;

    /* renamed from: u */
    public ArrayList<Animator.AnimatorListener> f6686u;

    /* renamed from: v */
    public ArrayList<AbstractC1788f> f6687v;

    /* renamed from: w */
    public final FloatingActionButton f6688w;

    /* renamed from: x */
    public final AbstractC0729b f6689x;

    /* renamed from: g */
    public boolean f6672g = true;

    /* renamed from: q */
    public float f6682q = 1.0f;

    /* renamed from: s */
    public int f6684s = 0;

    /* renamed from: y */
    public final Rect f6690y = new Rect();

    /* renamed from: z */
    public final RectF f6691z = new RectF();

    /* renamed from: A */
    public final RectF f6663A = new RectF();

    /* renamed from: B */
    public final Matrix f6664B = new Matrix();

    /* renamed from: com.google.android.material.floatingactionbutton.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$a.class */
    public class C1783a extends C2732f {
        public C1783a() {
            C1782d.this = r4;
        }

        @Override // android.animation.TypeEvaluator
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            C1782d.this.f6682q = f;
            matrix.getValues(this.f9381a);
            matrix2.getValues(this.f9382b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f9382b;
                float f2 = fArr[i];
                float[] fArr2 = this.f9381a;
                fArr[i] = ((f2 - fArr2[i]) * f) + fArr2[i];
            }
            this.f9383c.setValues(this.f9382b);
            return this.f9383c;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$b.class */
    public class C1784b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ float f6693a;

        /* renamed from: b */
        public final /* synthetic */ float f6694b;

        /* renamed from: c */
        public final /* synthetic */ float f6695c;

        /* renamed from: d */
        public final /* synthetic */ float f6696d;

        /* renamed from: e */
        public final /* synthetic */ float f6697e;

        /* renamed from: f */
        public final /* synthetic */ float f6698f;

        /* renamed from: g */
        public final /* synthetic */ float f6699g;

        /* renamed from: h */
        public final /* synthetic */ Matrix f6700h;

        public C1784b(float f, float f2, float f3, float f4, float f5, float f6, float f7, Matrix matrix) {
            C1782d.this = r4;
            this.f6693a = f;
            this.f6694b = f2;
            this.f6695c = f3;
            this.f6696d = f4;
            this.f6697e = f5;
            this.f6698f = f6;
            this.f6699g = f7;
            this.f6700h = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            C1782d.this.f6688w.setAlpha(C2727a.m3195b(this.f6693a, this.f6694b, 0.0f, 0.2f, floatValue));
            C1782d.this.f6688w.setScaleX(C2727a.m3196a(this.f6695c, this.f6696d, floatValue));
            C1782d.this.f6688w.setScaleY(C2727a.m3196a(this.f6697e, this.f6696d, floatValue));
            C1782d.this.f6682q = C2727a.m3196a(this.f6698f, this.f6699g, floatValue);
            C1782d.this.m4569a(C2727a.m3196a(this.f6698f, this.f6699g, floatValue), this.f6700h);
            C1782d.this.f6688w.setImageMatrix(this.f6700h);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$c.class */
    public class C1785c extends AbstractC1791i {
        public C1785c(C1782d c1782d) {
            super(null);
        }

        @Override // com.google.android.material.floatingactionbutton.C1782d.AbstractC1791i
        /* renamed from: a */
        public float mo4553a() {
            return 0.0f;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$d.class */
    public class C1786d extends AbstractC1791i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1786d() {
            super(null);
            C1782d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C1782d.AbstractC1791i
        /* renamed from: a */
        public float mo4553a() {
            C1782d c1782d = C1782d.this;
            return c1782d.f6673h + c1782d.f6674i;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$e.class */
    public class C1787e extends AbstractC1791i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1787e() {
            super(null);
            C1782d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C1782d.AbstractC1791i
        /* renamed from: a */
        public float mo4553a() {
            C1782d c1782d = C1782d.this;
            return c1782d.f6673h + c1782d.f6675j;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$f.class */
    public interface AbstractC1788f {
        /* renamed from: a */
        void mo4555a();

        /* renamed from: b */
        void mo4554b();
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$g.class */
    public interface AbstractC1789g {
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$h.class */
    public class C1790h extends AbstractC1791i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1790h() {
            super(null);
            C1782d.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.C1782d.AbstractC1791i
        /* renamed from: a */
        public float mo4553a() {
            return C1782d.this.f6673h;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.d$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/d$i.class */
    public abstract class AbstractC1791i extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public boolean f6705a;

        /* renamed from: b */
        public float f6706b;

        /* renamed from: c */
        public float f6707c;

        public AbstractC1791i(C1780b c1780b) {
            C1782d.this = r4;
        }

        /* renamed from: a */
        public abstract float mo4553a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1782d.this.m4556x((int) this.f6707c);
            this.f6705a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f6705a) {
                C0822f c0822f = C1782d.this.f6667b;
                this.f6706b = c0822f == null ? 0.0f : c0822f.f3010a.f3048o;
                this.f6707c = mo4553a();
                this.f6705a = true;
            }
            C1782d c1782d = C1782d.this;
            float f = this.f6706b;
            c1782d.m4556x((int) ((valueAnimator.getAnimatedFraction() * (this.f6707c - f)) + f));
        }
    }

    public C1782d(FloatingActionButton floatingActionButton, AbstractC0729b abstractC0729b) {
        this.f6688w = floatingActionButton;
        this.f6689x = abstractC0729b;
        C4625l c4625l = new C4625l();
        this.f6677l = c4625l;
        c4625l.m694a(f6657E, m4566d(new C1787e()));
        c4625l.m694a(f6658F, m4566d(new C1786d()));
        c4625l.m694a(f6659G, m4566d(new C1786d()));
        c4625l.m694a(f6660H, m4566d(new C1786d()));
        c4625l.m694a(f6661I, m4566d(new C1790h()));
        c4625l.m694a(f6662J, m4566d(new C1785c(this)));
        this.f6681p = floatingActionButton.getRotation();
    }

    /* renamed from: a */
    public final void m4569a(float f, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f6688w.getDrawable();
        if (drawable == null || this.f6683r == 0) {
            return;
        }
        RectF rectF = this.f6691z;
        RectF rectF2 = this.f6663A;
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int i = this.f6683r;
        rectF2.set(0.0f, 0.0f, i, i);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i2 = this.f6683r;
        matrix.postScale(f, f, i2 / 2.0f, i2 / 2.0f);
    }

    /* renamed from: b */
    public final AnimatorSet m4568b(C2733g c2733g, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f6688w, View.ALPHA, f);
        c2733g.m3191d("opacity").m3190a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f6688w, View.SCALE_X, f2);
        c2733g.m3191d("scale").m3190a(ofFloat2);
        int i = Build.VERSION.SDK_INT;
        if (i == 26) {
            ofFloat2.setEvaluator(new C4480b(this));
        }
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f6688w, View.SCALE_Y, f2);
        c2733g.m3191d("scale").m3190a(ofFloat3);
        if (i == 26) {
            ofFloat3.setEvaluator(new C4480b(this));
        }
        arrayList.add(ofFloat3);
        m4569a(f3, this.f6664B);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f6688w, new C2731e(), new C1783a(), new Matrix(this.f6664B));
        c2733g.m3191d("iconScale").m3190a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C3102d.m2647E(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: c */
    public final AnimatorSet m4567c(float f, float f2, float f3) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C1784b(this.f6688w.getAlpha(), f, this.f6688w.getScaleX(), f2, this.f6688w.getScaleY(), this.f6682q, f3, new Matrix(this.f6664B)));
        arrayList.add(ofFloat);
        C3102d.m2647E(animatorSet, arrayList);
        Context context = this.f6688w.getContext();
        int integer = this.f6688w.getContext().getResources().getInteger(2131361821);
        TypedValue m75a = C5070b.m75a(context, 2130969433);
        int i = integer;
        if (m75a != null) {
            i = integer;
            if (m75a.type == 16) {
                i = m75a.data;
            }
        }
        animatorSet.setDuration(i);
        Context context2 = this.f6688w.getContext();
        PathInterpolator pathInterpolator = C2727a.f9373b;
        TypedValue typedValue = new TypedValue();
        if (context2.getTheme().resolveAttribute(2130969443, typedValue, true)) {
            if (typedValue.type != 3) {
                throw new IllegalArgumentException("Motion easing theme attribute must be a string");
            }
            String valueOf = String.valueOf(typedValue.string);
            if (C4735a.m535b(valueOf, "cubic-bezier")) {
                String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
                if (split.length != 4) {
                    StringBuilder m8752j = C0082b.m8752j("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ");
                    m8752j.append(split.length);
                    throw new IllegalArgumentException(m8752j.toString());
                }
                pathInterpolator = new PathInterpolator(C4735a.m536a(split, 0), C4735a.m536a(split, 1), C4735a.m536a(split, 2), C4735a.m536a(split, 3));
            } else if (!C4735a.m535b(valueOf, "path")) {
                throw new IllegalArgumentException(C1676a.m4789h("Invalid motion easing type: ", valueOf));
            } else {
                pathInterpolator = new PathInterpolator(C2697d.m3247d(valueOf.substring(5, valueOf.length() - 1)));
            }
        }
        animatorSet.setInterpolator(pathInterpolator);
        return animatorSet;
    }

    /* renamed from: d */
    public final ValueAnimator m4566d(AbstractC1791i abstractC1791i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f6656D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(abstractC1791i);
        valueAnimator.addUpdateListener(abstractC1791i);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: e */
    public float mo879e() {
        throw null;
    }

    /* renamed from: f */
    public void mo878f(Rect rect) {
        int sizeDimension = this.f6671f ? (this.f6676k - this.f6688w.getSizeDimension()) / 2 : 0;
        float mo879e = this.f6672g ? mo879e() + this.f6675j : 0.0f;
        int max = Math.max(sizeDimension, (int) Math.ceil(mo879e));
        int max2 = Math.max(sizeDimension, (int) Math.ceil(mo879e * 1.5f));
        rect.set(max, max2, max, max2);
    }

    /* renamed from: g */
    public void mo877g(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        throw null;
    }

    /* renamed from: h */
    public boolean m4565h() {
        boolean z = false;
        if (this.f6688w.getVisibility() == 0) {
            if (this.f6684s == 1) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (this.f6684s != 2) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: i */
    public boolean m4564i() {
        boolean z = false;
        if (this.f6688w.getVisibility() != 0) {
            if (this.f6684s == 2) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (this.f6684s != 1) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: j */
    public void mo876j() {
        throw null;
    }

    /* renamed from: k */
    public void mo875k() {
        throw null;
    }

    /* renamed from: l */
    public void mo874l(int[] iArr) {
        throw null;
    }

    /* renamed from: m */
    public void mo873m(float f, float f2, float f3) {
        throw null;
    }

    /* renamed from: n */
    public void m4563n() {
        ArrayList<AbstractC1788f> arrayList = this.f6687v;
        if (arrayList != null) {
            Iterator<AbstractC1788f> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().mo4554b();
            }
        }
    }

    /* renamed from: o */
    public void m4562o() {
        ArrayList<AbstractC1788f> arrayList = this.f6687v;
        if (arrayList != null) {
            Iterator<AbstractC1788f> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().mo4555a();
            }
        }
    }

    /* renamed from: p */
    public final void m4561p(float f) {
        this.f6682q = f;
        Matrix matrix = this.f6664B;
        m4569a(f, matrix);
        this.f6688w.setImageMatrix(matrix);
    }

    /* renamed from: q */
    public void mo872q(ColorStateList colorStateList) {
        throw null;
    }

    /* renamed from: r */
    public final void m4560r(C0827i c0827i) {
        this.f6666a = c0827i;
        C0822f c0822f = this.f6667b;
        if (c0822f != null) {
            c0822f.f3010a.f3034a = c0827i;
            c0822f.invalidateSelf();
        }
        Drawable drawable = this.f6668c;
        if (drawable instanceof AbstractC0841m) {
            ((AbstractC0841m) drawable).setShapeAppearanceModel(c0827i);
        }
        C4477a c4477a = this.f6669d;
        if (c4477a != null) {
            c4477a.f13879o = c0827i;
            c4477a.invalidateSelf();
        }
    }

    /* renamed from: s */
    public boolean mo871s() {
        throw null;
    }

    /* renamed from: t */
    public final boolean m4559t() {
        FloatingActionButton floatingActionButton = this.f6688w;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        return C3589v.C3596g.m2058c(floatingActionButton) && !this.f6688w.isInEditMode();
    }

    /* renamed from: u */
    public final boolean m4558u() {
        return !this.f6671f || this.f6688w.getSizeDimension() >= this.f6676k;
    }

    /* renamed from: v */
    public void mo870v() {
        throw null;
    }

    /* renamed from: w */
    public final void m4557w() {
        Rect rect = this.f6690y;
        mo878f(rect);
        C3102d.m2628k(this.f6670e, "Didn't initialize content background");
        if (mo871s()) {
            InsetDrawable insetDrawable = new InsetDrawable(this.f6670e, rect.left, rect.top, rect.right, rect.bottom);
            FloatingActionButton.C1777b c1777b = (FloatingActionButton.C1777b) this.f6689x;
            Objects.requireNonNull(c1777b);
            C1782d.super.setBackgroundDrawable(insetDrawable);
        } else {
            AbstractC0729b abstractC0729b = this.f6689x;
            Drawable drawable = this.f6670e;
            FloatingActionButton.C1777b c1777b2 = (FloatingActionButton.C1777b) abstractC0729b;
            Objects.requireNonNull(c1777b2);
            if (drawable != null) {
                C1782d.super.setBackgroundDrawable(drawable);
            }
        }
        AbstractC0729b abstractC0729b2 = this.f6689x;
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        FloatingActionButton.C1777b c1777b3 = (FloatingActionButton.C1777b) abstractC0729b2;
        FloatingActionButton.this.f6637m.set(i, i2, i3, i4);
        FloatingActionButton floatingActionButton = FloatingActionButton.this;
        int i5 = floatingActionButton.f6634j;
        floatingActionButton.setPadding(i + i5, i2 + i5, i3 + i5, i4 + i5);
    }

    /* renamed from: x */
    public void m4556x(float f) {
        C0822f c0822f = this.f6667b;
        if (c0822f != null) {
            C0822f.C0824b c0824b = c0822f.f3010a;
            if (c0824b.f3048o == f) {
                return;
            }
            c0824b.f3048o = f;
            c0822f.m7307x();
        }
    }
}
