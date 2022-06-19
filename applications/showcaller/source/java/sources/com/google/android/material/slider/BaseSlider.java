package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.core.graphics.drawable.C0615a;
import com.google.android.material.internal.AbstractC8208p;
import com.google.android.material.internal.C8177c;
import com.google.android.material.internal.C8203l;
import com.google.android.material.internal.C8209q;
import com.google.android.material.slider.AbstractC8257a;
import com.google.android.material.slider.AbstractC8258b;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.theme.p275a.C8328a;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p045g.C1542a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p055j.p056a.AbstractC1702a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1887c;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p101q.C1911a;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
import p078c.p084c.p085a.p096b.p109y.C1963a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider.class */
public abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends AbstractC8257a<S>, T extends AbstractC8258b<S>> extends View {

    /* renamed from: d */
    private static final String f37170d = BaseSlider.class.getSimpleName();

    /* renamed from: e */
    static final int f37171e = C1895k.Widget_MaterialComponents_Slider;

    /* renamed from: A */
    private int f37172A;

    /* renamed from: B */
    private int f37173B;

    /* renamed from: C */
    private int f37174C;

    /* renamed from: D */
    private int f37175D;

    /* renamed from: E */
    private int f37176E;

    /* renamed from: F */
    private int f37177F;

    /* renamed from: G */
    private float f37178G;

    /* renamed from: H */
    private MotionEvent f37179H;

    /* renamed from: I */
    private AbstractC8259c f37180I;

    /* renamed from: J */
    private boolean f37181J;

    /* renamed from: K */
    private float f37182K;

    /* renamed from: L */
    private float f37183L;

    /* renamed from: M */
    private ArrayList<Float> f37184M;

    /* renamed from: N */
    private int f37185N;

    /* renamed from: O */
    private int f37186O;

    /* renamed from: P */
    private float f37187P;

    /* renamed from: Q */
    private float[] f37188Q;

    /* renamed from: R */
    private boolean f37189R;

    /* renamed from: S */
    private int f37190S;

    /* renamed from: T */
    private boolean f37191T;

    /* renamed from: U */
    private boolean f37192U;

    /* renamed from: V */
    private boolean f37193V;

    /* renamed from: W */
    private ColorStateList f37194W;

    /* renamed from: a0 */
    private ColorStateList f37195a0;

    /* renamed from: b0 */
    private ColorStateList f37196b0;

    /* renamed from: c0 */
    private ColorStateList f37197c0;

    /* renamed from: d0 */
    private ColorStateList f37198d0;

    /* renamed from: e0 */
    private final C1938h f37199e0;

    /* renamed from: f */
    private final Paint f37200f;

    /* renamed from: f0 */
    private float f37201f0;

    /* renamed from: g */
    private final Paint f37202g;

    /* renamed from: g0 */
    private int f37203g0;

    /* renamed from: h */
    private final Paint f37204h;

    /* renamed from: i */
    private final Paint f37205i;

    /* renamed from: j */
    private final Paint f37206j;

    /* renamed from: k */
    private final Paint f37207k;

    /* renamed from: l */
    private final C8253e f37208l;

    /* renamed from: m */
    private final AccessibilityManager f37209m;

    /* renamed from: n */
    private BaseSlider<S, L, T>.RunnableC8252d f37210n;

    /* renamed from: o */
    private final AbstractC8254f f37211o;

    /* renamed from: p */
    private final List<C1963a> f37212p;

    /* renamed from: q */
    private final List<L> f37213q;

    /* renamed from: r */
    private final List<T> f37214r;

    /* renamed from: s */
    private boolean f37215s;

    /* renamed from: t */
    private ValueAnimator f37216t;

    /* renamed from: u */
    private ValueAnimator f37217u;

    /* renamed from: v */
    private final int f37218v;

    /* renamed from: w */
    private int f37219w;

    /* renamed from: x */
    private int f37220x;

    /* renamed from: y */
    private int f37221y;

    /* renamed from: z */
    private int f37222z;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider$SliderState.class */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new C8248a();

        /* renamed from: d */
        float f37223d;

        /* renamed from: e */
        float f37224e;

        /* renamed from: f */
        ArrayList<Float> f37225f;

        /* renamed from: g */
        float f37226g;

        /* renamed from: h */
        boolean f37227h;

        /* renamed from: com.google.android.material.slider.BaseSlider$SliderState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider$SliderState$a.class */
        static final class C8248a implements Parcelable.Creator<SliderState> {
            C8248a() {
            }

            /* renamed from: a */
            public SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel, null);
            }

            /* renamed from: b */
            public SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        }

        private SliderState(Parcel parcel) {
            super(parcel);
            this.f37223d = parcel.readFloat();
            this.f37224e = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.f37225f = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f37226g = parcel.readFloat();
            this.f37227h = parcel.createBooleanArray()[0];
        }

        /* synthetic */ SliderState(Parcel parcel, C8249a c8249a) {
            this(parcel);
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f37223d);
            parcel.writeFloat(this.f37224e);
            parcel.writeList(this.f37225f);
            parcel.writeFloat(this.f37226g);
            parcel.writeBooleanArray(new boolean[]{this.f37227h});
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider$a.class */
    public class C8249a implements AbstractC8254f {

        /* renamed from: a */
        final /* synthetic */ AttributeSet f37228a;

        /* renamed from: b */
        final /* synthetic */ int f37229b;

        C8249a(AttributeSet attributeSet, int i) {
            BaseSlider.this = r4;
            this.f37228a = attributeSet;
            this.f37229b = i;
        }

        @Override // com.google.android.material.slider.BaseSlider.AbstractC8254f
        /* renamed from: a */
        public C1963a mo4221a() {
            TypedArray m4462h = C8203l.m4462h(BaseSlider.this.getContext(), this.f37228a, C1896l.Slider, this.f37229b, BaseSlider.f37171e, new int[0]);
            C1963a m4276R = BaseSlider.m4276R(BaseSlider.this.getContext(), m4462h);
            m4462h.recycle();
            return m4276R;
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider$b.class */
    public class C8250b implements ValueAnimator.AnimatorUpdateListener {
        C8250b() {
            BaseSlider.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            for (C1963a c1963a : BaseSlider.this.f37212p) {
                c1963a.m28447B0(floatValue);
            }
            C1679w.m29293h0(BaseSlider.this);
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider$c.class */
    public class C8251c extends AnimatorListenerAdapter {
        C8251c() {
            BaseSlider.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            for (C1963a c1963a : BaseSlider.this.f37212p) {
                C8209q.m4448e(BaseSlider.this).mo4453b(c1963a);
            }
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider$d.class */
    public class RunnableC8252d implements Runnable {

        /* renamed from: d */
        int f37233d;

        private RunnableC8252d() {
            BaseSlider.this = r4;
            this.f37233d = -1;
        }

        /* synthetic */ RunnableC8252d(BaseSlider baseSlider, C8249a c8249a) {
            this();
        }

        /* renamed from: a */
        void m4227a(int i) {
            this.f37233d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f37208l.m29178W(this.f37233d, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.slider.BaseSlider$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider$e.class */
    public static class C8253e extends AbstractC1702a {

        /* renamed from: q */
        private final BaseSlider<?, ?, ?> f37235q;

        /* renamed from: r */
        Rect f37236r = new Rect();

        C8253e(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f37235q = baseSlider;
        }

        /* renamed from: Y */
        private String m4222Y(int i) {
            return i == this.f37235q.getValues().size() - 1 ? this.f37235q.getContext().getString(C1894j.material_slider_range_end) : i == 0 ? this.f37235q.getContext().getString(C1894j.material_slider_range_start) : "";
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: B */
        protected int mo4226B(float f, float f2) {
            for (int i = 0; i < this.f37235q.getValues().size(); i++) {
                this.f37235q.m4263c0(i, this.f37236r);
                if (this.f37236r.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: C */
        protected void mo4225C(List<Integer> list) {
            for (int i = 0; i < this.f37235q.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: L */
        protected boolean mo4224L(int i, int i2, Bundle bundle) {
            if (!this.f37235q.isEnabled()) {
                return false;
            }
            if (i2 != 4096 && i2 != 8192) {
                if (i2 != 16908349 || bundle == null || !bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                    return false;
                }
                if (!this.f37235q.m4267a0(i, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                    return false;
                }
                this.f37235q.m4261d0();
                this.f37235q.postInvalidate();
                m29192E(i);
                return true;
            }
            float m4248k = this.f37235q.m4248k(20);
            float f = m4248k;
            if (i2 == 8192) {
                f = -m4248k;
            }
            float f2 = f;
            if (this.f37235q.m4288F()) {
                f2 = -f;
            }
            if (!this.f37235q.m4267a0(i, C1542a.m29770a(this.f37235q.getValues().get(i).floatValue() + f2, this.f37235q.getValueFrom(), this.f37235q.getValueTo()))) {
                return false;
            }
            this.f37235q.m4261d0();
            this.f37235q.postInvalidate();
            m29192E(i);
            return true;
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: P */
        protected void mo4223P(int i, C1634c c1634c) {
            c1634c.m29492b(C1634c.C1635a.f6276H);
            List<Float> values = this.f37235q.getValues();
            float floatValue = values.get(i).floatValue();
            float valueFrom = this.f37235q.getValueFrom();
            float valueTo = this.f37235q.getValueTo();
            if (this.f37235q.isEnabled()) {
                if (floatValue > valueFrom) {
                    c1634c.m29494a(8192);
                }
                if (floatValue < valueTo) {
                    c1634c.m29494a(4096);
                }
            }
            c1634c.m29453u0(C1634c.C1638d.m29435a(1, valueFrom, valueTo, floatValue));
            c1634c.m29489c0(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f37235q.getContentDescription() != null) {
                sb.append(this.f37235q.getContentDescription());
                sb.append(",");
            }
            if (values.size() > 1) {
                sb.append(m4222Y(i));
                sb.append(this.f37235q.m4231y(floatValue));
            }
            c1634c.m29481g0(sb.toString());
            this.f37235q.m4263c0(i, this.f37236r);
            c1634c.m29497X(this.f37236r);
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/slider/BaseSlider$f.class */
    public interface AbstractC8254f {
        /* renamed from: a */
        C1963a mo4221a();
    }

    public BaseSlider(Context context) {
        this(context, null);
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.sliderStyle);
    }

    public BaseSlider(Context context, AttributeSet attributeSet, int i) {
        super(C8328a.m3881c(context, attributeSet, i, f37171e), attributeSet, i);
        this.f37212p = new ArrayList();
        this.f37213q = new ArrayList();
        this.f37214r = new ArrayList();
        this.f37215s = false;
        this.f37181J = false;
        this.f37184M = new ArrayList<>();
        this.f37185N = -1;
        this.f37186O = -1;
        this.f37187P = 0.0f;
        this.f37189R = true;
        this.f37192U = false;
        C1938h c1938h = new C1938h();
        this.f37199e0 = c1938h;
        this.f37203g0 = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f37200f = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = new Paint();
        this.f37202g = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        Paint paint3 = new Paint(1);
        this.f37204h = paint3;
        paint3.setStyle(Paint.Style.FILL);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.f37205i = paint4;
        paint4.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint();
        this.f37206j = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        paint5.setStrokeCap(Paint.Cap.ROUND);
        Paint paint6 = new Paint();
        this.f37207k = paint6;
        paint6.setStyle(Paint.Style.STROKE);
        paint6.setStrokeCap(Paint.Cap.ROUND);
        m4287G(context2.getResources());
        this.f37211o = new C8249a(attributeSet, i);
        m4274U(context2, attributeSet, i);
        setFocusable(true);
        setClickable(true);
        c1938h.m28609i0(2);
        this.f37218v = ViewConfiguration.get(context2).getScaledTouchSlop();
        C8253e c8253e = new C8253e(this);
        this.f37208l = c8253e;
        C1679w.m29273r0(this, c8253e);
        this.f37209m = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    /* renamed from: A */
    private float m4292A(int i, float f) {
        float f2 = 0.0f;
        if (this.f37187P == 0.0f) {
            f2 = getMinSeparation();
        }
        float f3 = f2;
        if (this.f37203g0 == 0) {
            f3 = m4240p(f2);
        }
        float f4 = f3;
        if (m4288F()) {
            f4 = -f3;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        return C1542a.m29770a(f, i3 < 0 ? this.f37182K : this.f37184M.get(i3).floatValue() + f4, i2 >= this.f37184M.size() ? this.f37183L : this.f37184M.get(i2).floatValue() - f4);
    }

    /* renamed from: B */
    private int m4291B(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    /* renamed from: D */
    private void m4290D() {
        this.f37200f.setStrokeWidth(this.f37172A);
        this.f37202g.setStrokeWidth(this.f37172A);
        this.f37206j.setStrokeWidth(this.f37172A / 2.0f);
        this.f37207k.setStrokeWidth(this.f37172A / 2.0f);
    }

    /* renamed from: E */
    private boolean m4289E() {
        ViewParent parent = getParent();
        while (true) {
            ViewParent viewParent = parent;
            boolean z = false;
            if (viewParent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) viewParent;
                if (viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) {
                    z = true;
                }
                if (z && viewGroup.shouldDelayChildPressedState()) {
                    return true;
                }
                parent = viewParent.getParent();
            } else {
                return false;
            }
        }
    }

    /* renamed from: G */
    private void m4287G(Resources resources) {
        this.f37221y = resources.getDimensionPixelSize(C1888d.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C1888d.mtrl_slider_track_side_padding);
        this.f37219w = dimensionPixelOffset;
        this.f37173B = dimensionPixelOffset;
        this.f37220x = resources.getDimensionPixelSize(C1888d.mtrl_slider_thumb_radius);
        this.f37174C = resources.getDimensionPixelOffset(C1888d.mtrl_slider_track_top);
        this.f37177F = resources.getDimensionPixelSize(C1888d.mtrl_slider_label_padding);
    }

    /* renamed from: H */
    private void m4286H() {
        if (this.f37187P <= 0.0f) {
            return;
        }
        m4257f0();
        int min = Math.min((int) (((this.f37183L - this.f37182K) / this.f37187P) + 1.0f), (this.f37190S / (this.f37172A * 2)) + 1);
        float[] fArr = this.f37188Q;
        if (fArr == null || fArr.length != min * 2) {
            this.f37188Q = new float[min * 2];
        }
        float f = this.f37190S / (min - 1);
        for (int i = 0; i < min * 2; i += 2) {
            float[] fArr2 = this.f37188Q;
            fArr2[i] = this.f37173B + ((i / 2) * f);
            fArr2[i + 1] = m4246l();
        }
    }

    /* renamed from: I */
    private void m4285I(Canvas canvas, int i, int i2) {
        if (m4271X()) {
            int m4280N = (int) (this.f37173B + (m4280N(this.f37184M.get(this.f37186O).floatValue()) * i));
            if (Build.VERSION.SDK_INT < 28) {
                int i3 = this.f37176E;
                canvas.clipRect(m4280N - i3, i2 - i3, m4280N + i3, i3 + i2, Region.Op.UNION);
            }
            canvas.drawCircle(m4280N, i2, this.f37176E, this.f37205i);
        }
    }

    /* renamed from: J */
    private void m4284J(Canvas canvas) {
        if (!this.f37189R || this.f37187P <= 0.0f) {
            return;
        }
        float[] activeRange = getActiveRange();
        int m4275T = m4275T(this.f37188Q, activeRange[0]);
        int m4275T2 = m4275T(this.f37188Q, activeRange[1]);
        int i = m4275T * 2;
        canvas.drawPoints(this.f37188Q, 0, i, this.f37206j);
        int i2 = m4275T2 * 2;
        canvas.drawPoints(this.f37188Q, i, i2 - i, this.f37207k);
        float[] fArr = this.f37188Q;
        canvas.drawPoints(fArr, i2, fArr.length - i2, this.f37206j);
    }

    /* renamed from: K */
    private void m4283K() {
        this.f37173B = this.f37219w + Math.max(this.f37175D - this.f37220x, 0);
        if (C1679w.m29313V(this)) {
            m4259e0(getWidth());
        }
    }

    /* renamed from: L */
    private boolean m4282L(int i) {
        int i2 = this.f37186O;
        int m29768c = (int) C1542a.m29768c(i2 + i, 0L, this.f37184M.size() - 1);
        this.f37186O = m29768c;
        if (m29768c == i2) {
            return false;
        }
        if (this.f37185N != -1) {
            this.f37185N = m29768c;
        }
        m4261d0();
        postInvalidate();
        return true;
    }

    /* renamed from: M */
    private boolean m4281M(int i) {
        int i2 = i;
        if (m4288F()) {
            i2 = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        return m4282L(i2);
    }

    /* renamed from: N */
    private float m4280N(float f) {
        float f2 = this.f37182K;
        float f3 = (f - f2) / (this.f37183L - f2);
        return m4288F() ? 1.0f - f3 : f3;
    }

    /* renamed from: O */
    private Boolean m4279O(int i, KeyEvent keyEvent) {
        if (i == 61) {
            return keyEvent.hasNoModifiers() ? Boolean.valueOf(m4282L(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(m4282L(-1)) : Boolean.FALSE;
        }
        if (i != 66) {
            if (i != 81) {
                if (i == 69) {
                    m4282L(-1);
                    return Boolean.TRUE;
                } else if (i != 70) {
                    switch (i) {
                        case 21:
                            m4281M(-1);
                            return Boolean.TRUE;
                        case 22:
                            m4281M(1);
                            return Boolean.TRUE;
                        case 23:
                            break;
                        default:
                            return null;
                    }
                }
            }
            m4282L(1);
            return Boolean.TRUE;
        }
        this.f37185N = this.f37186O;
        postInvalidate();
        return Boolean.TRUE;
    }

    /* renamed from: P */
    private void m4278P() {
        for (T t : this.f37214r) {
            t.m4210a(this);
        }
    }

    /* renamed from: Q */
    private void m4277Q() {
        for (T t : this.f37214r) {
            t.m4209b(this);
        }
    }

    /* renamed from: R */
    public static C1963a m4276R(Context context, TypedArray typedArray) {
        return C1963a.m28439u0(context, null, 0, typedArray.getResourceId(C1896l.Slider_labelStyle, C1895k.Widget_MaterialComponents_Tooltip));
    }

    /* renamed from: T */
    private static int m4275T(float[] fArr, float f) {
        return Math.round(f * ((fArr.length / 2) - 1));
    }

    /* renamed from: U */
    private void m4274U(Context context, AttributeSet attributeSet, int i) {
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.Slider, i, f37171e, new int[0]);
        this.f37182K = m4462h.getFloat(C1896l.Slider_android_valueFrom, 0.0f);
        this.f37183L = m4462h.getFloat(C1896l.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.f37182K));
        this.f37187P = m4462h.getFloat(C1896l.Slider_android_stepSize, 0.0f);
        int i2 = C1896l.Slider_trackColor;
        boolean hasValue = m4462h.hasValue(i2);
        int i3 = hasValue ? i2 : C1896l.Slider_trackColorInactive;
        if (!hasValue) {
            i2 = C1896l.Slider_trackColorActive;
        }
        ColorStateList m28686a = C1919c.m28686a(context, m4462h, i3);
        if (m28686a == null) {
            m28686a = C1433a.m30127c(context, C1887c.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(m28686a);
        ColorStateList m28686a2 = C1919c.m28686a(context, m4462h, i2);
        if (m28686a2 == null) {
            m28686a2 = C1433a.m30127c(context, C1887c.material_slider_active_track_color);
        }
        setTrackActiveTintList(m28686a2);
        this.f37199e0.m28625a0(C1919c.m28686a(context, m4462h, C1896l.Slider_thumbColor));
        int i4 = C1896l.Slider_thumbStrokeColor;
        if (m4462h.hasValue(i4)) {
            setThumbStrokeColor(C1919c.m28686a(context, m4462h, i4));
        }
        setThumbStrokeWidth(m4462h.getDimension(C1896l.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList m28686a3 = C1919c.m28686a(context, m4462h, C1896l.Slider_haloColor);
        if (m28686a3 == null) {
            m28686a3 = C1433a.m30127c(context, C1887c.material_slider_halo_color);
        }
        setHaloTintList(m28686a3);
        this.f37189R = m4462h.getBoolean(C1896l.Slider_tickVisible, true);
        int i5 = C1896l.Slider_tickColor;
        boolean hasValue2 = m4462h.hasValue(i5);
        int i6 = hasValue2 ? i5 : C1896l.Slider_tickColorInactive;
        if (!hasValue2) {
            i5 = C1896l.Slider_tickColorActive;
        }
        ColorStateList m28686a4 = C1919c.m28686a(context, m4462h, i6);
        if (m28686a4 == null) {
            m28686a4 = C1433a.m30127c(context, C1887c.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(m28686a4);
        ColorStateList m28686a5 = C1919c.m28686a(context, m4462h, i5);
        setTickActiveTintList(m28686a5 != null ? m28686a5 : C1433a.m30127c(context, C1887c.material_slider_active_tick_marks_color));
        setThumbRadius(m4462h.getDimensionPixelSize(C1896l.Slider_thumbRadius, 0));
        setHaloRadius(m4462h.getDimensionPixelSize(C1896l.Slider_haloRadius, 0));
        setThumbElevation(m4462h.getDimension(C1896l.Slider_thumbElevation, 0.0f));
        setTrackHeight(m4462h.getDimensionPixelSize(C1896l.Slider_trackHeight, 0));
        this.f37222z = m4462h.getInt(C1896l.Slider_labelBehavior, 0);
        if (!m4462h.getBoolean(C1896l.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        m4462h.recycle();
    }

    /* renamed from: V */
    private void m4273V(int i) {
        BaseSlider<S, L, T>.RunnableC8252d runnableC8252d = this.f37210n;
        if (runnableC8252d == null) {
            this.f37210n = new RunnableC8252d(this, null);
        } else {
            removeCallbacks(runnableC8252d);
        }
        this.f37210n.m4227a(i);
        postDelayed(this.f37210n, 200L);
    }

    /* renamed from: W */
    private void m4272W(C1963a c1963a, float f) {
        c1963a.m28446C0(m4231y(f));
        int m4280N = (this.f37173B + ((int) (m4280N(f) * this.f37190S))) - (c1963a.getIntrinsicWidth() / 2);
        int m4246l = m4246l() - (this.f37177F + this.f37175D);
        c1963a.setBounds(m4280N, m4246l - c1963a.getIntrinsicHeight(), c1963a.getIntrinsicWidth() + m4280N, m4246l);
        Rect rect = new Rect(c1963a.getBounds());
        C8177c.m4554c(C8209q.m4449d(this), this, rect);
        c1963a.setBounds(rect);
        C8209q.m4448e(this).mo4454a(c1963a);
    }

    /* renamed from: X */
    private boolean m4271X() {
        return this.f37191T || Build.VERSION.SDK_INT < 21 || !(getBackground() instanceof RippleDrawable);
    }

    /* renamed from: Y */
    private boolean m4270Y(float f) {
        return m4267a0(this.f37185N, f);
    }

    /* renamed from: Z */
    private double m4269Z(float f) {
        float f2 = this.f37187P;
        if (f2 > 0.0f) {
            int i = (int) ((this.f37183L - this.f37182K) / f2);
            return Math.round(f * i) / i;
        }
        return f;
    }

    /* renamed from: a0 */
    public boolean m4267a0(int i, float f) {
        if (Math.abs(f - this.f37184M.get(i).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.f37184M.set(i, Float.valueOf(m4292A(i, f)));
        this.f37186O = i;
        m4239q(i);
        return true;
    }

    /* renamed from: b0 */
    private boolean m4265b0() {
        return m4270Y(getValueOfTouchPosition());
    }

    /* renamed from: d0 */
    public void m4261d0() {
        if (m4271X() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (!(background instanceof RippleDrawable)) {
            return;
        }
        int m4280N = (int) ((m4280N(this.f37184M.get(this.f37186O).floatValue()) * this.f37190S) + this.f37173B);
        int m4246l = m4246l();
        int i = this.f37176E;
        C0615a.m33218l(background, m4280N - i, m4246l - i, m4280N + i, m4246l + i);
    }

    /* renamed from: e0 */
    private void m4259e0(int i) {
        this.f37190S = Math.max(i - (this.f37173B * 2), 0);
        m4286H();
    }

    /* renamed from: f0 */
    private void m4257f0() {
        if (this.f37193V) {
            m4253h0();
            m4251i0();
            m4255g0();
            m4249j0();
            m4243m0();
            this.f37193V = false;
        }
    }

    /* renamed from: g0 */
    private void m4255g0() {
        if (this.f37187P <= 0.0f || m4247k0(this.f37183L)) {
            return;
        }
        throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(this.f37187P), Float.toString(this.f37182K), Float.toString(this.f37183L)));
    }

    private float[] getActiveRange() {
        float floatValue = ((Float) Collections.max(getValues())).floatValue();
        float floatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.f37184M.size() == 1) {
            floatValue2 = this.f37182K;
        }
        float m4280N = m4280N(floatValue2);
        float m4280N2 = m4280N(floatValue);
        return m4288F() ? new float[]{m4280N2, m4280N} : new float[]{m4280N, m4280N2};
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    private float getValueOfTouchPosition() {
        ?? m4269Z = m4269Z(this.f37201f0);
        char c = m4269Z;
        if (m4288F()) {
            c = 1.0d - m4269Z;
        }
        float f = this.f37183L;
        float f2 = this.f37182K;
        return (float) ((c * (f - f2)) + f2);
    }

    private float getValueOfTouchPositionAbsolute() {
        float f = this.f37201f0;
        float f2 = f;
        if (m4288F()) {
            f2 = 1.0f - f;
        }
        float f3 = this.f37183L;
        float f4 = this.f37182K;
        return (f2 * (f3 - f4)) + f4;
    }

    /* renamed from: h */
    private void m4254h(C1963a c1963a) {
        c1963a.m28448A0(C8209q.m4449d(this));
    }

    /* renamed from: h0 */
    private void m4253h0() {
        if (this.f37182K < this.f37183L) {
            return;
        }
        throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.toString(this.f37182K), Float.toString(this.f37183L)));
    }

    /* renamed from: i */
    private Float m4252i(int i) {
        float m4248k = this.f37192U ? m4248k(20) : m4250j();
        if (i == 21) {
            if (!m4288F()) {
                m4248k = -m4248k;
            }
            return Float.valueOf(m4248k);
        } else if (i == 22) {
            float f = m4248k;
            if (m4288F()) {
                f = -m4248k;
            }
            return Float.valueOf(f);
        } else if (i == 69) {
            return Float.valueOf(-m4248k);
        } else {
            if (i != 70 && i != 81) {
                return null;
            }
            return Float.valueOf(m4248k);
        }
    }

    /* renamed from: i0 */
    private void m4251i0() {
        if (this.f37183L > this.f37182K) {
            return;
        }
        throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.toString(this.f37183L), Float.toString(this.f37182K)));
    }

    /* renamed from: j */
    private float m4250j() {
        float f = this.f37187P;
        float f2 = f;
        if (f == 0.0f) {
            f2 = 1.0f;
        }
        return f2;
    }

    /* renamed from: j0 */
    private void m4249j0() {
        Iterator<Float> it = this.f37184M.iterator();
        while (it.hasNext()) {
            Float next = it.next();
            if (next.floatValue() < this.f37182K || next.floatValue() > this.f37183L) {
                throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", Float.toString(next.floatValue()), Float.toString(this.f37182K), Float.toString(this.f37183L)));
            }
            if (this.f37187P > 0.0f && !m4247k0(next.floatValue())) {
                throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", Float.toString(next.floatValue()), Float.toString(this.f37182K), Float.toString(this.f37187P), Float.toString(this.f37187P)));
            }
        }
    }

    /* renamed from: k */
    public float m4248k(int i) {
        float f;
        float f2;
        float m4250j = m4250j();
        return (this.f37183L - this.f37182K) / m4250j <= i ? m4250j : Math.round(f / f2) * m4250j;
    }

    /* renamed from: k0 */
    private boolean m4247k0(float f) {
        double doubleValue = new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.f37182K))).divide(new BigDecimal(Float.toString(this.f37187P)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < 1.0E-4d;
    }

    /* renamed from: l */
    private int m4246l() {
        int i = this.f37174C;
        int i2 = 0;
        if (this.f37222z == 1) {
            i2 = this.f37212p.get(0).getIntrinsicHeight();
        }
        return i + i2;
    }

    /* renamed from: l0 */
    private float m4245l0(float f) {
        return (m4280N(f) * this.f37190S) + this.f37173B;
    }

    /* renamed from: m */
    private ValueAnimator m4244m(boolean z) {
        float m4230z = m4230z(z ? this.f37217u : this.f37216t, z ? 0.0f : 1.0f);
        float f = 0.0f;
        if (z) {
            f = 1.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m4230z, f);
        ofFloat.setDuration((z ? 83 : 117) == 1 ? 1L : 0L);
        ofFloat.setInterpolator(z ? C1897a.f6817e : C1897a.f6815c);
        ofFloat.addUpdateListener(new C8250b());
        return ofFloat;
    }

    /* renamed from: m0 */
    private void m4243m0() {
        float f = this.f37187P;
        if (f == 0.0f) {
            return;
        }
        if (((int) f) != f) {
            Log.w(f37170d, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "stepSize", Float.valueOf(f)));
        }
        float f2 = this.f37182K;
        if (((int) f2) != f2) {
            Log.w(f37170d, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueFrom", Float.valueOf(f2)));
        }
        float f3 = this.f37183L;
        if (((int) f3) == f3) {
            return;
        }
        Log.w(f37170d, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueTo", Float.valueOf(f3)));
    }

    /* renamed from: n */
    private void m4242n() {
        if (this.f37212p.size() > this.f37184M.size()) {
            List<C1963a> subList = this.f37212p.subList(this.f37184M.size(), this.f37212p.size());
            for (C1963a c1963a : subList) {
                if (C1679w.m29314U(this)) {
                    m4241o(c1963a);
                }
            }
            subList.clear();
        }
        while (this.f37212p.size() < this.f37184M.size()) {
            C1963a mo4221a = this.f37211o.mo4221a();
            this.f37212p.add(mo4221a);
            if (C1679w.m29314U(this)) {
                m4254h(mo4221a);
            }
        }
        int i = 1;
        if (this.f37212p.size() == 1) {
            i = 0;
        }
        for (C1963a c1963a2 : this.f37212p) {
            c1963a2.m28601m0(i);
        }
    }

    /* renamed from: o */
    private void m4241o(C1963a c1963a) {
        AbstractC8208p m4448e = C8209q.m4448e(this);
        if (m4448e != null) {
            m4448e.mo4453b(c1963a);
            c1963a.m28437w0(C8209q.m4449d(this));
        }
    }

    /* renamed from: p */
    private float m4240p(float f) {
        if (f == 0.0f) {
            return 0.0f;
        }
        float f2 = (f - this.f37173B) / this.f37190S;
        float f3 = this.f37182K;
        return (f2 * (f3 - this.f37183L)) + f3;
    }

    /* renamed from: q */
    private void m4239q(int i) {
        for (L l : this.f37213q) {
            l.m4211a(this, this.f37184M.get(i).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f37209m;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        m4273V(i);
    }

    /* renamed from: r */
    private void m4238r() {
        for (L l : this.f37213q) {
            Iterator<Float> it = this.f37184M.iterator();
            while (it.hasNext()) {
                l.m4211a(this, it.next().floatValue(), false);
            }
        }
    }

    /* renamed from: s */
    private void m4237s(Canvas canvas, int i, int i2) {
        float[] activeRange = getActiveRange();
        int i3 = this.f37173B;
        float f = i3;
        float f2 = activeRange[1];
        float f3 = i;
        float f4 = i3;
        float f5 = activeRange[0];
        float f6 = i2;
        canvas.drawLine(f4 + (f5 * f3), f6, f + (f2 * f3), f6, this.f37202g);
    }

    private void setValuesInternal(ArrayList<Float> arrayList) {
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.f37184M.size() == arrayList.size() && this.f37184M.equals(arrayList)) {
                return;
            }
            this.f37184M = arrayList;
            this.f37193V = true;
            this.f37186O = 0;
            m4261d0();
            m4242n();
            m4238r();
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    /* renamed from: t */
    private void m4236t(Canvas canvas, int i, int i2) {
        int i3;
        float[] activeRange = getActiveRange();
        float f = this.f37173B;
        float f2 = activeRange[1];
        float f3 = i;
        float f4 = f + (f2 * f3);
        if (f4 < i3 + i) {
            float f5 = i2;
            canvas.drawLine(f4, f5, i3 + i, f5, this.f37200f);
        }
        int i4 = this.f37173B;
        float f6 = i4 + (activeRange[0] * f3);
        if (f6 > i4) {
            float f7 = i4;
            float f8 = i2;
            canvas.drawLine(f7, f8, f6, f8, this.f37200f);
        }
    }

    /* renamed from: u */
    private void m4235u(Canvas canvas, int i, int i2) {
        if (!isEnabled()) {
            Iterator<Float> it = this.f37184M.iterator();
            while (it.hasNext()) {
                canvas.drawCircle(this.f37173B + (m4280N(it.next().floatValue()) * i), i2, this.f37175D, this.f37204h);
            }
        }
        Iterator<Float> it2 = this.f37184M.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            canvas.save();
            int i3 = this.f37173B;
            int m4280N = (int) (m4280N(next.floatValue()) * i);
            int i4 = this.f37175D;
            canvas.translate((i3 + m4280N) - i4, i2 - i4);
            this.f37199e0.draw(canvas);
            canvas.restore();
        }
    }

    /* renamed from: v */
    private void m4234v() {
        if (this.f37222z == 2) {
            return;
        }
        if (!this.f37215s) {
            this.f37215s = true;
            ValueAnimator m4244m = m4244m(true);
            this.f37216t = m4244m;
            this.f37217u = null;
            m4244m.start();
        }
        Iterator<C1963a> it = this.f37212p.iterator();
        for (int i = 0; i < this.f37184M.size() && it.hasNext(); i++) {
            if (i != this.f37186O) {
                m4272W(it.next(), this.f37184M.get(i).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f37212p.size()), Integer.valueOf(this.f37184M.size())));
        }
        m4272W(it.next(), this.f37184M.get(this.f37186O).floatValue());
    }

    /* renamed from: w */
    private void m4233w() {
        if (this.f37215s) {
            this.f37215s = false;
            ValueAnimator m4244m = m4244m(false);
            this.f37217u = m4244m;
            this.f37216t = null;
            m4244m.addListener(new C8251c());
            this.f37217u.start();
        }
    }

    /* renamed from: x */
    private void m4232x(int i) {
        if (i == 1) {
            m4282L(Integer.MAX_VALUE);
        } else if (i == 2) {
            m4282L(Integer.MIN_VALUE);
        } else if (i == 17) {
            m4281M(Integer.MAX_VALUE);
        } else if (i != 66) {
        } else {
            m4281M(Integer.MIN_VALUE);
        }
    }

    /* renamed from: y */
    public String m4231y(float f) {
        if (mo4213C()) {
            return this.f37180I.m4208a(f);
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    /* renamed from: z */
    private static float m4230z(ValueAnimator valueAnimator, float f) {
        float f2 = f;
        if (valueAnimator != null) {
            f2 = f;
            if (valueAnimator.isRunning()) {
                f2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                valueAnimator.cancel();
            }
        }
        return f2;
    }

    /* renamed from: C */
    public boolean mo4213C() {
        return this.f37180I != null;
    }

    /* renamed from: F */
    final boolean m4288F() {
        boolean z = true;
        if (C1679w.m29346C(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: S */
    protected boolean mo4212S() {
        float f;
        boolean z = true;
        if (this.f37185N != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float m4245l0 = m4245l0(valueOfTouchPositionAbsolute);
        this.f37185N = 0;
        float abs = Math.abs(this.f37184M.get(0).floatValue() - valueOfTouchPositionAbsolute);
        int i = 1;
        while (i < this.f37184M.size()) {
            float abs2 = Math.abs(this.f37184M.get(i).floatValue() - valueOfTouchPositionAbsolute);
            float m4245l02 = m4245l0(this.f37184M.get(i).floatValue());
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z2 = !m4288F() ? m4245l02 - m4245l0 < 0.0f : m4245l02 - m4245l0 > 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.f37185N = i;
            } else {
                f = abs;
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else if (Math.abs(m4245l02 - m4245l0) < this.f37218v) {
                    this.f37185N = -1;
                    return false;
                } else {
                    f = abs;
                    if (z2) {
                        this.f37185N = i;
                    }
                }
                i++;
                abs = f;
            }
            f = abs2;
            i++;
            abs = f;
        }
        if (this.f37185N == -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: c0 */
    void m4263c0(int i, Rect rect) {
        int m4280N = this.f37173B + ((int) (m4280N(getValues().get(i).floatValue()) * this.f37190S));
        int m4246l = m4246l();
        int i2 = this.f37175D;
        rect.set(m4280N - i2, m4246l - i2, m4280N + i2, m4246l + i2);
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f37208l.m29167v(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f37200f.setColor(m4291B(this.f37198d0));
        this.f37202g.setColor(m4291B(this.f37197c0));
        this.f37206j.setColor(m4291B(this.f37196b0));
        this.f37207k.setColor(m4291B(this.f37195a0));
        for (C1963a c1963a : this.f37212p) {
            if (c1963a.isStateful()) {
                c1963a.setState(getDrawableState());
            }
        }
        if (this.f37199e0.isStateful()) {
            this.f37199e0.setState(getDrawableState());
        }
        this.f37205i.setColor(m4291B(this.f37194W));
        this.f37205i.setAlpha(63);
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    final int getAccessibilityFocusedVirtualViewId() {
        return this.f37208l.m29165x();
    }

    public int getActiveThumbIndex() {
        return this.f37185N;
    }

    public int getFocusedThumbIndex() {
        return this.f37186O;
    }

    public int getHaloRadius() {
        return this.f37176E;
    }

    public ColorStateList getHaloTintList() {
        return this.f37194W;
    }

    public int getLabelBehavior() {
        return this.f37222z;
    }

    protected float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.f37187P;
    }

    public float getThumbElevation() {
        return this.f37199e0.m28588w();
    }

    public int getThumbRadius() {
        return this.f37175D;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f37199e0.m28647E();
    }

    public float getThumbStrokeWidth() {
        return this.f37199e0.m28645G();
    }

    public ColorStateList getThumbTintList() {
        return this.f37199e0.m28587x();
    }

    public ColorStateList getTickActiveTintList() {
        return this.f37195a0;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.f37196b0;
    }

    public ColorStateList getTickTintList() {
        if (this.f37196b0.equals(this.f37195a0)) {
            return this.f37195a0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.f37197c0;
    }

    public int getTrackHeight() {
        return this.f37172A;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.f37198d0;
    }

    public int getTrackSidePadding() {
        return this.f37173B;
    }

    public ColorStateList getTrackTintList() {
        if (this.f37198d0.equals(this.f37197c0)) {
            return this.f37197c0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.f37190S;
    }

    public float getValueFrom() {
        return this.f37182K;
    }

    public float getValueTo() {
        return this.f37183L;
    }

    public List<Float> getValues() {
        return new ArrayList(this.f37184M);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (C1963a c1963a : this.f37212p) {
            m4254h(c1963a);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        BaseSlider<S, L, T>.RunnableC8252d runnableC8252d = this.f37210n;
        if (runnableC8252d != null) {
            removeCallbacks(runnableC8252d);
        }
        this.f37215s = false;
        for (C1963a c1963a : this.f37212p) {
            m4241o(c1963a);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f37193V) {
            m4257f0();
            m4286H();
        }
        super.onDraw(canvas);
        int m4246l = m4246l();
        m4236t(canvas, this.f37190S, m4246l);
        if (((Float) Collections.max(getValues())).floatValue() > this.f37182K) {
            m4237s(canvas, this.f37190S, m4246l);
        }
        m4284J(canvas);
        if ((this.f37181J || isFocused()) && isEnabled()) {
            m4285I(canvas, this.f37190S, m4246l);
            if (this.f37185N != -1) {
                m4234v();
            }
        }
        m4235u(canvas, this.f37190S, m4246l);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            m4232x(i);
            this.f37208l.m29179V(this.f37186O);
            return;
        }
        this.f37185N = -1;
        m4233w();
        this.f37208l.m29174o(this.f37186O);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.f37184M.size() == 1) {
            this.f37185N = 0;
        }
        if (this.f37185N == -1) {
            Boolean m4279O = m4279O(i, keyEvent);
            return m4279O != null ? m4279O.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        this.f37192U |= keyEvent.isLongPress();
        Float m4252i = m4252i(i);
        if (m4252i != null) {
            if (!m4270Y(this.f37184M.get(this.f37185N).floatValue() + m4252i.floatValue())) {
                return true;
            }
            m4261d0();
            postInvalidate();
            return true;
        }
        if (i != 23) {
            if (i == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return m4282L(1);
                }
                if (!keyEvent.isShiftPressed()) {
                    return false;
                }
                return m4282L(-1);
            } else if (i != 66) {
                return super.onKeyDown(i, keyEvent);
            }
        }
        this.f37185N = -1;
        m4233w();
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.f37192U = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.f37221y;
        int i4 = 0;
        if (this.f37222z == 1) {
            i4 = this.f37212p.get(0).getIntrinsicHeight();
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3 + i4, 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.f37182K = sliderState.f37223d;
        this.f37183L = sliderState.f37224e;
        setValuesInternal(sliderState.f37225f);
        this.f37187P = sliderState.f37226g;
        if (sliderState.f37227h) {
            requestFocus();
        }
        m4238r();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f37223d = this.f37182K;
        sliderState.f37224e = this.f37183L;
        sliderState.f37225f = new ArrayList<>(this.f37184M);
        sliderState.f37226g = this.f37187P;
        sliderState.f37227h = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        m4259e0(i);
        m4261d0();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float f = (x - this.f37173B) / this.f37190S;
        this.f37201f0 = f;
        float max = Math.max(0.0f, f);
        this.f37201f0 = max;
        this.f37201f0 = Math.min(1.0f, max);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f37178G = x;
            if (!m4289E()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (mo4212S()) {
                    requestFocus();
                    this.f37181J = true;
                    m4265b0();
                    m4261d0();
                    invalidate();
                    m4278P();
                }
            }
        } else if (actionMasked == 1) {
            this.f37181J = false;
            MotionEvent motionEvent2 = this.f37179H;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.f37179H.getX() - motionEvent.getX()) <= this.f37218v && Math.abs(this.f37179H.getY() - motionEvent.getY()) <= this.f37218v && mo4212S()) {
                m4278P();
            }
            if (this.f37185N != -1) {
                m4265b0();
                this.f37185N = -1;
                m4277Q();
            }
            m4233w();
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.f37181J) {
                if (m4289E() && Math.abs(x - this.f37178G) < this.f37218v) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                m4278P();
            }
            if (mo4212S()) {
                this.f37181J = true;
                m4265b0();
                m4261d0();
                invalidate();
            }
        }
        setPressed(this.f37181J);
        this.f37179H = MotionEvent.obtain(motionEvent);
        return true;
    }

    public void setActiveThumbIndex(int i) {
        this.f37185N = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.f37184M.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f37186O = i;
        this.f37208l.m29179V(i);
        postInvalidate();
    }

    public void setHaloRadius(int i) {
        if (i == this.f37176E) {
            return;
        }
        this.f37176E = i;
        Drawable background = getBackground();
        if (m4271X() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            C1911a.m28710a((RippleDrawable) background, this.f37176E);
        }
    }

    public void setHaloRadiusResource(int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f37194W)) {
            return;
        }
        this.f37194W = colorStateList;
        Drawable background = getBackground();
        if (!m4271X() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f37205i.setColor(m4291B(colorStateList));
        this.f37205i.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i) {
        if (this.f37222z != i) {
            this.f37222z = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(AbstractC8259c abstractC8259c) {
        this.f37180I = abstractC8259c;
    }

    public void setSeparationUnit(int i) {
        this.f37203g0 = i;
    }

    public void setStepSize(float f) {
        if (f >= 0.0f) {
            if (this.f37187P == f) {
                return;
            }
            this.f37187P = f;
            this.f37193V = true;
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(f), Float.toString(this.f37182K), Float.toString(this.f37183L)));
    }

    public void setThumbElevation(float f) {
        this.f37199e0.m28626Z(f);
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbRadius(int i) {
        if (i == this.f37175D) {
            return;
        }
        this.f37175D = i;
        m4283K();
        this.f37199e0.setShapeAppearanceModel(C1946m.m28575a().m28524q(0, this.f37175D).m28528m());
        C1938h c1938h = this.f37199e0;
        int i2 = this.f37175D;
        c1938h.setBounds(0, 0, i2 * 2, i2 * 2);
        postInvalidate();
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.f37199e0.m28603l0(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            setThumbStrokeColor(C1433a.m30127c(getContext(), i));
        }
    }

    public void setThumbStrokeWidth(float f) {
        this.f37199e0.m28601m0(f);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f37199e0.m28587x())) {
            return;
        }
        this.f37199e0.m28625a0(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f37195a0)) {
            return;
        }
        this.f37195a0 = colorStateList;
        this.f37207k.setColor(m4291B(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f37196b0)) {
            return;
        }
        this.f37196b0 = colorStateList;
        this.f37206j.setColor(m4291B(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z) {
        if (this.f37189R != z) {
            this.f37189R = z;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f37197c0)) {
            return;
        }
        this.f37197c0 = colorStateList;
        this.f37202g.setColor(m4291B(colorStateList));
        invalidate();
    }

    public void setTrackHeight(int i) {
        if (this.f37172A != i) {
            this.f37172A = i;
            m4290D();
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f37198d0)) {
            return;
        }
        this.f37198d0 = colorStateList;
        this.f37200f.setColor(m4291B(colorStateList));
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.f37182K = f;
        this.f37193V = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.f37183L = f;
        this.f37193V = true;
        postInvalidate();
    }

    public void setValues(List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }

    public void setValues(Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }
}
