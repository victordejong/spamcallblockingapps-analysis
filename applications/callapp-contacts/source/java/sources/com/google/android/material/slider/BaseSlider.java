package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
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
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p032b.C0770a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.customview.p039a.AbstractC0964a;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.internal.AbstractC14653q;
import com.google.android.material.internal.C14619b;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p374k.C14666d;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14674i;
import com.google.android.material.p374k.C14678m;
import com.google.android.material.p375l.C14696a;
import com.google.android.material.slider.BaseSlider;
import io.objectbox.model.PropertyFlags;
import java.lang.Object;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider.class */
public abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends Object<S>, T extends Object<S>> extends View {

    /* renamed from: a */
    static final int f53738a = C14376a.C14387k.Widget_MaterialComponents_Slider;

    /* renamed from: b */
    private static final String f53739b = "BaseSlider";

    /* renamed from: A */
    private int f53740A;

    /* renamed from: B */
    private int f53741B;

    /* renamed from: C */
    private int f53742C;

    /* renamed from: D */
    private float f53743D;

    /* renamed from: E */
    private MotionEvent f53744E;

    /* renamed from: F */
    private AbstractC14739a f53745F;

    /* renamed from: G */
    private boolean f53746G;

    /* renamed from: H */
    private float f53747H;

    /* renamed from: I */
    private float f53748I;

    /* renamed from: J */
    private ArrayList<Float> f53749J;

    /* renamed from: K */
    private int f53750K;

    /* renamed from: L */
    private int f53751L;

    /* renamed from: M */
    private float f53752M;

    /* renamed from: N */
    private float[] f53753N;

    /* renamed from: O */
    private boolean f53754O;

    /* renamed from: P */
    private int f53755P;

    /* renamed from: Q */
    private boolean f53756Q;

    /* renamed from: R */
    private boolean f53757R;

    /* renamed from: S */
    private boolean f53758S;

    /* renamed from: T */
    private ColorStateList f53759T;

    /* renamed from: U */
    private ColorStateList f53760U;

    /* renamed from: V */
    private ColorStateList f53761V;

    /* renamed from: W */
    private ColorStateList f53762W;

    /* renamed from: aa */
    private ColorStateList f53763aa;

    /* renamed from: ab */
    private final C14670h f53764ab;

    /* renamed from: ac */
    private float f53765ac;

    /* renamed from: ad */
    private int f53766ad;

    /* renamed from: c */
    private final Paint f53767c;

    /* renamed from: d */
    private final Paint f53768d;

    /* renamed from: e */
    private final Paint f53769e;

    /* renamed from: f */
    private final Paint f53770f;

    /* renamed from: g */
    private final Paint f53771g;

    /* renamed from: h */
    private final Paint f53772h;

    /* renamed from: i */
    private final C14735b f53773i;

    /* renamed from: j */
    private final AccessibilityManager f53774j;

    /* renamed from: k */
    private BaseSlider<S, L, T>.RunnableC14734a f53775k;

    /* renamed from: l */
    private final AbstractC14736c f53776l;

    /* renamed from: m */
    private final List<C14696a> f53777m;

    /* renamed from: n */
    private final List<L> f53778n;

    /* renamed from: o */
    private final List<T> f53779o;

    /* renamed from: p */
    private boolean f53780p;

    /* renamed from: q */
    private ValueAnimator f53781q;

    /* renamed from: r */
    private ValueAnimator f53782r;

    /* renamed from: s */
    private final int f53783s;

    /* renamed from: t */
    private int f53784t;

    /* renamed from: u */
    private int f53785u;

    /* renamed from: v */
    private int f53786v;

    /* renamed from: w */
    private int f53787w;

    /* renamed from: x */
    private int f53788x;

    /* renamed from: y */
    private int f53789y;

    /* renamed from: z */
    private int f53790z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider$SliderState.class */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new Parcelable.Creator<SliderState>() { // from class: com.google.android.material.slider.BaseSlider.SliderState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        };
        boolean hasFocus;
        float stepSize;
        float valueFrom;
        float valueTo;
        ArrayList<Float> values;

        private SliderState(Parcel parcel) {
            super(parcel);
            this.valueFrom = parcel.readFloat();
            this.valueTo = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.values = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.stepSize = parcel.readFloat();
            this.hasFocus = parcel.createBooleanArray()[0];
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.valueFrom);
            parcel.writeFloat(this.valueTo);
            parcel.writeList(this.values);
            parcel.writeFloat(this.stepSize);
            parcel.writeBooleanArray(new boolean[]{this.hasFocus});
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider$a.class */
    public final class RunnableC14734a implements Runnable {

        /* renamed from: a */
        int f53796a;

        private RunnableC14734a() {
            BaseSlider.this = r4;
            this.f53796a = -1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BaseSlider.this.f53773i.m43949a(this.f53796a, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.slider.BaseSlider$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider$b.class */
    public static final class C14735b extends AbstractC0964a {

        /* renamed from: e */
        Rect f53798e = new Rect();

        /* renamed from: f */
        private final BaseSlider<?, ?, ?> f53799f;

        C14735b(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f53799f = baseSlider;
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: a */
        public final int mo10225a(float f, float f2) {
            for (int i = 0; i < this.f53799f.mo10220c().size(); i++) {
                this.f53799f.m10272a(i, this.f53798e);
                if (this.f53798e.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: a */
        public final void mo10224a(int i, C0869c c0869c) {
            c0869c.m44277a(C0869c.C0870a.f3654H);
            List<Float> mo10220c = this.f53799f.mo10220c();
            float floatValue = mo10220c.get(i).floatValue();
            float mo10218a = this.f53799f.mo10218a();
            float mo10217b = this.f53799f.mo10217b();
            if (this.f53799f.isEnabled()) {
                if (floatValue > mo10218a) {
                    c0869c.m44284a(PropertyFlags.UNSIGNED);
                }
                if (floatValue < mo10217b) {
                    c0869c.m44284a(4096);
                }
            }
            C0869c.C0873d c0873d = Build.VERSION.SDK_INT >= 19 ? new C0869c.C0873d(AccessibilityNodeInfo.RangeInfo.obtain(1, mo10218a, mo10217b, floatValue)) : new C0869c.C0873d(null);
            if (Build.VERSION.SDK_INT >= 19) {
                c0869c.f3644a.setRangeInfo((AccessibilityNodeInfo.RangeInfo) c0873d.f3690a);
            }
            c0869c.m44265b((CharSequence) SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f53799f.getContentDescription() != null) {
                sb.append(this.f53799f.getContentDescription());
                sb.append(",");
            }
            if (mo10220c.size() > 1) {
                sb.append(i == this.f53799f.mo10220c().size() - 1 ? this.f53799f.getContext().getString(C14376a.C14386j.material_slider_range_end) : i == 0 ? this.f53799f.getContext().getString(C14376a.C14386j.material_slider_range_start) : "");
                sb.append(this.f53799f.m10243g(floatValue));
            }
            c0869c.m44250e(sb.toString());
            this.f53799f.m10272a(i, this.f53798e);
            c0869c.m44269b(this.f53798e);
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: a */
        public final void mo10223a(List<Integer> list) {
            for (int i = 0; i < this.f53799f.mo10220c().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: b */
        public final boolean mo10222b(int i, int i2, Bundle bundle) {
            if (!this.f53799f.isEnabled()) {
                return false;
            }
            if (i2 != 4096 && i2 != 8192) {
                if (i2 != 16908349 || bundle == null || !bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                    return false;
                }
                if (!this.f53799f.m10273a(i, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                    return false;
                }
                this.f53799f.m10236n();
                this.f53799f.postInvalidate();
                m43950a(i);
                return true;
            }
            float m10244f = this.f53799f.m10244f(20);
            float f = m10244f;
            if (i2 == 8192) {
                f = -m10244f;
            }
            float f2 = f;
            if (this.f53799f.m10241i()) {
                f2 = -f;
            }
            if (!this.f53799f.m10273a(i, C0770a.m44522a(this.f53799f.mo10220c().get(i).floatValue() + f2, this.f53799f.mo10218a(), this.f53799f.mo10217b()))) {
                return false;
            }
            this.f53799f.m10236n();
            this.f53799f.postInvalidate();
            m43950a(i);
            return true;
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider$c.class */
    public interface AbstractC14736c {
        /* renamed from: a */
        C14696a mo10221a();
    }

    public BaseSlider(Context context) {
        this(context, null);
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.sliderStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseSlider(android.content.Context r8, final android.util.AttributeSet r9, final int r10) {
        /*
            Method dump skipped, instructions count: 884
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    private static float m10271a(ValueAnimator valueAnimator, float f) {
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

    /* renamed from: a */
    private int m10269a(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    /* renamed from: a */
    private static int m10260a(float[] fArr, float f) {
        return Math.round(f * ((fArr.length / 2) - 1));
    }

    /* renamed from: a */
    private ValueAnimator m10261a(boolean z) {
        float m10271a = m10271a(z ? this.f53782r : this.f53781q, z ? 0.0f : 1.0f);
        float f = 0.0f;
        if (z) {
            f = 1.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m10271a, f);
        ofFloat.setDuration((z ? 83 : 117) == 1 ? 1L : 0L);
        ofFloat.setInterpolator(z ? C14389a.f52372e : C14389a.f52370c);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.slider.BaseSlider.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                for (C14696a c14696a : BaseSlider.this.f53777m) {
                    c14696a.f53600c = 1.2f;
                    c14696a.f53598a = floatValue;
                    c14696a.f53599b = floatValue;
                    c14696a.f53601d = C14389a.m11340a(floatValue);
                    c14696a.invalidateSelf();
                }
                C0926v.m44101d(BaseSlider.this);
            }
        });
        return ofFloat;
    }

    /* renamed from: a */
    static /* synthetic */ C14696a m10270a(Context context, TypedArray typedArray) {
        return C14696a.m10374a(context, typedArray.getResourceId(C14376a.C14388l.Slider_labelStyle, C14376a.C14387k.Widget_MaterialComponents_Tooltip));
    }

    /* renamed from: a */
    private void m10268a(Canvas canvas, int i, int i2) {
        if (!isEnabled()) {
            Iterator<Float> it2 = this.f53749J.iterator();
            while (it2.hasNext()) {
                canvas.drawCircle(this.f53789y + (m10259b(it2.next().floatValue()) * i), i2, this.f53740A, this.f53769e);
            }
        }
        Iterator<Float> it3 = this.f53749J.iterator();
        while (it3.hasNext()) {
            Float next = it3.next();
            canvas.save();
            int i3 = this.f53789y;
            int m10259b = (int) (m10259b(next.floatValue()) * i);
            int i4 = this.f53740A;
            canvas.translate((i3 + m10259b) - i4, i2 - i4);
            this.f53764ab.draw(canvas);
            canvas.restore();
        }
    }

    /* renamed from: a */
    private void m10267a(C14696a c14696a) {
        c14696a.m10373a(C14654r.m10493d(this));
    }

    /* renamed from: a */
    private void m10266a(C14696a c14696a, float f) {
        c14696a.m10371a(m10243g(f));
        int m10259b = (this.f53789y + ((int) (m10259b(f) * this.f53755P))) - (c14696a.getIntrinsicWidth() / 2);
        int m10235o = m10235o() - (this.f53742C + this.f53740A);
        c14696a.setBounds(m10259b, m10235o - c14696a.getIntrinsicHeight(), c14696a.getIntrinsicWidth() + m10259b, m10235o);
        Rect rect = new Rect(c14696a.getBounds());
        C14619b.m10558a(C14654r.m10493d(this), this, rect);
        c14696a.setBounds(rect);
        C14654r.m10492e(this).mo10501a(c14696a);
    }

    /* renamed from: a */
    private void m10262a(ArrayList<Float> arrayList) {
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.f53749J.size() == arrayList.size() && this.f53749J.equals(arrayList)) {
                return;
            }
            this.f53749J = arrayList;
            this.f53758S = true;
            this.f53751L = 0;
            m10236n();
            m10238l();
            m10228v();
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    /* renamed from: a */
    private boolean m10275a(float f) {
        double doubleValue = new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.f53747H))).divide(new BigDecimal(Float.toString(this.f53752M)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < 1.0E-4d;
    }

    /* renamed from: a */
    public boolean m10273a(int i, float f) {
        if (Math.abs(f - this.f53749J.get(i).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.f53749J.set(i, Float.valueOf(m10257b(i, f)));
        this.f53751L = i;
        m10253c(i);
        return true;
    }

    /* renamed from: b */
    private float m10259b(float f) {
        float f2 = this.f53747H;
        float f3 = (f - f2) / (this.f53748I - f2);
        return m10241i() ? 1.0f - f3 : f3;
    }

    /* renamed from: b */
    private float m10257b(int i, float f) {
        float f2 = 0.0f;
        if (this.f53752M == BitmapDescriptorFactory.HUE_RED) {
            f2 = mo10219h();
        }
        float f3 = f2;
        if (this.f53766ad == 0) {
            f3 = m10247e(f2);
        }
        float f4 = f3;
        if (m10241i()) {
            f4 = -f3;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        return C0770a.m44522a(f, i3 < 0 ? this.f53747H : this.f53749J.get(i3).floatValue() + f4, i2 >= this.f53749J.size() ? this.f53748I : this.f53749J.get(i2).floatValue() - f4);
    }

    /* renamed from: b */
    private void m10258b(int i) {
        this.f53755P = Math.max(i - (this.f53789y * 2), 0);
        m10237m();
    }

    /* renamed from: b */
    private void m10256b(C14696a c14696a) {
        AbstractC14653q m10492e = C14654r.m10492e(this);
        if (m10492e != null) {
            m10492e.mo10500b(c14696a);
            c14696a.m10369b(C14654r.m10493d(this));
        }
    }

    /* renamed from: c */
    private double m10254c(float f) {
        float f2 = this.f53752M;
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            int i = (int) ((this.f53748I - this.f53747H) / f2);
            return Math.round(f * i) / i;
        }
        return f;
    }

    /* renamed from: c */
    private void m10253c(int i) {
        Iterator<L> it2 = this.f53778n.iterator();
        while (it2.hasNext()) {
            it2.next();
            this.f53749J.get(i).floatValue();
        }
        AccessibilityManager accessibilityManager = this.f53774j;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        m10242g(i);
    }

    /* renamed from: d */
    private boolean m10250d(float f) {
        return m10273a(this.f53750K, f);
    }

    /* renamed from: d */
    private boolean m10249d(int i) {
        int i2 = this.f53751L;
        int m44520a = (int) C0770a.m44520a(i2 + i, this.f53749J.size() - 1);
        this.f53751L = m44520a;
        if (m44520a == i2) {
            return false;
        }
        if (this.f53750K != -1) {
            this.f53750K = m44520a;
        }
        m10236n();
        postInvalidate();
        return true;
    }

    /* renamed from: e */
    private float m10247e(float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f2 = (f - this.f53789y) / this.f53755P;
        float f3 = this.f53747H;
        return (f2 * (f3 - this.f53748I)) + f3;
    }

    /* renamed from: e */
    private boolean m10246e(int i) {
        int i2 = i;
        if (m10241i()) {
            i2 = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        return m10249d(i2);
    }

    /* renamed from: f */
    private float m10245f(float f) {
        return (m10259b(f) * this.f53755P) + this.f53789y;
    }

    /* renamed from: f */
    public float m10244f(int i) {
        float m10226x = m10226x();
        float f = (this.f53748I - this.f53747H) / m10226x;
        return f <= 20.0f ? m10226x : Math.round(f / 20.0f) * m10226x;
    }

    /* renamed from: g */
    public String m10243g(float f) {
        if (mo10215f()) {
            return this.f53745F.m10213a();
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    /* renamed from: g */
    private void m10242g(int i) {
        BaseSlider<S, L, T>.RunnableC14734a runnableC14734a = this.f53775k;
        if (runnableC14734a == null) {
            this.f53775k = new RunnableC14734a();
        } else {
            removeCallbacks(runnableC14734a);
        }
        this.f53775k.f53796a = i;
        postDelayed(this.f53775k, 200L);
    }

    /* renamed from: j */
    private void m10240j() {
        Iterator<Float> it2 = this.f53749J.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            if (next.floatValue() < this.f53747H || next.floatValue() > this.f53748I) {
                throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", Float.toString(next.floatValue()), Float.toString(this.f53747H), Float.toString(this.f53748I)));
            }
            if (this.f53752M > BitmapDescriptorFactory.HUE_RED && !m10275a(next.floatValue())) {
                throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", Float.toString(next.floatValue()), Float.toString(this.f53747H), Float.toString(this.f53752M), Float.toString(this.f53752M)));
            }
        }
    }

    /* renamed from: k */
    private void m10239k() {
        if (this.f53758S) {
            float f = this.f53747H;
            float f2 = this.f53748I;
            if (f >= f2) {
                throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.toString(this.f53747H), Float.toString(this.f53748I)));
            }
            if (f2 <= f) {
                throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.toString(this.f53748I), Float.toString(this.f53747H)));
            }
            if (this.f53752M > BitmapDescriptorFactory.HUE_RED && !m10275a(f2)) {
                throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(this.f53752M), Float.toString(this.f53747H), Float.toString(this.f53748I)));
            }
            m10240j();
            float f3 = this.f53752M;
            if (f3 != BitmapDescriptorFactory.HUE_RED) {
                if (((int) f3) != f3) {
                    Log.w(f53739b, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "stepSize", Float.valueOf(f3)));
                }
                float f4 = this.f53747H;
                if (((int) f4) != f4) {
                    Log.w(f53739b, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueFrom", Float.valueOf(f4)));
                }
                float f5 = this.f53748I;
                if (((int) f5) != f5) {
                    Log.w(f53739b, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueTo", Float.valueOf(f5)));
                }
            }
            this.f53758S = false;
        }
    }

    /* renamed from: l */
    private void m10238l() {
        if (this.f53777m.size() > this.f53749J.size()) {
            List<C14696a> subList = this.f53777m.subList(this.f53749J.size(), this.f53777m.size());
            for (C14696a c14696a : subList) {
                if (C0926v.m44154E(this)) {
                    m10256b(c14696a);
                }
            }
            subList.clear();
        }
        while (this.f53777m.size() < this.f53749J.size()) {
            C14696a mo10221a = this.f53776l.mo10221a();
            this.f53777m.add(mo10221a);
            if (C0926v.m44154E(this)) {
                m10267a(mo10221a);
            }
        }
        int i = 1;
        if (this.f53777m.size() == 1) {
            i = 0;
        }
        for (C14696a c14696a2 : this.f53777m) {
            c14696a2.m10447n(i);
        }
    }

    /* renamed from: m */
    private void m10237m() {
        if (this.f53752M <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        m10239k();
        int min = Math.min((int) (((this.f53748I - this.f53747H) / this.f53752M) + 1.0f), (this.f53755P / (this.f53788x * 2)) + 1);
        float[] fArr = this.f53753N;
        if (fArr == null || fArr.length != min * 2) {
            this.f53753N = new float[min * 2];
        }
        float f = this.f53755P / (min - 1);
        for (int i = 0; i < min * 2; i += 2) {
            float[] fArr2 = this.f53753N;
            fArr2[i] = this.f53789y + ((i / 2) * f);
            fArr2[i + 1] = m10235o();
        }
    }

    /* renamed from: n */
    public void m10236n() {
        if (m10233q() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (!(background instanceof RippleDrawable)) {
            return;
        }
        int m10259b = (int) ((m10259b(this.f53749J.get(this.f53751L).floatValue()) * this.f53755P) + this.f53789y);
        int m10235o = m10235o();
        int i = this.f53741B;
        C0840a.m44356a(background, m10259b - i, m10235o - i, m10259b + i, m10235o + i);
    }

    /* renamed from: o */
    private int m10235o() {
        int i = this.f53790z;
        int i2 = 0;
        if (this.f53787w == 1) {
            i2 = this.f53777m.get(0).getIntrinsicHeight();
        }
        return i + i2;
    }

    /* renamed from: p */
    private float[] m10234p() {
        float floatValue = ((Float) Collections.max(mo10220c())).floatValue();
        float floatValue2 = ((Float) Collections.min(mo10220c())).floatValue();
        if (this.f53749J.size() == 1) {
            floatValue2 = this.f53747H;
        }
        float m10259b = m10259b(floatValue2);
        float m10259b2 = m10259b(floatValue);
        return m10241i() ? new float[]{m10259b2, m10259b} : new float[]{m10259b, m10259b2};
    }

    /* renamed from: q */
    private boolean m10233q() {
        return this.f53756Q || Build.VERSION.SDK_INT < 21 || !(getBackground() instanceof RippleDrawable);
    }

    /* renamed from: r */
    private boolean m10232r() {
        return m10250d(m10231s());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* renamed from: s */
    private float m10231s() {
        ?? m10254c = m10254c(this.f53765ac);
        char c = m10254c;
        if (m10241i()) {
            c = 1.0d - m10254c;
        }
        float f = this.f53748I;
        float f2 = this.f53747H;
        return (float) ((c * (f - f2)) + f2);
    }

    /* renamed from: t */
    private void m10230t() {
        if (this.f53780p) {
            this.f53780p = false;
            ValueAnimator m10261a = m10261a(false);
            this.f53782r = m10261a;
            this.f53781q = null;
            m10261a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.slider.BaseSlider.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    for (C14696a c14696a : BaseSlider.this.f53777m) {
                        C14654r.m10492e(BaseSlider.this).mo10500b(c14696a);
                    }
                }
            });
            this.f53782r.start();
        }
    }

    /* renamed from: u */
    private boolean m10229u() {
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

    /* renamed from: v */
    private void m10228v() {
        Iterator<L> it2 = this.f53778n.iterator();
        while (it2.hasNext()) {
            it2.next();
            Iterator<Float> it3 = this.f53749J.iterator();
            while (it3.hasNext()) {
                it3.next().floatValue();
            }
        }
    }

    /* renamed from: w */
    private void m10227w() {
        Iterator<T> it2 = this.f53779o.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: x */
    private float m10226x() {
        float f = this.f53752M;
        float f2 = f;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            f2 = 1.0f;
        }
        return f2;
    }

    /* renamed from: a */
    public float mo10218a() {
        return this.f53747H;
    }

    /* renamed from: a */
    public final void m10274a(int i) {
        this.f53766ad = i;
    }

    /* renamed from: a */
    final void m10272a(int i, Rect rect) {
        int m10259b = this.f53789y + ((int) (m10259b(mo10220c().get(i).floatValue()) * this.f53755P));
        int m10235o = m10235o();
        int i2 = this.f53740A;
        rect.set(m10259b - i2, m10235o - i2, m10259b + i2, m10235o + i2);
    }

    /* renamed from: b */
    public float mo10217b() {
        return this.f53748I;
    }

    /* renamed from: c */
    public List<Float> mo10220c() {
        return new ArrayList(this.f53749J);
    }

    /* renamed from: d */
    public final void m10251d() {
        this.f53750K = 0;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f53773i.m43944a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f53767c.setColor(m10269a(this.f53763aa));
        this.f53768d.setColor(m10269a(this.f53762W));
        this.f53771g.setColor(m10269a(this.f53761V));
        this.f53772h.setColor(m10269a(this.f53760U));
        for (C14696a c14696a : this.f53777m) {
            if (c14696a.isStateful()) {
                c14696a.setState(getDrawableState());
            }
        }
        if (this.f53764ab.isStateful()) {
            this.f53764ab.setState(getDrawableState());
        }
        this.f53770f.setColor(m10269a(this.f53759T));
        this.f53770f.setAlpha(63);
    }

    /* renamed from: e */
    public int mo10216e() {
        return this.f53750K;
    }

    /* renamed from: f */
    public boolean mo10215f() {
        return this.f53745F != null;
    }

    /* renamed from: g */
    protected boolean mo10214g() {
        float f;
        if (this.f53750K != -1) {
            return true;
        }
        float f2 = this.f53765ac;
        float f3 = f2;
        if (m10241i()) {
            f3 = 1.0f - f2;
        }
        float f4 = this.f53748I;
        float f5 = this.f53747H;
        float f6 = (f3 * (f4 - f5)) + f5;
        float m10245f = m10245f(f6);
        this.f53750K = 0;
        float abs = Math.abs(this.f53749J.get(0).floatValue() - f6);
        int i = 1;
        while (i < this.f53749J.size()) {
            float abs2 = Math.abs(this.f53749J.get(i).floatValue() - f6);
            float m10245f2 = m10245f(this.f53749J.get(i).floatValue());
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z = !m10241i() ? m10245f2 - m10245f < BitmapDescriptorFactory.HUE_RED : m10245f2 - m10245f > BitmapDescriptorFactory.HUE_RED;
            if (Float.compare(abs2, abs) < 0) {
                this.f53750K = i;
            } else {
                f = abs;
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else if (Math.abs(m10245f2 - m10245f) < this.f53783s) {
                    this.f53750K = -1;
                    return false;
                } else {
                    f = abs;
                    if (z) {
                        this.f53750K = i;
                    }
                }
                i++;
                abs = f;
            }
            f = abs2;
            i++;
            abs = f;
        }
        return this.f53750K != -1;
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    /* renamed from: h */
    protected float mo10219h() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: i */
    final boolean m10241i() {
        return C0926v.m44097f(this) == 1;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (C14696a c14696a : this.f53777m) {
            m10267a(c14696a);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        BaseSlider<S, L, T>.RunnableC14734a runnableC14734a = this.f53775k;
        if (runnableC14734a != null) {
            removeCallbacks(runnableC14734a);
        }
        this.f53780p = false;
        for (C14696a c14696a : this.f53777m) {
            m10256b(c14696a);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        if (this.f53758S) {
            m10239k();
            m10237m();
        }
        super.onDraw(canvas);
        int m10235o = m10235o();
        int i2 = this.f53755P;
        float[] m10234p = m10234p();
        float f = this.f53789y;
        float f2 = m10234p[1];
        float f3 = i2;
        float f4 = f + (f2 * f3);
        if (f4 < i + i2) {
            float f5 = m10235o;
            canvas.drawLine(f4, f5, i + i2, f5, this.f53767c);
        }
        int i3 = this.f53789y;
        float f6 = i3 + (m10234p[0] * f3);
        if (f6 > i3) {
            float f7 = i3;
            float f8 = m10235o;
            canvas.drawLine(f7, f8, f6, f8, this.f53767c);
        }
        if (((Float) Collections.max(mo10220c())).floatValue() > this.f53747H) {
            int i4 = this.f53755P;
            float[] m10234p2 = m10234p();
            int i5 = this.f53789y;
            float f9 = i5;
            float f10 = m10234p2[1];
            float f11 = i4;
            float f12 = i5;
            float f13 = m10234p2[0];
            float f14 = m10235o;
            canvas.drawLine(f12 + (f13 * f11), f14, f9 + (f10 * f11), f14, this.f53768d);
        }
        if (this.f53754O && this.f53752M > BitmapDescriptorFactory.HUE_RED) {
            float[] m10234p3 = m10234p();
            int m10260a = m10260a(this.f53753N, m10234p3[0]);
            int m10260a2 = m10260a(this.f53753N, m10234p3[1]);
            int i6 = m10260a * 2;
            canvas.drawPoints(this.f53753N, 0, i6, this.f53771g);
            int i7 = m10260a2 * 2;
            canvas.drawPoints(this.f53753N, i6, i7 - i6, this.f53772h);
            float[] fArr = this.f53753N;
            canvas.drawPoints(fArr, i7, fArr.length - i7, this.f53771g);
        }
        if ((this.f53746G || isFocused()) && isEnabled()) {
            int i8 = this.f53755P;
            if (m10233q()) {
                int m10259b = (int) (this.f53789y + (m10259b(this.f53749J.get(this.f53751L).floatValue()) * i8));
                if (Build.VERSION.SDK_INT < 28) {
                    int i9 = this.f53741B;
                    canvas.clipRect(m10259b - i9, m10235o - i9, m10259b + i9, i9 + m10235o, Region.Op.UNION);
                }
                canvas.drawCircle(m10259b, m10235o, this.f53741B, this.f53770f);
            }
            if (this.f53750K != -1 && this.f53787w != 2) {
                if (!this.f53780p) {
                    this.f53780p = true;
                    ValueAnimator m10261a = m10261a(true);
                    this.f53781q = m10261a;
                    this.f53782r = null;
                    m10261a.start();
                }
                Iterator<C14696a> it2 = this.f53777m.iterator();
                for (int i10 = 0; i10 < this.f53749J.size() && it2.hasNext(); i10++) {
                    if (i10 != this.f53751L) {
                        m10266a(it2.next(), this.f53749J.get(i10).floatValue());
                    }
                }
                if (!it2.hasNext()) {
                    throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f53777m.size()), Integer.valueOf(this.f53749J.size())));
                }
                m10266a(it2.next(), this.f53749J.get(this.f53751L).floatValue());
            }
        }
        m10268a(canvas, this.f53755P, m10235o);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            this.f53750K = -1;
            m10230t();
            this.f53773i.m43934e(this.f53751L);
            return;
        }
        if (i == 1) {
            m10249d(Integer.MAX_VALUE);
        } else if (i == 2) {
            m10249d((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        } else if (i == 17) {
            m10246e(Integer.MAX_VALUE);
        } else if (i == 66) {
            m10246e((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }
        this.f53773i.m43935d(this.f53751L);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Float f;
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.f53749J.size() == 1) {
            this.f53750K = 0;
        }
        Boolean bool = null;
        if (this.f53750K == -1) {
            if (i != 61) {
                if (i != 66) {
                    if (i != 81) {
                        if (i == 69) {
                            m10249d(-1);
                            bool = Boolean.TRUE;
                        } else if (i != 70) {
                            switch (i) {
                                case 21:
                                    m10246e(-1);
                                    bool = Boolean.TRUE;
                                    break;
                                case 22:
                                    m10246e(1);
                                    bool = Boolean.TRUE;
                                    break;
                            }
                        }
                    }
                    m10249d(1);
                    bool = Boolean.TRUE;
                }
                this.f53750K = this.f53751L;
                postInvalidate();
                bool = Boolean.TRUE;
            } else {
                bool = keyEvent.hasNoModifiers() ? Boolean.valueOf(m10249d(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(m10249d(-1)) : Boolean.FALSE;
            }
            return bool != null ? bool.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        boolean isLongPress = this.f53757R | keyEvent.isLongPress();
        this.f53757R = isLongPress;
        float m10244f = isLongPress ? m10244f(20) : m10226x();
        if (i == 21) {
            if (!m10241i()) {
                m10244f = -m10244f;
            }
            f = Float.valueOf(m10244f);
        } else if (i != 22) {
            f = i != 69 ? (i == 70 || i == 81) ? Float.valueOf(m10244f) : null : Float.valueOf(-m10244f);
        } else {
            float f2 = m10244f;
            if (m10241i()) {
                f2 = -m10244f;
            }
            f = Float.valueOf(f2);
        }
        if (f != null) {
            if (!m10250d(this.f53749J.get(this.f53750K).floatValue() + f.floatValue())) {
                return true;
            }
            m10236n();
            postInvalidate();
            return true;
        }
        if (i != 23) {
            if (i == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return m10249d(1);
                }
                if (!keyEvent.isShiftPressed()) {
                    return false;
                }
                return m10249d(-1);
            } else if (i != 66) {
                return super.onKeyDown(i, keyEvent);
            }
        }
        this.f53750K = -1;
        m10230t();
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.f53757R = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.f53786v;
        int i4 = 0;
        if (this.f53787w == 1) {
            i4 = this.f53777m.get(0).getIntrinsicHeight();
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3 + i4, 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.f53747H = sliderState.valueFrom;
        this.f53748I = sliderState.valueTo;
        m10262a(sliderState.values);
        this.f53752M = sliderState.stepSize;
        if (sliderState.hasFocus) {
            requestFocus();
        }
        m10228v();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.valueFrom = this.f53747H;
        sliderState.valueTo = this.f53748I;
        sliderState.values = new ArrayList<>(this.f53749J);
        sliderState.stepSize = this.f53752M;
        sliderState.hasFocus = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        m10258b(i);
        m10236n();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float f = (x - this.f53789y) / this.f53755P;
        this.f53765ac = f;
        float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, f);
        this.f53765ac = max;
        this.f53765ac = Math.min(1.0f, max);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f53743D = x;
            if (!m10229u()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (mo10214g()) {
                    requestFocus();
                    this.f53746G = true;
                    m10232r();
                    m10236n();
                    invalidate();
                    m10227w();
                }
            }
        } else if (actionMasked == 1) {
            this.f53746G = false;
            MotionEvent motionEvent2 = this.f53744E;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.f53744E.getX() - motionEvent.getX()) <= this.f53783s && Math.abs(this.f53744E.getY() - motionEvent.getY()) <= this.f53783s && mo10214g()) {
                m10227w();
            }
            if (this.f53750K != -1) {
                m10232r();
                this.f53750K = -1;
                Iterator<T> it2 = this.f53779o.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
            m10230t();
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.f53746G) {
                if (m10229u() && Math.abs(x - this.f53743D) < this.f53783s) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                m10227w();
            }
            if (mo10214g()) {
                this.f53746G = true;
                m10232r();
                m10236n();
                invalidate();
            }
        }
        setPressed(this.f53746G);
        this.f53744E = MotionEvent.obtain(motionEvent);
        return true;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.f53749J.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f53751L = i;
        this.f53773i.m43935d(i);
        postInvalidate();
    }

    public void setHaloRadius(int i) {
        if (i == this.f53741B) {
            return;
        }
        this.f53741B = i;
        Drawable background = getBackground();
        if (m10233q() || !(background instanceof RippleDrawable)) {
            postInvalidate();
            return;
        }
        RippleDrawable rippleDrawable = (RippleDrawable) background;
        int i2 = this.f53741B;
        if (Build.VERSION.SDK_INT >= 23) {
            rippleDrawable.setRadius(i2);
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod("setMaxRadius", Integer.TYPE).invoke(rippleDrawable, Integer.valueOf(i2));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            throw new IllegalStateException("Couldn't set RippleDrawable radius", e);
        }
    }

    public void setHaloRadiusResource(int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f53759T)) {
            return;
        }
        this.f53759T = colorStateList;
        Drawable background = getBackground();
        if (!m10233q() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f53770f.setColor(m10269a(colorStateList));
        this.f53770f.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i) {
        if (this.f53787w != i) {
            this.f53787w = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(AbstractC14739a abstractC14739a) {
        this.f53745F = abstractC14739a;
    }

    public void setStepSize(float f) {
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            if (this.f53752M == f) {
                return;
            }
            this.f53752M = f;
            this.f53758S = true;
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(f), Float.toString(this.f53747H), Float.toString(this.f53748I)));
    }

    public void setThumbElevation(float f) {
        this.f53764ab.m10439r(f);
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbRadius(int i) {
        if (i == this.f53740A) {
            return;
        }
        this.f53740A = i;
        this.f53789y = this.f53784t + Math.max(i - this.f53785u, 0);
        if (C0926v.m44157B(this)) {
            m10258b(getWidth());
        }
        C14670h c14670h = this.f53764ab;
        C14678m.C14680a m10430a = C14678m.m10430a();
        float f = this.f53740A;
        C14666d m10438a = C14674i.m10438a(0);
        c14670h.setShapeAppearanceModel(m10430a.m10419a(m10438a).m10417b(m10438a).m10415c(m10438a).m10413d(m10438a).m10420a(f).m10421a());
        C14670h c14670h2 = this.f53764ab;
        int i2 = this.f53740A;
        c14670h2.setBounds(0, 0, i2 * 2, i2 * 2);
        postInvalidate();
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.f53764ab.m10454h(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            setThumbStrokeColor(C0153a.m46375a(getContext(), i));
        }
    }

    public void setThumbStrokeWidth(float f) {
        this.f53764ab.m10447n(f);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f53764ab.f53492t.f53503d)) {
            return;
        }
        this.f53764ab.m10456g(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f53760U)) {
            return;
        }
        this.f53760U = colorStateList;
        this.f53772h.setColor(m10269a(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f53761V)) {
            return;
        }
        this.f53761V = colorStateList;
        this.f53771g.setColor(m10269a(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z) {
        if (this.f53754O != z) {
            this.f53754O = z;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f53762W)) {
            return;
        }
        this.f53762W = colorStateList;
        this.f53768d.setColor(m10269a(colorStateList));
        invalidate();
    }

    public void setTrackHeight(int i) {
        if (this.f53788x != i) {
            this.f53788x = i;
            this.f53767c.setStrokeWidth(i);
            this.f53768d.setStrokeWidth(this.f53788x);
            this.f53771g.setStrokeWidth(this.f53788x / 2.0f);
            this.f53772h.setStrokeWidth(this.f53788x / 2.0f);
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f53763aa)) {
            return;
        }
        this.f53763aa = colorStateList;
        this.f53767c.setColor(m10269a(colorStateList));
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.f53747H = f;
        this.f53758S = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.f53748I = f;
        this.f53758S = true;
        postInvalidate();
    }

    public void setValues(List<Float> list) {
        m10262a(new ArrayList<>(list));
    }

    public void setValues(Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        m10262a(arrayList);
    }
}
