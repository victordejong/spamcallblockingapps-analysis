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
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import com.google.android.material.C2080R;
import com.google.android.material.slider.BaseSlider;
import e.m.a.g.o.n;
import e.m.a.g.o.o;
import e.m.a.g.u.d;
import e.m.a.g.u.h;
import e.m.a.g.u.l;
import e.m.a.g.v.a;
import e.m.a.g.v.b;
import e.m.a.g.v.c;
import io.agora.rtc.Constants;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1812c.C26493a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1677g.p1678a.C25156a;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/slider/BaseSlider.class */
public abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends a<S>, T extends b<S>> extends View {

    /* renamed from: l0 */
    public static final String f6700l0 = BaseSlider.class.getSimpleName();

    /* renamed from: m0 */
    public static final int f6701m0 = C2080R.style.Widget_MaterialComponents_Slider;

    /* renamed from: A */
    public int f6702A;

    /* renamed from: B */
    public float f6703B;

    /* renamed from: C */
    public MotionEvent f6704C;

    /* renamed from: D */
    public c f6705D;

    /* renamed from: E */
    public boolean f6706E;

    /* renamed from: J */
    public float f6707J;

    /* renamed from: K */
    public float f6708K;

    /* renamed from: L */
    public ArrayList<Float> f6709L;

    /* renamed from: M */
    public int f6710M;

    /* renamed from: N */
    public int f6711N;

    /* renamed from: O */
    public float f6712O;

    /* renamed from: P */
    public float[] f6713P;

    /* renamed from: Q */
    public boolean f6714Q;

    /* renamed from: R */
    public int f6715R;

    /* renamed from: S */
    public boolean f6716S;

    /* renamed from: T */
    public boolean f6717T;

    /* renamed from: U */
    public ColorStateList f6718U;

    /* renamed from: V */
    public ColorStateList f6719V;

    /* renamed from: W */
    public ColorStateList f6720W;

    /* renamed from: a */
    public final Paint f6721a;

    /* renamed from: b */
    public final Paint f6722b;

    /* renamed from: c */
    public final Paint f6723c;

    /* renamed from: d */
    public final Paint f6724d;

    /* renamed from: e */
    public final Paint f6725e;

    /* renamed from: f */
    public final Paint f6726f;

    /* renamed from: g */
    public final e f6727g;

    /* renamed from: g0 */
    public ColorStateList f6728g0;

    /* renamed from: h */
    public final AccessibilityManager f6729h;

    /* renamed from: h0 */
    public ColorStateList f6730h0;

    /* renamed from: i */
    public BaseSlider<S, L, T>.RunnableC2097d f6731i;

    /* renamed from: i0 */
    public final h f6732i0;

    /* renamed from: j */
    public final AbstractC2098f f6733j;

    /* renamed from: j0 */
    public float f6734j0;

    /* renamed from: k */
    public final List<e.m.a.g.b0.a> f6735k;

    /* renamed from: k0 */
    public int f6736k0;

    /* renamed from: l */
    public final List<L> f6737l;

    /* renamed from: m */
    public final List<T> f6738m;

    /* renamed from: n */
    public boolean f6739n;

    /* renamed from: o */
    public ValueAnimator f6740o;

    /* renamed from: p */
    public ValueAnimator f6741p;

    /* renamed from: q */
    public final int f6742q;

    /* renamed from: r */
    public int f6743r;

    /* renamed from: s */
    public int f6744s;

    /* renamed from: t */
    public int f6745t;

    /* renamed from: u */
    public int f6746u;

    /* renamed from: v */
    public int f6747v;

    /* renamed from: w */
    public int f6748w;

    /* renamed from: x */
    public int f6749x;

    /* renamed from: y */
    public int f6750y;

    /* renamed from: z */
    public int f6751z;

    /* loaded from: classes3-dex2jar.jar:com/google/android/material/slider/BaseSlider$SliderState.class */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new C2094a();

        /* renamed from: a */
        public float f6752a;

        /* renamed from: b */
        public float f6753b;

        /* renamed from: c */
        public ArrayList<Float> f6754c;

        /* renamed from: d */
        public float f6755d;

        /* renamed from: e */
        public boolean f6756e;

        /* renamed from: com.google.android.material.slider.BaseSlider$SliderState$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/material/slider/BaseSlider$SliderState$a.class */
        public static final class C2094a implements Parcelable.Creator<SliderState> {
            @Override // android.os.Parcelable.Creator
            public SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        }

        public SliderState(Parcel parcel, a aVar) {
            super(parcel);
            this.f6752a = parcel.readFloat();
            this.f6753b = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.f6754c = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f6755d = parcel.readFloat();
            this.f6756e = parcel.createBooleanArray()[0];
        }

        public SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f6752a);
            parcel.writeFloat(this.f6753b);
            parcel.writeList(this.f6754c);
            parcel.writeFloat(this.f6755d);
            parcel.writeBooleanArray(new boolean[]{this.f6756e});
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/slider/BaseSlider$b.class */
    public class C2095b implements ValueAnimator.AnimatorUpdateListener {
        public C2095b() {
            BaseSlider.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            for (e.m.a.g.b0.a aVar : BaseSlider.this.f6735k) {
                aVar.Q = 1.2f;
                aVar.O = floatValue;
                aVar.P = floatValue;
                aVar.R = C25156a.m4152b(0.0f, 1.0f, 0.19f, 1.0f, floatValue);
                aVar.invalidateSelf();
            }
            BaseSlider baseSlider = BaseSlider.this;
            AtomicInteger atomicInteger = C26614s.f74505a;
            baseSlider.postInvalidateOnAnimation();
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/slider/BaseSlider$c.class */
    public class C2096c extends AnimatorListenerAdapter {
        public C2096c() {
            BaseSlider.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            Iterator<e.m.a.g.b0.a> it = BaseSlider.this.f6735k.iterator();
            while (it.hasNext()) {
                C26232y.m2353g0(BaseSlider.this).a.remove((e.m.a.g.b0.a) it.next());
            }
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/slider/BaseSlider$d.class */
    public class RunnableC2097d implements Runnable {

        /* renamed from: a */
        public int f6759a = -1;

        public RunnableC2097d(a aVar) {
            BaseSlider.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f6727g.m1494y(this.f6759a, 4);
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/slider/BaseSlider$f.class */
    public interface AbstractC2098f {
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2080R.attr.sliderStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseSlider(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 932
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private float[] getActiveRange() {
        float floatValue = ((Float) Collections.max(getValues())).floatValue();
        float floatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.f6709L.size() == 1) {
            floatValue2 = this.f6707J;
        }
        float m38418o = m38418o(floatValue2);
        float m38418o2 = m38418o(floatValue);
        return m38422k() ? new float[]{m38418o2, m38418o} : new float[]{m38418o, m38418o2};
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    private float getValueOfTouchPosition() {
        char c;
        float f;
        int i;
        float f2 = this.f6734j0;
        float f3 = this.f6712O;
        if (f3 > 0.0f) {
            c = Math.round(f2 * i) / ((int) ((this.f6708K - this.f6707J) / f3));
        } else {
            c = f2;
        }
        char c2 = c;
        if (m38422k()) {
            c2 = 0 - c;
        }
        float f4 = this.f6708K;
        return (float) ((c2 * (f4 - f)) + this.f6707J);
    }

    private float getValueOfTouchPositionAbsolute() {
        float f = this.f6734j0;
        float f2 = f;
        if (m38422k()) {
            f2 = 1.0f - f;
        }
        float f3 = this.f6708K;
        float f4 = this.f6707J;
        return C22128a.m8646a(f3, f4, f2, f4);
    }

    private void setValuesInternal(ArrayList<Float> arrayList) {
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.f6709L.size() == arrayList.size() && this.f6709L.equals(arrayList)) {
                return;
            }
            this.f6709L = arrayList;
            int i = 1;
            this.f6717T = true;
            this.f6711N = 0;
            m38410w();
            if (this.f6735k.size() > this.f6709L.size()) {
                List<e.m.a.g.b0.a> subList = this.f6735k.subList(this.f6709L.size(), this.f6735k.size());
                for (e.m.a.g.b0.a aVar : subList) {
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    if (isAttachedToWindow()) {
                        m38428e(aVar);
                    }
                }
                subList.clear();
            }
            while (this.f6735k.size() < this.f6709L.size()) {
                a aVar2 = this.f6733j;
                TypedArray d = n.d(aVar2.c.getContext(), aVar2.a, C2080R.styleable.Slider, aVar2.b, f6701m0, new int[0]);
                Context context = aVar2.c.getContext();
                int resourceId = d.getResourceId(C2080R.styleable.Slider_labelStyle, C2080R.style.Widget_MaterialComponents_Tooltip);
                e.m.a.g.b0.a aVar3 = new e.m.a.g.b0.a(context, (AttributeSet) null, 0, resourceId);
                TypedArray d2 = n.d(aVar3.z, (AttributeSet) null, C2080R.styleable.Tooltip, 0, resourceId, new int[0]);
                aVar3.M = aVar3.z.getResources().getDimensionPixelSize(C2080R.dimen.mtrl_tooltip_arrowSize);
                l lVar = ((h) aVar3).a.a;
                Objects.requireNonNull(lVar);
                l.b bVar = new l.b(lVar);
                bVar.k = aVar3.C();
                ((h) aVar3).a.a = bVar.a();
                aVar3.invalidateSelf();
                CharSequence text = d2.getText(C2080R.styleable.Tooltip_android_text);
                if (!TextUtils.equals(aVar3.y, text)) {
                    aVar3.y = text;
                    aVar3.B.d = true;
                    aVar3.invalidateSelf();
                }
                aVar3.B.b(C26232y.m2475D0(aVar3.z, d2, C2080R.styleable.Tooltip_android_textAppearance), aVar3.z);
                aVar3.q(ColorStateList.valueOf(d2.getColor(C2080R.styleable.Tooltip_backgroundTint, C26493a.m1752g(C26493a.m1747l(C26232y.m2434N1(aVar3.z, C2080R.attr.colorOnBackground, e.m.a.g.b0.a.class.getCanonicalName()), Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED), C26493a.m1747l(C26232y.m2434N1(aVar3.z, 16842801, e.m.a.g.b0.a.class.getCanonicalName()), 229)))));
                aVar3.w(ColorStateList.valueOf(C26232y.m2434N1(aVar3.z, C2080R.attr.colorSurface, e.m.a.g.b0.a.class.getCanonicalName())));
                aVar3.E = d2.getDimensionPixelSize(C2080R.styleable.Tooltip_android_padding, 0);
                aVar3.J = d2.getDimensionPixelSize(C2080R.styleable.Tooltip_android_minWidth, 0);
                aVar3.K = d2.getDimensionPixelSize(C2080R.styleable.Tooltip_android_minHeight, 0);
                aVar3.L = d2.getDimensionPixelSize(C2080R.styleable.Tooltip_android_layout_margin, 0);
                d2.recycle();
                d.recycle();
                this.f6735k.add(aVar3);
                AtomicInteger atomicInteger2 = C26614s.f74505a;
                if (isAttachedToWindow()) {
                    m38432a(aVar3);
                }
            }
            if (this.f6735k.size() == 1) {
                i = 0;
            }
            for (e.m.a.g.b0.a aVar4 : this.f6735k) {
                aVar4.x(i);
            }
            m38427f();
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    /* renamed from: a */
    public final void m38432a(e.m.a.g.b0.a aVar) {
        ViewGroup m2358f0 = C26232y.m2358f0(this);
        Objects.requireNonNull(aVar);
        if (m2358f0 == null) {
            return;
        }
        int[] iArr = new int[2];
        m2358f0.getLocationOnScreen(iArr);
        aVar.N = iArr[0];
        m2358f0.getWindowVisibleDisplayFrame(aVar.D);
        m2358f0.addOnLayoutChangeListener(aVar.C);
    }

    /* renamed from: b */
    public final float m38431b(int i) {
        float f;
        float f2;
        float f3 = this.f6712O;
        float f4 = f3;
        if (f3 == 0.0f) {
            f4 = 1.0f;
        }
        return (this.f6708K - this.f6707J) / f4 <= i ? f4 : Math.round(f / f2) * f4;
    }

    /* renamed from: c */
    public final int m38430c() {
        int i = this.f6749x;
        int i2 = 0;
        if (this.f6746u == 1) {
            i2 = this.f6735k.get(0).getIntrinsicHeight();
        }
        return i + i2;
    }

    /* renamed from: d */
    public final ValueAnimator m38429d(boolean z) {
        float f = z ? 0.0f : 1.0f;
        ValueAnimator valueAnimator = z ? this.f6741p : this.f6740o;
        float f2 = f;
        if (valueAnimator != null) {
            f2 = f;
            if (valueAnimator.isRunning()) {
                f2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                valueAnimator.cancel();
            }
        }
        float f3 = 0.0f;
        if (z) {
            f3 = 1.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f3);
        ofFloat.setDuration((z ? 83 : 117) == 1 ? 1L : 0L);
        ofFloat.setInterpolator(z ? C25156a.f70401e : C25156a.f70399c);
        ofFloat.addUpdateListener(new C2095b());
        return ofFloat;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f6727g.m1505n(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f6721a.setColor(m38424i(this.f6730h0));
        this.f6722b.setColor(m38424i(this.f6728g0));
        this.f6725e.setColor(m38424i(this.f6720W));
        this.f6726f.setColor(m38424i(this.f6719V));
        for (e.m.a.g.b0.a aVar : this.f6735k) {
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        if (this.f6732i0.isStateful()) {
            this.f6732i0.setState(getDrawableState());
        }
        this.f6724d.setColor(m38424i(this.f6718U));
        this.f6724d.setAlpha(63);
    }

    /* renamed from: e */
    public final void m38428e(e.m.a.g.b0.a aVar) {
        o m2353g0 = C26232y.m2353g0(this);
        if (m2353g0 != null) {
            m2353g0.a.remove(aVar);
            ViewGroup m2358f0 = C26232y.m2358f0(this);
            Objects.requireNonNull(aVar);
            if (m2358f0 == null) {
                return;
            }
            m2358f0.removeOnLayoutChangeListener(aVar.C);
        }
    }

    /* renamed from: f */
    public final void m38427f() {
        for (L l : this.f6737l) {
            Iterator<Float> it = this.f6709L.iterator();
            while (it.hasNext()) {
                l.a(this, it.next().floatValue(), false);
            }
        }
    }

    /* renamed from: g */
    public final void m38426g() {
        if (this.f6739n) {
            this.f6739n = false;
            ValueAnimator m38429d = m38429d(false);
            this.f6741p = m38429d;
            this.f6740o = null;
            m38429d.addListener(new C2096c());
            this.f6741p.start();
        }
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f6727g.f74628k;
    }

    public int getActiveThumbIndex() {
        return this.f6710M;
    }

    public int getFocusedThumbIndex() {
        return this.f6711N;
    }

    public int getHaloRadius() {
        return this.f6751z;
    }

    public ColorStateList getHaloTintList() {
        return this.f6718U;
    }

    public int getLabelBehavior() {
        return this.f6746u;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.f6712O;
    }

    public float getThumbElevation() {
        return this.f6732i0.a.o;
    }

    public int getThumbRadius() {
        return this.f6750y;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f6732i0.a.e;
    }

    public float getThumbStrokeWidth() {
        return this.f6732i0.a.l;
    }

    public ColorStateList getThumbTintList() {
        return this.f6732i0.a.d;
    }

    public ColorStateList getTickActiveTintList() {
        return this.f6719V;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.f6720W;
    }

    public ColorStateList getTickTintList() {
        if (this.f6720W.equals(this.f6719V)) {
            return this.f6719V;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.f6728g0;
    }

    public int getTrackHeight() {
        return this.f6747v;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.f6730h0;
    }

    public int getTrackSidePadding() {
        return this.f6748w;
    }

    public ColorStateList getTrackTintList() {
        if (this.f6730h0.equals(this.f6728g0)) {
            return this.f6728g0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.f6715R;
    }

    public float getValueFrom() {
        return this.f6707J;
    }

    public float getValueTo() {
        return this.f6708K;
    }

    public List<Float> getValues() {
        return new ArrayList(this.f6709L);
    }

    /* renamed from: h */
    public final String m38425h(float f) {
        c cVar = this.f6705D;
        if (cVar != null) {
            return cVar.a(f);
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    /* renamed from: i */
    public final int m38424i(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    /* renamed from: j */
    public final boolean m38423j() {
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

    /* renamed from: k */
    public final boolean m38422k() {
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public final void m38421l() {
        if (this.f6712O <= 0.0f) {
            return;
        }
        m38409x();
        int min = Math.min((int) (((this.f6708K - this.f6707J) / this.f6712O) + 1.0f), (this.f6715R / (this.f6747v * 2)) + 1);
        float[] fArr = this.f6713P;
        if (fArr == null || fArr.length != min * 2) {
            this.f6713P = new float[min * 2];
        }
        float f = this.f6715R / (min - 1);
        for (int i = 0; i < min * 2; i += 2) {
            float[] fArr2 = this.f6713P;
            fArr2[i] = ((i / 2) * f) + this.f6748w;
            fArr2[i + 1] = m38430c();
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: m */
    public final boolean m38420m(int i) {
        char c;
        int i2 = this.f6711N;
        ?? r0 = i2 + i;
        ?? size = this.f6709L.size() - 1;
        if (r0 < 0) {
            c = 0;
        } else {
            c = r0;
            if (r0 > size) {
                c = size;
            }
        }
        int i3 = c;
        this.f6711N = i3;
        if (i3 == i2) {
            return false;
        }
        if (this.f6710M != -1) {
            this.f6710M = i3;
        }
        m38410w();
        postInvalidate();
        return true;
    }

    /* renamed from: n */
    public final boolean m38419n(int i) {
        int i2 = i;
        if (m38422k()) {
            i2 = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        return m38420m(i2);
    }

    /* renamed from: o */
    public final float m38418o(float f) {
        float f2 = this.f6707J;
        float f3 = (f - f2) / (this.f6708K - f2);
        return m38422k() ? 1.0f - f3 : f3;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (e.m.a.g.b0.a aVar : this.f6735k) {
            m38432a(aVar);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        BaseSlider<S, L, T>.RunnableC2097d runnableC2097d = this.f6731i;
        if (runnableC2097d != null) {
            removeCallbacks(runnableC2097d);
        }
        this.f6739n = false;
        for (e.m.a.g.b0.a aVar : this.f6735k) {
            m38428e(aVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f6717T) {
            m38409x();
            m38421l();
        }
        super.onDraw(canvas);
        int m38430c = m38430c();
        int i = this.f6715R;
        float[] activeRange = getActiveRange();
        int i2 = this.f6748w;
        float f = i2;
        float f2 = activeRange[1];
        float f3 = i;
        float f4 = (f2 * f3) + f;
        float f5 = i2 + i;
        if (f4 < f5) {
            float f6 = m38430c;
            canvas.drawLine(f4, f6, f5, f6, this.f6721a);
        }
        float f7 = this.f6748w;
        float f8 = (activeRange[0] * f3) + f7;
        if (f8 > f7) {
            float f9 = m38430c;
            canvas.drawLine(f7, f9, f8, f9, this.f6721a);
        }
        if (((Float) Collections.max(getValues())).floatValue() > this.f6707J) {
            int i3 = this.f6715R;
            float[] activeRange2 = getActiveRange();
            float f10 = this.f6748w;
            float f11 = activeRange2[1];
            float f12 = i3;
            float f13 = activeRange2[0];
            float f14 = m38430c;
            canvas.drawLine((f13 * f12) + f10, f14, (f11 * f12) + f10, f14, this.f6722b);
        }
        if (this.f6714Q && this.f6712O > 0.0f) {
            float[] activeRange3 = getActiveRange();
            int round = Math.round(activeRange3[0] * ((this.f6713P.length / 2) - 1));
            int round2 = Math.round(activeRange3[1] * ((this.f6713P.length / 2) - 1));
            int i4 = round * 2;
            canvas.drawPoints(this.f6713P, 0, i4, this.f6725e);
            int i5 = round2 * 2;
            canvas.drawPoints(this.f6713P, i4, i5 - i4, this.f6726f);
            float[] fArr = this.f6713P;
            canvas.drawPoints(fArr, i5, fArr.length - i5, this.f6725e);
        }
        if ((this.f6706E || isFocused()) && isEnabled()) {
            int i6 = this.f6715R;
            if (m38414s()) {
                int m38418o = (int) ((m38418o(this.f6709L.get(this.f6711N).floatValue()) * i6) + this.f6748w);
                if (Build.VERSION.SDK_INT < 28) {
                    int i7 = this.f6751z;
                    canvas.clipRect(m38418o - i7, m38430c - i7, m38418o + i7, i7 + m38430c, Region.Op.UNION);
                }
                canvas.drawCircle(m38418o, m38430c, this.f6751z, this.f6724d);
            }
            if (this.f6710M != -1 && this.f6746u != 2) {
                if (!this.f6739n) {
                    this.f6739n = true;
                    ValueAnimator m38429d = m38429d(true);
                    this.f6740o = m38429d;
                    this.f6741p = null;
                    m38429d.start();
                }
                Iterator<e.m.a.g.b0.a> it = this.f6735k.iterator();
                for (int i8 = 0; i8 < this.f6709L.size() && it.hasNext(); i8++) {
                    if (i8 != this.f6711N) {
                        m38415r(it.next(), this.f6709L.get(i8).floatValue());
                    }
                }
                if (!it.hasNext()) {
                    throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f6735k.size()), Integer.valueOf(this.f6709L.size())));
                }
                m38415r(it.next(), this.f6709L.get(this.f6711N).floatValue());
            }
        }
        int i9 = this.f6715R;
        if (!isEnabled()) {
            Iterator<Float> it2 = this.f6709L.iterator();
            while (it2.hasNext()) {
                canvas.drawCircle((m38418o(it2.next().floatValue()) * i9) + this.f6748w, m38430c, this.f6750y, this.f6723c);
            }
        }
        Iterator<Float> it3 = this.f6709L.iterator();
        while (it3.hasNext()) {
            Float next = it3.next();
            canvas.save();
            int i10 = this.f6748w;
            int m38418o2 = (int) (m38418o(next.floatValue()) * i9);
            int i11 = this.f6750y;
            canvas.translate((i10 + m38418o2) - i11, m38430c - i11);
            this.f6732i0.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            this.f6710M = -1;
            m38426g();
            this.f6727g.m1508k(this.f6711N);
            return;
        }
        if (i == 1) {
            m38420m(Integer.MAX_VALUE);
        } else if (i == 2) {
            m38420m(Integer.MIN_VALUE);
        } else if (i == 17) {
            m38419n(Integer.MAX_VALUE);
        } else if (i == 66) {
            m38419n(Integer.MIN_VALUE);
        }
        this.f6727g.m1495x(this.f6711N);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        float f;
        Float f2;
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.f6709L.size() == 1) {
            this.f6710M = 0;
        }
        Boolean bool = null;
        if (this.f6710M == -1) {
            Boolean bool2 = Boolean.TRUE;
            if (i != 61) {
                if (i != 66) {
                    if (i != 81) {
                        if (i == 69) {
                            m38420m(-1);
                        } else if (i != 70) {
                            switch (i) {
                                case 21:
                                    m38419n(-1);
                                    break;
                                case 22:
                                    m38419n(1);
                                    break;
                            }
                        }
                        bool = bool2;
                    }
                    m38420m(1);
                    bool = bool2;
                }
                this.f6710M = this.f6711N;
                postInvalidate();
                bool = bool2;
            } else {
                bool = keyEvent.hasNoModifiers() ? Boolean.valueOf(m38420m(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(m38420m(-1)) : Boolean.FALSE;
            }
            return bool != null ? bool.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        boolean isLongPress = this.f6716S | keyEvent.isLongPress();
        this.f6716S = isLongPress;
        if (isLongPress) {
            f = m38431b(20);
        } else {
            float f3 = this.f6712O;
            f = f3;
            if (f3 == 0.0f) {
                f = 1.0f;
            }
        }
        if (i == 21) {
            if (!m38422k()) {
                f = -f;
            }
            f2 = Float.valueOf(f);
        } else if (i != 22) {
            f2 = i != 69 ? (i == 70 || i == 81) ? Float.valueOf(f) : null : Float.valueOf(-f);
        } else {
            float f4 = f;
            if (m38422k()) {
                f4 = -f;
            }
            f2 = Float.valueOf(f4);
        }
        if (f2 != null) {
            if (!m38413t(this.f6710M, f2.floatValue() + this.f6709L.get(this.f6710M).floatValue())) {
                return true;
            }
            m38410w();
            postInvalidate();
            return true;
        }
        if (i != 23) {
            if (i == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return m38420m(1);
                }
                if (!keyEvent.isShiftPressed()) {
                    return false;
                }
                return m38420m(-1);
            } else if (i != 66) {
                return super.onKeyDown(i, keyEvent);
            }
        }
        this.f6710M = -1;
        m38426g();
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.f6716S = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f6745t;
        int i4 = 0;
        if (this.f6746u == 1) {
            i4 = this.f6735k.get(0).getIntrinsicHeight();
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3 + i4, 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.f6707J = sliderState.f6752a;
        this.f6708K = sliderState.f6753b;
        setValuesInternal(sliderState.f6754c);
        this.f6712O = sliderState.f6755d;
        if (sliderState.f6756e) {
            requestFocus();
        }
        m38427f();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f6752a = this.f6707J;
        sliderState.f6753b = this.f6708K;
        sliderState.f6754c = new ArrayList<>(this.f6709L);
        sliderState.f6755d = this.f6712O;
        sliderState.f6756e = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f6715R = Math.max(i - (this.f6748w * 2), 0);
        m38421l();
        m38410w();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float f = (x - this.f6748w) / this.f6715R;
        this.f6734j0 = f;
        float max = Math.max(0.0f, f);
        this.f6734j0 = max;
        this.f6734j0 = Math.min(1.0f, max);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f6703B = x;
            if (!m38423j()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (m38416q()) {
                    requestFocus();
                    this.f6706E = true;
                    m38412u();
                    m38410w();
                    invalidate();
                    m38417p();
                }
            }
        } else if (actionMasked == 1) {
            this.f6706E = false;
            MotionEvent motionEvent2 = this.f6704C;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.f6704C.getX() - motionEvent.getX()) <= this.f6742q && Math.abs(this.f6704C.getY() - motionEvent.getY()) <= this.f6742q && m38416q()) {
                m38417p();
            }
            if (this.f6710M != -1) {
                m38412u();
                this.f6710M = -1;
                for (T t : this.f6738m) {
                    t.b(this);
                }
            }
            m38426g();
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.f6706E) {
                if (m38423j() && Math.abs(x - this.f6703B) < this.f6742q) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                m38417p();
            }
            if (m38416q()) {
                this.f6706E = true;
                m38412u();
                m38410w();
                invalidate();
            }
        }
        setPressed(this.f6706E);
        this.f6704C = MotionEvent.obtain(motionEvent);
        return true;
    }

    /* renamed from: p */
    public final void m38417p() {
        for (T t : this.f6738m) {
            t.a(this);
        }
    }

    /* renamed from: q */
    public boolean m38416q() {
        float f;
        boolean z = true;
        if (this.f6710M != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float m38418o = (m38418o(valueOfTouchPositionAbsolute) * this.f6715R) + this.f6748w;
        this.f6710M = 0;
        float abs = Math.abs(this.f6709L.get(0).floatValue() - valueOfTouchPositionAbsolute);
        int i = 1;
        while (i < this.f6709L.size()) {
            float abs2 = Math.abs(this.f6709L.get(i).floatValue() - valueOfTouchPositionAbsolute);
            float m38418o2 = (m38418o(this.f6709L.get(i).floatValue()) * this.f6715R) + this.f6748w;
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z2 = !m38422k() ? m38418o2 - m38418o < 0.0f : m38418o2 - m38418o > 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.f6710M = i;
            } else {
                f = abs;
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else if (Math.abs(m38418o2 - m38418o) < this.f6742q) {
                    this.f6710M = -1;
                    return false;
                } else {
                    f = abs;
                    if (z2) {
                        this.f6710M = i;
                    }
                }
                i++;
                abs = f;
            }
            f = abs2;
            i++;
            abs = f;
        }
        if (this.f6710M == -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: r */
    public final void m38415r(e.m.a.g.b0.a aVar, float f) {
        String m38425h = m38425h(f);
        if (!TextUtils.equals(aVar.y, m38425h)) {
            aVar.y = m38425h;
            aVar.B.d = true;
            aVar.invalidateSelf();
        }
        int m38418o = (this.f6748w + ((int) (m38418o(f) * this.f6715R))) - (aVar.getIntrinsicWidth() / 2);
        int m38430c = m38430c() - (this.f6702A + this.f6750y);
        aVar.setBounds(m38418o, m38430c - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + m38418o, m38430c);
        Rect rect = new Rect(aVar.getBounds());
        e.m.a.g.o.c.c(C26232y.m2358f0(this), this, rect);
        aVar.setBounds(rect);
        C26232y.m2353g0(this).a.add(aVar);
    }

    /* renamed from: s */
    public final boolean m38414s() {
        return !(getBackground() instanceof RippleDrawable);
    }

    public void setActiveThumbIndex(int i) {
        this.f6710M = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.f6709L.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f6711N = i;
        this.f6727g.m1495x(i);
        postInvalidate();
    }

    public void setHaloRadius(int i) {
        if (i == this.f6751z) {
            return;
        }
        this.f6751z = i;
        Drawable background = getBackground();
        if (m38414s() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            ((RippleDrawable) background).setRadius(this.f6751z);
        }
    }

    public void setHaloRadiusResource(int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f6718U)) {
            return;
        }
        this.f6718U = colorStateList;
        Drawable background = getBackground();
        if (!m38414s() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f6724d.setColor(colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor()));
        this.f6724d.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i) {
        if (this.f6746u != i) {
            this.f6746u = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(c cVar) {
        this.f6705D = cVar;
    }

    public void setSeparationUnit(int i) {
        this.f6736k0 = i;
    }

    public void setStepSize(float f) {
        if (f >= 0.0f) {
            if (this.f6712O == f) {
                return;
            }
            this.f6712O = f;
            this.f6717T = true;
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(f), Float.toString(this.f6707J), Float.toString(this.f6708K)));
    }

    public void setThumbElevation(float f) {
        h hVar = this.f6732i0;
        h.b bVar = hVar.a;
        if (bVar.o != f) {
            bVar.o = f;
            hVar.A();
        }
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbRadius(int i) {
        if (i == this.f6750y) {
            return;
        }
        this.f6750y = i;
        this.f6748w = this.f6743r + Math.max(i - this.f6744s, 0);
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (isLaidOut()) {
            this.f6715R = Math.max(getWidth() - (this.f6748w * 2), 0);
            m38421l();
        }
        h hVar = this.f6732i0;
        l.b bVar = new l.b();
        float f = this.f6750y;
        d m2452J = C26232y.m2452J(0);
        bVar.a = m2452J;
        l.b.b(m2452J);
        bVar.b = m2452J;
        l.b.b(m2452J);
        bVar.c = m2452J;
        l.b.b(m2452J);
        bVar.d = m2452J;
        l.b.b(m2452J);
        bVar.c(f);
        hVar.a.a = bVar.a();
        hVar.invalidateSelf();
        h hVar2 = this.f6732i0;
        int i2 = this.f6750y * 2;
        hVar2.setBounds(0, 0, i2, i2);
        postInvalidate();
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.f6732i0.w(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            Context context = getContext();
            ThreadLocal<TypedValue> threadLocal = C25440a.f71017a;
            setThumbStrokeColor(context.getColorStateList(i));
        }
    }

    public void setThumbStrokeWidth(float f) {
        h hVar = this.f6732i0;
        hVar.a.l = f;
        hVar.invalidateSelf();
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f6732i0.a.d)) {
            return;
        }
        this.f6732i0.q(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f6719V)) {
            return;
        }
        this.f6719V = colorStateList;
        this.f6726f.setColor(m38424i(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f6720W)) {
            return;
        }
        this.f6720W = colorStateList;
        this.f6725e.setColor(m38424i(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z) {
        if (this.f6714Q != z) {
            this.f6714Q = z;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f6728g0)) {
            return;
        }
        this.f6728g0 = colorStateList;
        this.f6722b.setColor(m38424i(colorStateList));
        invalidate();
    }

    public void setTrackHeight(int i) {
        if (this.f6747v != i) {
            this.f6747v = i;
            this.f6721a.setStrokeWidth(i);
            this.f6722b.setStrokeWidth(this.f6747v);
            this.f6725e.setStrokeWidth(this.f6747v / 2.0f);
            this.f6726f.setStrokeWidth(this.f6747v / 2.0f);
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f6730h0)) {
            return;
        }
        this.f6730h0 = colorStateList;
        this.f6721a.setColor(m38424i(colorStateList));
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.f6707J = f;
        this.f6717T = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.f6708K = f;
        this.f6717T = true;
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

    /* renamed from: t */
    public final boolean m38413t(int i, float f) {
        if (Math.abs(f - this.f6709L.get(i).floatValue()) < 1.0E-4d) {
            return false;
        }
        float minSeparation = this.f6712O == 0.0f ? getMinSeparation() : 0.0f;
        float f2 = minSeparation;
        if (this.f6736k0 == 0) {
            if (minSeparation == 0.0f) {
                f2 = 0.0f;
            } else {
                float f3 = this.f6707J;
                f2 = C22128a.m8646a(f3, this.f6708K, (minSeparation - this.f6748w) / this.f6715R, f3);
            }
        }
        float f4 = f2;
        if (m38422k()) {
            f4 = -f2;
        }
        int i2 = i + 1;
        float floatValue = i2 >= this.f6709L.size() ? this.f6708K : this.f6709L.get(i2).floatValue() - f4;
        int i3 = i - 1;
        this.f6709L.set(i, Float.valueOf(MediaSessionCompat.m43181z(f, i3 < 0 ? this.f6707J : f4 + this.f6709L.get(i3).floatValue(), floatValue)));
        this.f6711N = i;
        for (L l : this.f6737l) {
            l.a(this, this.f6709L.get(i).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f6729h;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return true;
        }
        BaseSlider<S, L, T>.RunnableC2097d runnableC2097d = this.f6731i;
        if (runnableC2097d == null) {
            this.f6731i = new RunnableC2097d(null);
        } else {
            removeCallbacks(runnableC2097d);
        }
        BaseSlider<S, L, T>.RunnableC2097d runnableC2097d2 = this.f6731i;
        runnableC2097d2.f6759a = i;
        postDelayed(runnableC2097d2, 200L);
        return true;
    }

    /* renamed from: u */
    public final boolean m38412u() {
        return m38413t(this.f6710M, getValueOfTouchPosition());
    }

    /* renamed from: v */
    public void m38411v(int i, Rect rect) {
        int m38418o = this.f6748w + ((int) (m38418o(getValues().get(i).floatValue()) * this.f6715R));
        int m38430c = m38430c();
        int i2 = this.f6750y;
        rect.set(m38418o - i2, m38430c - i2, m38418o + i2, m38430c + i2);
    }

    /* renamed from: w */
    public final void m38410w() {
        if (m38414s() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (!(background instanceof RippleDrawable)) {
            return;
        }
        int m38418o = (int) ((m38418o(this.f6709L.get(this.f6711N).floatValue()) * this.f6715R) + this.f6748w);
        int m38430c = m38430c();
        int i = this.f6751z;
        background.setHotspotBounds(m38418o - i, m38430c - i, m38418o + i, m38430c + i);
    }

    /* renamed from: x */
    public final void m38409x() {
        if (this.f6717T) {
            float f = this.f6707J;
            float f2 = this.f6708K;
            if (f >= f2) {
                throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.toString(this.f6707J), Float.toString(this.f6708K)));
            }
            if (f2 <= f) {
                throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.toString(this.f6708K), Float.toString(this.f6707J)));
            }
            if (this.f6712O > 0.0f && !m38408y(f2)) {
                throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(this.f6712O), Float.toString(this.f6707J), Float.toString(this.f6708K)));
            }
            Iterator<Float> it = this.f6709L.iterator();
            while (it.hasNext()) {
                Float next = it.next();
                if (next.floatValue() < this.f6707J || next.floatValue() > this.f6708K) {
                    throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", Float.toString(next.floatValue()), Float.toString(this.f6707J), Float.toString(this.f6708K)));
                }
                if (this.f6712O > 0.0f && !m38408y(next.floatValue())) {
                    throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", Float.toString(next.floatValue()), Float.toString(this.f6707J), Float.toString(this.f6712O), Float.toString(this.f6712O)));
                }
            }
            float f3 = this.f6712O;
            if (f3 != 0.0f) {
                if (((int) f3) != f3) {
                    String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "stepSize", Float.valueOf(f3));
                }
                float f4 = this.f6707J;
                if (((int) f4) != f4) {
                    String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueFrom", Float.valueOf(f4));
                }
                float f5 = this.f6708K;
                if (((int) f5) != f5) {
                    String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueTo", Float.valueOf(f5));
                }
            }
            this.f6717T = false;
        }
    }

    /* renamed from: y */
    public final boolean m38408y(float f) {
        double doubleValue = new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.f6707J))).divide(new BigDecimal(Float.toString(this.f6712O)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < 1.0E-4d;
    }
}
