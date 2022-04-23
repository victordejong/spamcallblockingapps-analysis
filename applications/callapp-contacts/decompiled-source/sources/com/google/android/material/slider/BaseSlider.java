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
import androidx.core.view.a.c;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.internal.q;
import com.google.android.material.internal.r;
import com.google.android.material.k.d;
import com.google.android.material.k.h;
import com.google.android.material.k.i;
import com.google.android.material.k.m;
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
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends Object<S>, T extends Object<S>> extends View {

    /* renamed from: a  reason: collision with root package name */
    static final int f30778a = a.k.Widget_MaterialComponents_Slider;

    /* renamed from: b  reason: collision with root package name */
    private static final String f30779b = "BaseSlider";
    private int A;
    private int B;
    private int C;
    private float D;
    private MotionEvent E;
    private com.google.android.material.slider.a F;
    private boolean G;
    private float H;
    private float I;
    private ArrayList<Float> J;
    private int K;
    private int L;
    private float M;
    private float[] N;
    private boolean O;
    private int P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private ColorStateList T;
    private ColorStateList U;
    private ColorStateList V;
    private ColorStateList W;
    private ColorStateList aa;
    private final h ab;
    private float ac;
    private int ad;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f30780c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f30781d;
    private final Paint e;
    private final Paint f;
    private final Paint g;
    private final Paint h;
    private final b i;
    private final AccessibilityManager j;
    private BaseSlider<S, L, T>.a k;
    private final c l;
    private final List<com.google.android.material.l.a> m;
    private final List<L> n;
    private final List<T> o;
    private boolean p;
    private ValueAnimator q;
    private ValueAnimator r;
    private final int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider$SliderState.class */
    static class SliderState extends View.BaseSavedState {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider$a.class */
    public final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f30787a;

        private a() {
            this.f30787a = -1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BaseSlider.this.i.a(this.f30787a, 4);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider$b.class */
    static final class b extends androidx.customview.a.a {
        Rect e = new Rect();
        private final BaseSlider<?, ?, ?> f;

        b(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f = baseSlider;
        }

        @Override // androidx.customview.a.a
        public final int a(float f, float f2) {
            for (int i = 0; i < this.f.c().size(); i++) {
                this.f.a(i, this.e);
                if (this.e.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // androidx.customview.a.a
        public final void a(int i, androidx.core.view.a.c cVar) {
            cVar.a(c.a.H);
            List<Float> c2 = this.f.c();
            float floatValue = c2.get(i).floatValue();
            float a2 = this.f.a();
            float b2 = this.f.b();
            if (this.f.isEnabled()) {
                if (floatValue > a2) {
                    cVar.a(PropertyFlags.UNSIGNED);
                }
                if (floatValue < b2) {
                    cVar.a(4096);
                }
            }
            c.d dVar = Build.VERSION.SDK_INT >= 19 ? new c.d(AccessibilityNodeInfo.RangeInfo.obtain(1, a2, b2, floatValue)) : new c.d(null);
            if (Build.VERSION.SDK_INT >= 19) {
                cVar.f1959a.setRangeInfo((AccessibilityNodeInfo.RangeInfo) dVar.f1968a);
            }
            cVar.b((CharSequence) SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f.getContentDescription() != null) {
                sb.append(this.f.getContentDescription());
                sb.append(",");
            }
            if (c2.size() > 1) {
                sb.append(i == this.f.c().size() - 1 ? this.f.getContext().getString(a.j.material_slider_range_end) : i == 0 ? this.f.getContext().getString(a.j.material_slider_range_start) : "");
                sb.append(this.f.g(floatValue));
            }
            cVar.e(sb.toString());
            this.f.a(i, this.e);
            cVar.b(this.e);
        }

        @Override // androidx.customview.a.a
        public final void a(List<Integer> list) {
            for (int i = 0; i < this.f.c().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.a.a
        public final boolean b(int i, int i2, Bundle bundle) {
            if (!this.f.isEnabled()) {
                return false;
            }
            if (i2 == 4096 || i2 == 8192) {
                float f = this.f.f(20);
                float f2 = f;
                if (i2 == 8192) {
                    f2 = -f;
                }
                float f3 = f2;
                if (this.f.i()) {
                    f3 = -f2;
                }
                if (!this.f.a(i, androidx.core.b.a.a(this.f.c().get(i).floatValue() + f3, this.f.a(), this.f.b()))) {
                    return false;
                }
                this.f.n();
                this.f.postInvalidate();
                a(i);
                return true;
            } else if (i2 != 16908349 || bundle == null || !bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                return false;
            } else {
                if (!this.f.a(i, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                    return false;
                }
                this.f.n();
                this.f.postInvalidate();
                a(i);
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/slider/BaseSlider$c.class */
    public interface c {
        com.google.android.material.l.a a();
    }

    public BaseSlider(Context context) {
        this(context, null);
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.sliderStyle);
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

    private static float a(ValueAnimator valueAnimator, float f) {
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

    private int a(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private static int a(float[] fArr, float f) {
        return Math.round(f * ((fArr.length / 2) - 1));
    }

    private ValueAnimator a(boolean z) {
        float f = BitmapDescriptorFactory.HUE_RED;
        float a2 = a(z ? this.r : this.q, z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
        if (z) {
            f = 1.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(a2, f);
        ofFloat.setDuration(z ? 83L : 117L);
        ofFloat.setInterpolator(z ? com.google.android.material.a.a.e : com.google.android.material.a.a.f30175c);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.slider.BaseSlider.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                for (com.google.android.material.l.a aVar : BaseSlider.this.m) {
                    aVar.f30728c = 1.2f;
                    aVar.f30726a = floatValue;
                    aVar.f30727b = floatValue;
                    aVar.f30729d = com.google.android.material.a.a.a(floatValue);
                    aVar.invalidateSelf();
                }
                v.d(BaseSlider.this);
            }
        });
        return ofFloat;
    }

    static /* synthetic */ com.google.android.material.l.a a(Context context, TypedArray typedArray) {
        return com.google.android.material.l.a.a(context, typedArray.getResourceId(a.l.Slider_labelStyle, a.k.Widget_MaterialComponents_Tooltip));
    }

    private void a(Canvas canvas, int i, int i2) {
        if (!isEnabled()) {
            Iterator<Float> it2 = this.J.iterator();
            while (it2.hasNext()) {
                canvas.drawCircle(this.y + (b(it2.next().floatValue()) * i), i2, this.A, this.e);
            }
        }
        Iterator<Float> it3 = this.J.iterator();
        while (it3.hasNext()) {
            Float next = it3.next();
            canvas.save();
            int i3 = this.y;
            int b2 = (int) (b(next.floatValue()) * i);
            int i4 = this.A;
            canvas.translate((i3 + b2) - i4, i2 - i4);
            this.ab.draw(canvas);
            canvas.restore();
        }
    }

    private void a(com.google.android.material.l.a aVar) {
        aVar.a(r.d(this));
    }

    private void a(com.google.android.material.l.a aVar, float f) {
        aVar.a(g(f));
        int b2 = (this.y + ((int) (b(f) * this.P))) - (aVar.getIntrinsicWidth() / 2);
        int o = o() - (this.C + this.A);
        aVar.setBounds(b2, o - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + b2, o);
        Rect rect = new Rect(aVar.getBounds());
        com.google.android.material.internal.b.a(r.d(this), this, rect);
        aVar.setBounds(rect);
        r.e(this).a(aVar);
    }

    private void a(ArrayList<Float> arrayList) {
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.J.size() != arrayList.size() || !this.J.equals(arrayList)) {
                this.J = arrayList;
                this.S = true;
                this.L = 0;
                n();
                l();
                v();
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    private boolean a(float f) {
        double doubleValue = new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.H))).divide(new BigDecimal(Float.toString(this.M)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < 1.0E-4d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, float f) {
        if (Math.abs(f - this.J.get(i).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.J.set(i, Float.valueOf(b(i, f)));
        this.L = i;
        c(i);
        return true;
    }

    private float b(float f) {
        float f2 = this.H;
        float f3 = (f - f2) / (this.I - f2);
        return i() ? 1.0f - f3 : f3;
    }

    private float b(int i, float f) {
        float f2 = this.M;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            f3 = h();
        }
        float f4 = f3;
        if (this.ad == 0) {
            f4 = e(f3);
        }
        float f5 = f4;
        if (i()) {
            f5 = -f4;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        return androidx.core.b.a.a(f, i3 < 0 ? this.H : this.J.get(i3).floatValue() + f5, i2 >= this.J.size() ? this.I : this.J.get(i2).floatValue() - f5);
    }

    private void b(int i) {
        this.P = Math.max(i - (this.y * 2), 0);
        m();
    }

    private void b(com.google.android.material.l.a aVar) {
        q e = r.e(this);
        if (e != null) {
            e.b(aVar);
            aVar.b(r.d(this));
        }
    }

    private double c(float f) {
        float f2 = this.M;
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            return f;
        }
        int i = (int) ((this.I - this.H) / f2);
        return Math.round(f * i) / i;
    }

    private void c(int i) {
        Iterator<L> it2 = this.n.iterator();
        while (it2.hasNext()) {
            it2.next();
            this.J.get(i).floatValue();
        }
        AccessibilityManager accessibilityManager = this.j;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            g(i);
        }
    }

    private boolean d(float f) {
        return a(this.K, f);
    }

    private boolean d(int i) {
        int i2 = this.L;
        int a2 = (int) androidx.core.b.a.a(i2 + i, this.J.size() - 1);
        this.L = a2;
        if (a2 == i2) {
            return false;
        }
        if (this.K != -1) {
            this.K = a2;
        }
        n();
        postInvalidate();
        return true;
    }

    private float e(float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f2 = (f - this.y) / this.P;
        float f3 = this.H;
        return (f2 * (f3 - this.I)) + f3;
    }

    private boolean e(int i) {
        int i2 = i;
        if (i()) {
            i2 = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        return d(i2);
    }

    private float f(float f) {
        return (b(f) * this.P) + this.y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float f(int i) {
        float x = x();
        float f = (this.I - this.H) / x;
        return f <= 20.0f ? x : Math.round(f / 20.0f) * x;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String g(float f) {
        if (f()) {
            return this.F.a();
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    private void g(int i) {
        BaseSlider<S, L, T>.a aVar = this.k;
        if (aVar == null) {
            this.k = new a();
        } else {
            removeCallbacks(aVar);
        }
        this.k.f30787a = i;
        postDelayed(this.k, 200L);
    }

    private void j() {
        Iterator<Float> it2 = this.J.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            if (next.floatValue() < this.H || next.floatValue() > this.I) {
                throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", Float.toString(next.floatValue()), Float.toString(this.H), Float.toString(this.I)));
            } else if (this.M > BitmapDescriptorFactory.HUE_RED && !a(next.floatValue())) {
                throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", Float.toString(next.floatValue()), Float.toString(this.H), Float.toString(this.M), Float.toString(this.M)));
            }
        }
    }

    private void k() {
        if (this.S) {
            float f = this.H;
            float f2 = this.I;
            if (f >= f2) {
                throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.toString(this.H), Float.toString(this.I)));
            } else if (f2 <= f) {
                throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.toString(this.I), Float.toString(this.H)));
            } else if (this.M <= BitmapDescriptorFactory.HUE_RED || a(f2)) {
                j();
                float f3 = this.M;
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    if (((int) f3) != f3) {
                        Log.w(f30779b, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "stepSize", Float.valueOf(f3)));
                    }
                    float f4 = this.H;
                    if (((int) f4) != f4) {
                        Log.w(f30779b, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueFrom", Float.valueOf(f4)));
                    }
                    float f5 = this.I;
                    if (((int) f5) != f5) {
                        Log.w(f30779b, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueTo", Float.valueOf(f5)));
                    }
                }
                this.S = false;
            } else {
                throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(this.M), Float.toString(this.H), Float.toString(this.I)));
            }
        }
    }

    private void l() {
        if (this.m.size() > this.J.size()) {
            List<com.google.android.material.l.a> subList = this.m.subList(this.J.size(), this.m.size());
            for (com.google.android.material.l.a aVar : subList) {
                if (v.E(this)) {
                    b(aVar);
                }
            }
            subList.clear();
        }
        while (this.m.size() < this.J.size()) {
            com.google.android.material.l.a a2 = this.l.a();
            this.m.add(a2);
            if (v.E(this)) {
                a(a2);
            }
        }
        int i = 1;
        if (this.m.size() == 1) {
            i = 0;
        }
        for (com.google.android.material.l.a aVar2 : this.m) {
            aVar2.n(i);
        }
    }

    private void m() {
        if (this.M > BitmapDescriptorFactory.HUE_RED) {
            k();
            int min = Math.min((int) (((this.I - this.H) / this.M) + 1.0f), (this.P / (this.x * 2)) + 1);
            float[] fArr = this.N;
            if (fArr == null || fArr.length != min * 2) {
                this.N = new float[min * 2];
            }
            float f = this.P / (min - 1);
            for (int i = 0; i < min * 2; i += 2) {
                float[] fArr2 = this.N;
                fArr2[i] = this.y + ((i / 2) * f);
                fArr2[i + 1] = o();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (!q() && getMeasuredWidth() > 0) {
            Drawable background = getBackground();
            if (background instanceof RippleDrawable) {
                int b2 = (int) ((b(this.J.get(this.L).floatValue()) * this.P) + this.y);
                int o = o();
                int i = this.B;
                androidx.core.graphics.drawable.a.a(background, b2 - i, o - i, b2 + i, o + i);
            }
        }
    }

    private int o() {
        int i = this.z;
        int i2 = 0;
        if (this.w == 1) {
            i2 = this.m.get(0).getIntrinsicHeight();
        }
        return i + i2;
    }

    private float[] p() {
        float floatValue = ((Float) Collections.max(c())).floatValue();
        float floatValue2 = ((Float) Collections.min(c())).floatValue();
        if (this.J.size() == 1) {
            floatValue2 = this.H;
        }
        float b2 = b(floatValue2);
        float b3 = b(floatValue);
        return i() ? new float[]{b3, b2} : new float[]{b2, b3};
    }

    private boolean q() {
        return this.Q || Build.VERSION.SDK_INT < 21 || !(getBackground() instanceof RippleDrawable);
    }

    private boolean r() {
        return d(s());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [double] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float s() {
        /*
            r5 = this;
            r0 = r5
            r1 = r5
            float r1 = r1.ac
            double r0 = r0.c(r1)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.i()
            if (r0 == 0) goto L_0x0016
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r1 = r6
            double r0 = r0 - r1
            r8 = r0
        L_0x0016:
            r0 = r5
            float r0 = r0.I
            r10 = r0
            r0 = r5
            float r0 = r0.H
            r11 = r0
            r0 = r8
            r1 = r10
            r2 = r11
            float r1 = r1 - r2
            double r1 = (double) r1
            double r0 = r0 * r1
            r1 = r11
            double r1 = (double) r1
            double r0 = r0 + r1
            float r0 = (float) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.s():float");
    }

    private void t() {
        if (this.p) {
            this.p = false;
            ValueAnimator a2 = a(false);
            this.r = a2;
            this.q = null;
            a2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.slider.BaseSlider.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    for (com.google.android.material.l.a aVar : BaseSlider.this.m) {
                        r.e(BaseSlider.this).b(aVar);
                    }
                }
            });
            this.r.start();
        }
    }

    private boolean u() {
        ViewParent parent = getParent();
        while (true) {
            boolean z = false;
            if (!(parent instanceof ViewGroup)) {
                return false;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) {
                z = true;
            }
            if (z && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = parent.getParent();
        }
    }

    private void v() {
        Iterator<L> it2 = this.n.iterator();
        while (it2.hasNext()) {
            it2.next();
            Iterator<Float> it3 = this.J.iterator();
            while (it3.hasNext()) {
                it3.next().floatValue();
            }
        }
    }

    private void w() {
        Iterator<T> it2 = this.o.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    private float x() {
        float f = this.M;
        float f2 = f;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            f2 = 1.0f;
        }
        return f2;
    }

    public float a() {
        return this.H;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        this.ad = i;
    }

    final void a(int i, Rect rect) {
        int b2 = this.y + ((int) (b(c().get(i).floatValue()) * this.P));
        int o = o();
        int i2 = this.A;
        rect.set(b2 - i2, o - i2, b2 + i2, o + i2);
    }

    public float b() {
        return this.I;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Float> c() {
        return new ArrayList(this.J);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        this.K = 0;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.i.a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f30780c.setColor(a(this.aa));
        this.f30781d.setColor(a(this.W));
        this.g.setColor(a(this.V));
        this.h.setColor(a(this.U));
        for (com.google.android.material.l.a aVar : this.m) {
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        if (this.ab.isStateful()) {
            this.ab.setState(getDrawableState());
        }
        this.f.setColor(a(this.T));
        this.f.setAlpha(63);
    }

    public int e() {
        return this.K;
    }

    public boolean f() {
        return this.F != null;
    }

    protected boolean g() {
        if (this.K != -1) {
            return true;
        }
        float f = this.ac;
        float f2 = f;
        if (i()) {
            f2 = 1.0f - f;
        }
        float f3 = this.I;
        float f4 = this.H;
        float f5 = (f2 * (f3 - f4)) + f4;
        float f6 = f(f5);
        this.K = 0;
        float abs = Math.abs(this.J.get(0).floatValue() - f5);
        for (int i = 1; i < this.J.size(); i++) {
            float abs2 = Math.abs(this.J.get(i).floatValue() - f5);
            float f7 = f(this.J.get(i).floatValue());
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z = !i() ? f7 - f6 < BitmapDescriptorFactory.HUE_RED : f7 - f6 > BitmapDescriptorFactory.HUE_RED;
            if (Float.compare(abs2, abs) < 0) {
                this.K = i;
            } else {
                abs = abs;
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else if (Math.abs(f7 - f6) < this.s) {
                    this.K = -1;
                    return false;
                } else {
                    abs = abs;
                    if (z) {
                        this.K = i;
                    }
                }
            }
            abs = abs2;
        }
        return this.K != -1;
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    protected float h() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    final boolean i() {
        return v.f(this) == 1;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (com.google.android.material.l.a aVar : this.m) {
            a(aVar);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        BaseSlider<S, L, T>.a aVar = this.k;
        if (aVar != null) {
            removeCallbacks(aVar);
        }
        this.p = false;
        for (com.google.android.material.l.a aVar2 : this.m) {
            b(aVar2);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        if (this.S) {
            k();
            m();
        }
        super.onDraw(canvas);
        int o = o();
        int i2 = this.P;
        float[] p = p();
        float f = this.y;
        float f2 = p[1];
        float f3 = i2;
        float f4 = f + (f2 * f3);
        if (f4 < i + i2) {
            float f5 = o;
            canvas.drawLine(f4, f5, i + i2, f5, this.f30780c);
        }
        int i3 = this.y;
        float f6 = i3 + (p[0] * f3);
        if (f6 > i3) {
            float f7 = i3;
            float f8 = o;
            canvas.drawLine(f7, f8, f6, f8, this.f30780c);
        }
        if (((Float) Collections.max(c())).floatValue() > this.H) {
            int i4 = this.P;
            float[] p2 = p();
            int i5 = this.y;
            float f9 = i5;
            float f10 = p2[1];
            float f11 = i4;
            float f12 = i5;
            float f13 = p2[0];
            float f14 = o;
            canvas.drawLine(f12 + (f13 * f11), f14, f9 + (f10 * f11), f14, this.f30781d);
        }
        if (this.O && this.M > BitmapDescriptorFactory.HUE_RED) {
            float[] p3 = p();
            int a2 = a(this.N, p3[0]);
            int a3 = a(this.N, p3[1]);
            int i6 = a2 * 2;
            canvas.drawPoints(this.N, 0, i6, this.g);
            int i7 = a3 * 2;
            canvas.drawPoints(this.N, i6, i7 - i6, this.h);
            float[] fArr = this.N;
            canvas.drawPoints(fArr, i7, fArr.length - i7, this.g);
        }
        if ((this.G || isFocused()) && isEnabled()) {
            int i8 = this.P;
            if (q()) {
                int b2 = (int) (this.y + (b(this.J.get(this.L).floatValue()) * i8));
                if (Build.VERSION.SDK_INT < 28) {
                    int i9 = this.B;
                    canvas.clipRect(b2 - i9, o - i9, b2 + i9, i9 + o, Region.Op.UNION);
                }
                canvas.drawCircle(b2, o, this.B, this.f);
            }
            if (!(this.K == -1 || this.w == 2)) {
                if (!this.p) {
                    this.p = true;
                    ValueAnimator a4 = a(true);
                    this.q = a4;
                    this.r = null;
                    a4.start();
                }
                Iterator<com.google.android.material.l.a> it2 = this.m.iterator();
                for (int i10 = 0; i10 < this.J.size() && it2.hasNext(); i10++) {
                    if (i10 != this.L) {
                        a(it2.next(), this.J.get(i10).floatValue());
                    }
                }
                if (it2.hasNext()) {
                    a(it2.next(), this.J.get(this.L).floatValue());
                } else {
                    throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.m.size()), Integer.valueOf(this.J.size())));
                }
            }
        }
        a(canvas, this.P, o);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            this.K = -1;
            t();
            this.i.e(this.L);
            return;
        }
        if (i == 1) {
            d(Integer.MAX_VALUE);
        } else if (i == 2) {
            d((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        } else if (i == 17) {
            e(Integer.MAX_VALUE);
        } else if (i == 66) {
            e((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }
        this.i.d(this.L);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.J.size() == 1) {
            this.K = 0;
        }
        Float f = null;
        Boolean bool = null;
        if (this.K == -1) {
            if (i != 61) {
                if (i != 66) {
                    if (i != 81) {
                        if (i != 69) {
                            if (i != 70) {
                                switch (i) {
                                    case 21:
                                        e(-1);
                                        bool = Boolean.TRUE;
                                        break;
                                    case 22:
                                        e(1);
                                        bool = Boolean.TRUE;
                                        break;
                                }
                            }
                        } else {
                            d(-1);
                            bool = Boolean.TRUE;
                        }
                    }
                    d(1);
                    bool = Boolean.TRUE;
                }
                this.K = this.L;
                postInvalidate();
                bool = Boolean.TRUE;
            } else {
                bool = keyEvent.hasNoModifiers() ? Boolean.valueOf(d(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(d(-1)) : Boolean.FALSE;
            }
            return bool != null ? bool.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        boolean isLongPress = this.R | keyEvent.isLongPress();
        this.R = isLongPress;
        float f2 = isLongPress ? f(20) : x();
        if (i == 21) {
            if (!i()) {
                f2 = -f2;
            }
            f = Float.valueOf(f2);
        } else if (i == 22) {
            float f3 = f2;
            if (i()) {
                f3 = -f2;
            }
            f = Float.valueOf(f3);
        } else if (i == 69) {
            f = Float.valueOf(-f2);
        } else if (i == 70 || i == 81) {
            f = Float.valueOf(f2);
        }
        if (f == null) {
            if (i != 23) {
                if (i != 61) {
                    if (i != 66) {
                        return super.onKeyDown(i, keyEvent);
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    return d(1);
                } else {
                    if (keyEvent.isShiftPressed()) {
                        return d(-1);
                    }
                    return false;
                }
            }
            this.K = -1;
            t();
            postInvalidate();
            return true;
        } else if (!d(this.J.get(this.K).floatValue() + f.floatValue())) {
            return true;
        } else {
            n();
            postInvalidate();
            return true;
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.R = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.v;
        int i4 = 0;
        if (this.w == 1) {
            i4 = this.m.get(0).getIntrinsicHeight();
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3 + i4, 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.H = sliderState.valueFrom;
        this.I = sliderState.valueTo;
        a(sliderState.values);
        this.M = sliderState.stepSize;
        if (sliderState.hasFocus) {
            requestFocus();
        }
        v();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.valueFrom = this.H;
        sliderState.valueTo = this.I;
        sliderState.values = new ArrayList<>(this.J);
        sliderState.stepSize = this.M;
        sliderState.hasFocus = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        b(i);
        n();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float f = (x - this.y) / this.P;
        this.ac = f;
        float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, f);
        this.ac = max;
        this.ac = Math.min(1.0f, max);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.D = x;
            if (!u()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (g()) {
                    requestFocus();
                    this.G = true;
                    r();
                    n();
                    invalidate();
                    w();
                }
            }
        } else if (actionMasked == 1) {
            this.G = false;
            MotionEvent motionEvent2 = this.E;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.E.getX() - motionEvent.getX()) <= this.s && Math.abs(this.E.getY() - motionEvent.getY()) <= this.s && g()) {
                w();
            }
            if (this.K != -1) {
                r();
                this.K = -1;
                Iterator<T> it2 = this.o.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
            t();
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.G) {
                if (u() && Math.abs(x - this.D) < this.s) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                w();
            }
            if (g()) {
                this.G = true;
                r();
                n();
                invalidate();
            }
        }
        setPressed(this.G);
        this.E = MotionEvent.obtain(motionEvent);
        return true;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.J.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.L = i;
        this.i.d(i);
        postInvalidate();
    }

    public void setHaloRadius(int i) {
        if (i != this.B) {
            this.B = i;
            Drawable background = getBackground();
            if (q() || !(background instanceof RippleDrawable)) {
                postInvalidate();
                return;
            }
            RippleDrawable rippleDrawable = (RippleDrawable) background;
            int i2 = this.B;
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
    }

    public void setHaloRadiusResource(int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.T)) {
            this.T = colorStateList;
            Drawable background = getBackground();
            if (q() || !(background instanceof RippleDrawable)) {
                this.f.setColor(a(colorStateList));
                this.f.setAlpha(63);
                invalidate();
                return;
            }
            ((RippleDrawable) background).setColor(colorStateList);
        }
    }

    public void setLabelBehavior(int i) {
        if (this.w != i) {
            this.w = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(com.google.android.material.slider.a aVar) {
        this.F = aVar;
    }

    public void setStepSize(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(f), Float.toString(this.H), Float.toString(this.I)));
        } else if (this.M != f) {
            this.M = f;
            this.S = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f) {
        this.ab.r(f);
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbRadius(int i) {
        if (i != this.A) {
            this.A = i;
            this.y = this.t + Math.max(i - this.u, 0);
            if (v.B(this)) {
                b(getWidth());
            }
            h hVar = this.ab;
            m.a a2 = m.a();
            float f = this.A;
            d a3 = i.a(0);
            hVar.setShapeAppearanceModel(a2.a(a3).b(a3).c(a3).d(a3).a(f).a());
            h hVar2 = this.ab;
            int i2 = this.A;
            hVar2.setBounds(0, 0, i2 * 2, i2 * 2);
            postInvalidate();
        }
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.ab.h(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            setThumbStrokeColor(androidx.appcompat.a.a.a.a(getContext(), i));
        }
    }

    public void setThumbStrokeWidth(float f) {
        this.ab.n(f);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.ab.t.f30686d)) {
            this.ab.g(colorStateList);
            invalidate();
        }
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.U)) {
            this.U = colorStateList;
            this.h.setColor(a(colorStateList));
            invalidate();
        }
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.V)) {
            this.V = colorStateList;
            this.g.setColor(a(colorStateList));
            invalidate();
        }
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z) {
        if (this.O != z) {
            this.O = z;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.W)) {
            this.W = colorStateList;
            this.f30781d.setColor(a(colorStateList));
            invalidate();
        }
    }

    public void setTrackHeight(int i) {
        if (this.x != i) {
            this.x = i;
            this.f30780c.setStrokeWidth(i);
            this.f30781d.setStrokeWidth(this.x);
            this.g.setStrokeWidth(this.x / 2.0f);
            this.h.setStrokeWidth(this.x / 2.0f);
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.aa)) {
            this.aa = colorStateList;
            this.f30780c.setColor(a(colorStateList));
            invalidate();
        }
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.H = f;
        this.S = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.I = f;
        this.S = true;
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(List<Float> list) {
        a(new ArrayList<>(list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        a(arrayList);
    }
}
