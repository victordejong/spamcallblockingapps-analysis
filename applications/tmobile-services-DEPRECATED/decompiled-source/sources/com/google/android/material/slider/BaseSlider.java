package com.google.android.material.slider;

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
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.gms.common.api.Api;
import com.google.android.material.C1027R;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.tooltip.TooltipDrawable;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/slider/BaseSlider.class */
public abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {

    /* renamed from: a0 */
    private static final String f11188a0 = BaseSlider.class.getSimpleName();

    /* renamed from: b0 */
    private static final int f11189b0 = C1027R.style.Widget_MaterialComponents_Slider;

    /* renamed from: A */
    private int f11190A;

    /* renamed from: B */
    private float f11191B;

    /* renamed from: C */
    private MotionEvent f11192C;

    /* renamed from: D */
    private LabelFormatter f11193D;

    /* renamed from: E */
    private boolean f11194E;

    /* renamed from: F */
    private float f11195F;

    /* renamed from: G */
    private float f11196G;

    /* renamed from: H */
    private ArrayList<Float> f11197H;

    /* renamed from: I */
    private int f11198I;

    /* renamed from: J */
    private int f11199J;

    /* renamed from: K */
    private float f11200K;

    /* renamed from: L */
    private float[] f11201L;

    /* renamed from: M */
    private int f11202M;

    /* renamed from: N */
    private boolean f11203N;

    /* renamed from: O */
    private boolean f11204O;

    /* renamed from: P */
    private boolean f11205P;
    @NonNull

    /* renamed from: Q */
    private ColorStateList f11206Q;
    @NonNull

    /* renamed from: R */
    private ColorStateList f11207R;
    @NonNull

    /* renamed from: S */
    private ColorStateList f11208S;
    @NonNull

    /* renamed from: T */
    private ColorStateList f11209T;
    @NonNull

    /* renamed from: U */
    private ColorStateList f11210U;
    @NonNull

    /* renamed from: V */
    private final MaterialShapeDrawable f11211V;

    /* renamed from: W */
    private float f11212W;
    @NonNull

    /* renamed from: f */
    private final Paint f11213f;
    @NonNull

    /* renamed from: g */
    private final Paint f11214g;
    @NonNull

    /* renamed from: h */
    private final Paint f11215h;
    @NonNull

    /* renamed from: i */
    private final Paint f11216i;
    @NonNull

    /* renamed from: j */
    private final Paint f11217j;
    @NonNull

    /* renamed from: k */
    private final Paint f11218k;
    @NonNull

    /* renamed from: l */
    private final AccessibilityHelper f11219l;

    /* renamed from: m */
    private final AccessibilityManager f11220m;

    /* renamed from: n */
    private BaseSlider<S, L, T>.AccessibilityEventSender f11221n;
    @NonNull

    /* renamed from: o */
    private final TooltipDrawableFactory f11222o;
    @NonNull

    /* renamed from: p */
    private final List<TooltipDrawable> f11223p;
    @NonNull

    /* renamed from: q */
    private final List<L> f11224q;
    @NonNull

    /* renamed from: r */
    private final List<T> f11225r;

    /* renamed from: s */
    private final int f11226s;

    /* renamed from: t */
    private int f11227t;

    /* renamed from: u */
    private int f11228u;

    /* renamed from: v */
    private int f11229v;

    /* renamed from: w */
    private int f11230w;

    /* renamed from: x */
    private int f11231x;

    /* renamed from: y */
    private int f11232y;

    /* renamed from: z */
    private int f11233z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/slider/BaseSlider$AccessibilityEventSender.class */
    public class AccessibilityEventSender implements Runnable {

        /* renamed from: f */
        int f11237f;

        private AccessibilityEventSender() {
            this.f11237f = -1;
        }

        /* renamed from: a */
        void m9088a(int i) {
            this.f11237f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f11219l.m18783J(this.f11237f, 4);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/slider/BaseSlider$AccessibilityHelper.class */
    private static class AccessibilityHelper extends ExploreByTouchHelper {

        /* renamed from: n */
        private final BaseSlider<?, ?, ?> f11239n;

        /* renamed from: o */
        Rect f11240o = new Rect();

        AccessibilityHelper(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f11239n = baseSlider;
        }

        @NonNull
        /* renamed from: L */
        private String m9086L(int i) {
            return i == this.f11239n.getValues().size() - 1 ? this.f11239n.getContext().getString(C1027R.string.material_slider_range_end) : i == 0 ? this.f11239n.getContext().getString(C1027R.string.material_slider_range_start) : "";
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: C */
        protected void mo9087C(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.m19029b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3340o);
            List<Float> values = this.f11239n.getValues();
            float floatValue = values.get(i).floatValue();
            float valueFrom = this.f11239n.getValueFrom();
            float valueTo = this.f11239n.getValueTo();
            if (this.f11239n.isEnabled()) {
                if (floatValue > valueFrom) {
                    accessibilityNodeInfoCompat.m19031a(8192);
                }
                if (floatValue < valueTo) {
                    accessibilityNodeInfoCompat.m19031a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
                }
            }
            accessibilityNodeInfoCompat.m18988v0(AccessibilityNodeInfoCompat.RangeInfoCompat.m18972a(1, valueFrom, valueTo, floatValue));
            accessibilityNodeInfoCompat.m19026c0(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f11239n.getContentDescription() != null) {
                sb.append(this.f11239n.getContentDescription());
                sb.append(",");
            }
            if (values.size() > 1) {
                sb.append(m9086L(i));
                sb.append(this.f11239n.m9091x(floatValue));
            }
            accessibilityNodeInfoCompat.m19018g0(sb.toString());
            this.f11239n.m9124X(i, this.f11240o);
            accessibilityNodeInfoCompat.m19034X(this.f11240o);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: o */
        protected int mo9085o(float f, float f2) {
            for (int i = 0; i < this.f11239n.getValues().size(); i++) {
                this.f11239n.m9124X(i, this.f11240o);
                if (this.f11240o.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: p */
        protected void mo9084p(List<Integer> list) {
            for (int i = 0; i < this.f11239n.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: y */
        protected boolean mo9083y(int i, int i2, Bundle bundle) {
            if (!this.f11239n.isEnabled()) {
                return false;
            }
            if (i2 == 4096 || i2 == 8192) {
                float k = this.f11239n.m9104k(20);
                float f = k;
                if (i2 == 8192) {
                    f = -k;
                }
                float f2 = f;
                if (this.f11239n.m9143D()) {
                    f2 = -f;
                }
                if (!this.f11239n.m9126V(i, MathUtils.m19452a(this.f11239n.getValues().get(i).floatValue() + f2, this.f11239n.getValueFrom(), this.f11239n.getValueTo()))) {
                    return false;
                }
                this.f11239n.m9123Y();
                this.f11239n.postInvalidate();
                m18766r(i);
                return true;
            } else if (i2 != 16908349 || bundle == null || !bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                return false;
            } else {
                if (!this.f11239n.m9126V(i, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                    return false;
                }
                this.f11239n.m9123Y();
                this.f11239n.postInvalidate();
                m18766r(i);
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/slider/BaseSlider$SliderState.class */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new Parcelable.Creator<SliderState>() { // from class: com.google.android.material.slider.BaseSlider.SliderState.1
            @NonNull
            /* renamed from: a */
            public SliderState createFromParcel(@NonNull Parcel parcel) {
                return new SliderState(parcel);
            }

            @NonNull
            /* renamed from: b */
            public SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        };

        /* renamed from: f */
        float f11241f;

        /* renamed from: g */
        float f11242g;

        /* renamed from: h */
        ArrayList<Float> f11243h;

        /* renamed from: i */
        float f11244i;

        /* renamed from: j */
        boolean f11245j;

        private SliderState(@NonNull Parcel parcel) {
            super(parcel);
            this.f11241f = parcel.readFloat();
            this.f11242g = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.f11243h = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f11244i = parcel.readFloat();
            this.f11245j = parcel.createBooleanArray()[0];
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f11241f);
            parcel.writeFloat(this.f11242g);
            parcel.writeList(this.f11243h);
            parcel.writeFloat(this.f11244i);
            parcel.writeBooleanArray(new boolean[]{this.f11245j});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/slider/BaseSlider$TooltipDrawableFactory.class */
    public interface TooltipDrawableFactory {
        /* renamed from: a */
        TooltipDrawable mo9080a();
    }

    public BaseSlider(@NonNull Context context) {
        this(context, null);
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.sliderStyle);
    }

    public BaseSlider(@NonNull Context context, @Nullable final AttributeSet attributeSet, final int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f11189b0), attributeSet, i);
        this.f11223p = new ArrayList();
        this.f11224q = new ArrayList();
        this.f11225r = new ArrayList();
        this.f11194E = false;
        this.f11197H = new ArrayList<>();
        this.f11198I = -1;
        this.f11199J = -1;
        this.f11200K = 0.0f;
        this.f11204O = false;
        this.f11211V = new MaterialShapeDrawable();
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f11213f = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f11213f.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = new Paint();
        this.f11214g = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f11214g.setStrokeCap(Paint.Cap.ROUND);
        Paint paint3 = new Paint(1);
        this.f11215h = paint3;
        paint3.setStyle(Paint.Style.FILL);
        this.f11215h.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.f11216i = paint4;
        paint4.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint();
        this.f11217j = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        this.f11217j.setStrokeCap(Paint.Cap.ROUND);
        Paint paint6 = new Paint();
        this.f11218k = paint6;
        paint6.setStyle(Paint.Style.STROKE);
        this.f11218k.setStrokeCap(Paint.Cap.ROUND);
        m9142E(context2.getResources());
        this.f11222o = new TooltipDrawableFactory() { // from class: com.google.android.material.slider.BaseSlider.1
            @Override // com.google.android.material.slider.BaseSlider.TooltipDrawableFactory
            /* renamed from: a */
            public TooltipDrawable mo9080a() {
                TypedArray h = ThemeEnforcement.m9445h(BaseSlider.this.getContext(), attributeSet, C1027R.styleable.Slider, i, BaseSlider.f11189b0, new int[0]);
                TooltipDrawable M = BaseSlider.m9134M(BaseSlider.this.getContext(), h);
                h.recycle();
                return M;
            }
        };
        m9132P(context2, attributeSet, i);
        setFocusable(true);
        setClickable(true);
        this.f11211V.m9316e0(2);
        this.f11226s = ViewConfiguration.get(context2).getScaledTouchSlop();
        AccessibilityHelper accessibilityHelper = new AccessibilityHelper(this);
        this.f11219l = accessibilityHelper;
        ViewCompat.m19183n0(this, accessibilityHelper);
        this.f11220m = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    /* renamed from: B */
    private void m9145B() {
        this.f11213f.setStrokeWidth(this.f11229v);
        this.f11214g.setStrokeWidth(this.f11229v);
        this.f11217j.setStrokeWidth(this.f11229v / 2.0f);
        this.f11218k.setStrokeWidth(this.f11229v / 2.0f);
    }

    /* renamed from: C */
    private boolean m9144C() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            if (((ViewGroup) parent).shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: E */
    private void m9142E(@NonNull Resources resources) {
        this.f11227t = resources.getDimensionPixelSize(C1027R.dimen.mtrl_slider_widget_height);
        this.f11230w = resources.getDimensionPixelOffset(C1027R.dimen.mtrl_slider_track_side_padding);
        this.f11231x = resources.getDimensionPixelOffset(C1027R.dimen.mtrl_slider_track_top);
        this.f11190A = resources.getDimensionPixelSize(C1027R.dimen.mtrl_slider_label_padding);
    }

    /* renamed from: F */
    private void m9141F(@NonNull Canvas canvas, int i, int i2) {
        if (m9129S()) {
            int I = (int) (this.f11230w + (m9138I(this.f11197H.get(this.f11199J).floatValue()) * i));
            if (Build.VERSION.SDK_INT < 28) {
                int i3 = this.f11233z;
                canvas.clipRect(I - i3, i2 - i3, I + i3, i3 + i2, Region.Op.UNION);
            }
            canvas.drawCircle(I, i2, this.f11233z, this.f11216i);
        }
    }

    /* renamed from: G */
    private boolean m9140G(int i) {
        int i2 = this.f11199J;
        int c = (int) MathUtils.m19450c(i2 + i, 0L, this.f11197H.size() - 1);
        this.f11199J = c;
        if (c == i2) {
            return false;
        }
        if (this.f11198I != -1) {
            this.f11198I = c;
        }
        m9123Y();
        postInvalidate();
        return true;
    }

    /* renamed from: H */
    private boolean m9139H(int i) {
        int i2 = i;
        if (m9143D()) {
            i2 = i == Integer.MIN_VALUE ? Api.BaseClientBuilder.API_PRIORITY_OTHER : -i;
        }
        return m9140G(i2);
    }

    /* renamed from: I */
    private float m9138I(float f) {
        float f2 = this.f11195F;
        float f3 = (f - f2) / (this.f11196G - f2);
        return m9143D() ? 1.0f - f3 : f3;
    }

    /* renamed from: J */
    private Boolean m9137J(int i, @NonNull KeyEvent keyEvent) {
        if (i == 61) {
            return keyEvent.hasNoModifiers() ? Boolean.valueOf(m9140G(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(m9140G(-1)) : Boolean.FALSE;
        }
        if (i != 66) {
            if (i != 81) {
                if (i == 69) {
                    m9140G(-1);
                    return Boolean.TRUE;
                } else if (i != 70) {
                    switch (i) {
                        case 21:
                            m9139H(-1);
                            return Boolean.TRUE;
                        case 22:
                            m9139H(1);
                            return Boolean.TRUE;
                        case 23:
                            break;
                        default:
                            return null;
                    }
                }
            }
            m9140G(1);
            return Boolean.TRUE;
        }
        this.f11198I = this.f11199J;
        postInvalidate();
        return Boolean.TRUE;
    }

    /* renamed from: K */
    private void m9136K() {
        for (T t : this.f11225r) {
            t.m9148a(this);
        }
    }

    /* renamed from: L */
    private void m9135L() {
        for (T t : this.f11225r) {
            t.m9147b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    /* renamed from: M */
    public static TooltipDrawable m9134M(@NonNull Context context, @NonNull TypedArray typedArray) {
        return TooltipDrawable.m8691r0(context, null, 0, typedArray.getResourceId(C1027R.styleable.Slider_labelStyle, C1027R.style.Widget_MaterialComponents_Tooltip));
    }

    /* renamed from: O */
    private static int m9133O(float[] fArr, float f) {
        return Math.round(f * ((fArr.length / 2) - 1));
    }

    /* renamed from: P */
    private void m9132P(Context context, AttributeSet attributeSet, int i) {
        TypedArray h = ThemeEnforcement.m9445h(context, attributeSet, C1027R.styleable.Slider, i, f11189b0, new int[0]);
        this.f11195F = h.getFloat(C1027R.styleable.Slider_android_valueFrom, 0.0f);
        this.f11196G = h.getFloat(C1027R.styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.f11195F));
        this.f11200K = h.getFloat(C1027R.styleable.Slider_android_stepSize, 0.0f);
        boolean hasValue = h.hasValue(C1027R.styleable.Slider_trackColor);
        int i2 = hasValue ? C1027R.styleable.Slider_trackColor : C1027R.styleable.Slider_trackColorInactive;
        int i3 = hasValue ? C1027R.styleable.Slider_trackColor : C1027R.styleable.Slider_trackColorActive;
        ColorStateList a = MaterialResources.m9394a(context, h, i2);
        if (a == null) {
            a = AppCompatResources.m22070c(context, C1027R.C1028color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(a);
        ColorStateList a2 = MaterialResources.m9394a(context, h, i3);
        if (a2 == null) {
            a2 = AppCompatResources.m22070c(context, C1027R.C1028color.material_slider_active_track_color);
        }
        setTrackActiveTintList(a2);
        this.f11211V.m9328W(MaterialResources.m9394a(context, h, C1027R.styleable.Slider_thumbColor));
        ColorStateList a3 = MaterialResources.m9394a(context, h, C1027R.styleable.Slider_haloColor);
        if (a3 == null) {
            a3 = AppCompatResources.m22070c(context, C1027R.C1028color.material_slider_halo_color);
        }
        setHaloTintList(a3);
        boolean hasValue2 = h.hasValue(C1027R.styleable.Slider_tickColor);
        int i4 = hasValue2 ? C1027R.styleable.Slider_tickColor : C1027R.styleable.Slider_tickColorInactive;
        int i5 = hasValue2 ? C1027R.styleable.Slider_tickColor : C1027R.styleable.Slider_tickColorActive;
        ColorStateList a4 = MaterialResources.m9394a(context, h, i4);
        if (a4 == null) {
            a4 = AppCompatResources.m22070c(context, C1027R.C1028color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(a4);
        ColorStateList a5 = MaterialResources.m9394a(context, h, i5);
        setTickActiveTintList(a5 != null ? a5 : AppCompatResources.m22070c(context, C1027R.C1028color.material_slider_active_tick_marks_color));
        setThumbRadius(h.getDimensionPixelSize(C1027R.styleable.Slider_thumbRadius, 0));
        setHaloRadius(h.getDimensionPixelSize(C1027R.styleable.Slider_haloRadius, 0));
        setThumbElevation(h.getDimension(C1027R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(h.getDimensionPixelSize(C1027R.styleable.Slider_trackHeight, 0));
        this.f11228u = h.getInt(C1027R.styleable.Slider_labelBehavior, 0);
        if (!h.getBoolean(C1027R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        h.recycle();
    }

    /* renamed from: Q */
    private void m9131Q(int i) {
        BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender = this.f11221n;
        if (accessibilityEventSender == null) {
            this.f11221n = new AccessibilityEventSender();
        } else {
            removeCallbacks(accessibilityEventSender);
        }
        this.f11221n.m9088a(i);
        postDelayed(this.f11221n, 200L);
    }

    /* renamed from: R */
    private void m9130R(TooltipDrawable tooltipDrawable, float f) {
        tooltipDrawable.m8684y0(m9091x(f));
        int I = (this.f11230w + ((int) (m9138I(f) * this.f11202M))) - (tooltipDrawable.getIntrinsicWidth() / 2);
        int m = m9102m() - (this.f11190A + this.f11232y);
        tooltipDrawable.setBounds(I, m - tooltipDrawable.getIntrinsicHeight(), tooltipDrawable.getIntrinsicWidth() + I, m);
        Rect rect = new Rect(tooltipDrawable.getBounds());
        DescendantOffsetUtils.m9552c(ViewUtils.m9432d(this), this, rect);
        tooltipDrawable.setBounds(rect);
        ViewUtils.m9431e(this).mo9437a(tooltipDrawable);
    }

    /* renamed from: S */
    private boolean m9129S() {
        return this.f11203N || Build.VERSION.SDK_INT < 21 || !(getBackground() instanceof RippleDrawable);
    }

    /* renamed from: T */
    private boolean m9128T(float f) {
        return m9126V(this.f11198I, f);
    }

    /* renamed from: U */
    private double m9127U(float f) {
        float f2 = this.f11200K;
        if (f2 <= 0.0f) {
            return f;
        }
        int i = (int) ((this.f11196G - this.f11195F) / f2);
        return Math.round(f * i) / i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public boolean m9126V(int i, float f) {
        if (Math.abs(f - this.f11197H.get(i).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.f11197H.set(i, Float.valueOf(m9090y(i, f)));
        this.f11199J = i;
        m9099p(i);
        return true;
    }

    /* renamed from: W */
    private boolean m9125W() {
        return m9128T(getValueOfTouchPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y */
    public void m9123Y() {
        if (!m9129S() && getMeasuredWidth() > 0) {
            Drawable background = getBackground();
            if (background instanceof RippleDrawable) {
                int I = (int) ((m9138I(this.f11197H.get(this.f11199J).floatValue()) * this.f11202M) + this.f11230w);
                int m = m9102m();
                int i = this.f11233z;
                DrawableCompat.m19501l(background, I - i, m - i, I + i, m + i);
            }
        }
    }

    /* renamed from: Z */
    private void m9122Z() {
        if (this.f11205P) {
            m9118b0();
            m9116c0();
            m9120a0();
            m9114d0();
            m9108g0();
            this.f11205P = false;
        }
    }

    /* renamed from: a0 */
    private void m9120a0() {
        if (this.f11200K > 0.0f && !m9112e0(this.f11196G)) {
            throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(this.f11200K), Float.toString(this.f11195F), Float.toString(this.f11196G)));
        }
    }

    /* renamed from: b0 */
    private void m9118b0() {
        if (this.f11195F >= this.f11196G) {
            throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.toString(this.f11195F), Float.toString(this.f11196G)));
        }
    }

    /* renamed from: c0 */
    private void m9116c0() {
        if (this.f11196G <= this.f11195F) {
            throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.toString(this.f11196G), Float.toString(this.f11195F)));
        }
    }

    /* renamed from: d0 */
    private void m9114d0() {
        Iterator<Float> it = this.f11197H.iterator();
        while (it.hasNext()) {
            Float next = it.next();
            if (next.floatValue() < this.f11195F || next.floatValue() > this.f11196G) {
                throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", Float.toString(next.floatValue()), Float.toString(this.f11195F), Float.toString(this.f11196G)));
            } else if (this.f11200K > 0.0f && !m9112e0(next.floatValue())) {
                throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", Float.toString(next.floatValue()), Float.toString(this.f11195F), Float.toString(this.f11200K), Float.toString(this.f11200K)));
            }
        }
    }

    /* renamed from: e0 */
    private boolean m9112e0(float f) {
        double doubleValue = new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.f11195F))).divide(new BigDecimal(Float.toString(this.f11200K)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < 1.0E-4d;
    }

    /* renamed from: f0 */
    private float m9110f0(float f) {
        return (m9138I(f) * this.f11202M) + this.f11230w;
    }

    /* renamed from: g0 */
    private void m9108g0() {
        float f = this.f11200K;
        if (f != 0.0f) {
            if (((int) f) != f) {
                Log.w(f11188a0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "stepSize", Float.valueOf(f)));
            }
            float f2 = this.f11195F;
            if (((int) f2) != f2) {
                Log.w(f11188a0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueFrom", Float.valueOf(f2)));
            }
            float f3 = this.f11196G;
            if (((int) f3) != f3) {
                Log.w(f11188a0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueTo", Float.valueOf(f3)));
            }
        }
    }

    private float[] getActiveRange() {
        float floatValue = ((Float) Collections.max(getValues())).floatValue();
        float floatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.f11197H.size() == 1) {
            floatValue2 = this.f11195F;
        }
        float I = m9138I(floatValue2);
        float I2 = m9138I(floatValue);
        return m9143D() ? new float[]{I2, I} : new float[]{I, I2};
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
    private float getValueOfTouchPosition() {
        /*
            r5 = this;
            r0 = r5
            r1 = r5
            float r1 = r1.f11212W
            double r0 = r0.m9127U(r1)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.m9143D()
            if (r0 == 0) goto L_0x0016
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r1 = r6
            double r0 = r0 - r1
            r8 = r0
        L_0x0016:
            r0 = r5
            float r0 = r0.f11196G
            r10 = r0
            r0 = r5
            float r0 = r0.f11195F
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.getValueOfTouchPosition():float");
    }

    private float getValueOfTouchPositionAbsolute() {
        float f = this.f11212W;
        float f2 = f;
        if (m9143D()) {
            f2 = 1.0f - f;
        }
        float f3 = this.f11196G;
        float f4 = this.f11195F;
        return (f2 * (f3 - f4)) + f4;
    }

    /* renamed from: h */
    private void m9107h(TooltipDrawable tooltipDrawable) {
        tooltipDrawable.m8685x0(ViewUtils.m9432d(this));
    }

    /* renamed from: i */
    private Float m9106i(int i) {
        float k = this.f11204O ? m9104k(20) : m9105j();
        if (i == 21) {
            if (!m9143D()) {
                k = -k;
            }
            return Float.valueOf(k);
        } else if (i == 22) {
            float f = k;
            if (m9143D()) {
                f = -k;
            }
            return Float.valueOf(f);
        } else if (i == 69) {
            return Float.valueOf(-k);
        } else {
            if (i == 70 || i == 81) {
                return Float.valueOf(k);
            }
            return null;
        }
    }

    /* renamed from: j */
    private float m9105j() {
        float f = this.f11200K;
        float f2 = f;
        if (f == 0.0f) {
            f2 = 1.0f;
        }
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public float m9104k(int i) {
        float f;
        float f2;
        float j = m9105j();
        return (this.f11196G - this.f11195F) / j <= i ? j : Math.round(f / f2) * j;
    }

    /* renamed from: l */
    private void m9103l() {
        m9122Z();
        int min = Math.min((int) (((this.f11196G - this.f11195F) / this.f11200K) + 1.0f), (this.f11202M / (this.f11229v * 2)) + 1);
        float[] fArr = this.f11201L;
        if (fArr == null || fArr.length != min * 2) {
            this.f11201L = new float[min * 2];
        }
        float f = this.f11202M / (min - 1);
        for (int i = 0; i < min * 2; i += 2) {
            float[] fArr2 = this.f11201L;
            fArr2[i] = this.f11230w + ((i / 2) * f);
            fArr2[i + 1] = m9102m();
        }
    }

    /* renamed from: m */
    private int m9102m() {
        int i = this.f11231x;
        int i2 = 0;
        if (this.f11228u == 1) {
            i2 = this.f11223p.get(0).getIntrinsicHeight();
        }
        return i + i2;
    }

    /* renamed from: n */
    private void m9101n() {
        if (this.f11223p.size() > this.f11197H.size()) {
            List<TooltipDrawable> subList = this.f11223p.subList(this.f11197H.size(), this.f11223p.size());
            for (TooltipDrawable tooltipDrawable : subList) {
                if (ViewCompat.m19219R(this)) {
                    m9100o(tooltipDrawable);
                }
            }
            subList.clear();
        }
        while (this.f11223p.size() < this.f11197H.size()) {
            TooltipDrawable a = this.f11222o.mo9080a();
            this.f11223p.add(a);
            if (ViewCompat.m19219R(this)) {
                m9107h(a);
            }
        }
        int i = 1;
        if (this.f11223p.size() == 1) {
            i = 0;
        }
        for (TooltipDrawable tooltipDrawable2 : this.f11223p) {
            tooltipDrawable2.m9306j0(i);
        }
    }

    /* renamed from: o */
    private void m9100o(TooltipDrawable tooltipDrawable) {
        ViewOverlayImpl e = ViewUtils.m9431e(this);
        if (e != null) {
            e.mo9436b(tooltipDrawable);
            tooltipDrawable.m8689t0(ViewUtils.m9432d(this));
        }
    }

    /* renamed from: p */
    private void m9099p(int i) {
        for (L l : this.f11224q) {
            l.m9149a(this, this.f11197H.get(i).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f11220m;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            m9131Q(i);
        }
    }

    /* renamed from: q */
    private void m9098q() {
        for (L l : this.f11224q) {
            Iterator<Float> it = this.f11197H.iterator();
            while (it.hasNext()) {
                l.m9149a(this, it.next().floatValue(), false);
            }
        }
    }

    /* renamed from: r */
    private void m9097r(@NonNull Canvas canvas, int i, int i2) {
        float[] activeRange = getActiveRange();
        int i3 = this.f11230w;
        float f = i3;
        float f2 = activeRange[1];
        float f3 = i;
        float f4 = i3;
        float f5 = activeRange[0];
        float f6 = i2;
        canvas.drawLine(f4 + (f5 * f3), f6, f + (f2 * f3), f6, this.f11214g);
    }

    /* renamed from: s */
    private void m9096s(@NonNull Canvas canvas, int i, int i2) {
        int i3;
        float[] activeRange = getActiveRange();
        float f = this.f11230w;
        float f2 = activeRange[1];
        float f3 = i;
        float f4 = f + (f2 * f3);
        if (f4 < i3 + i) {
            float f5 = i2;
            canvas.drawLine(f4, f5, i3 + i, f5, this.f11213f);
        }
        int i4 = this.f11230w;
        float f6 = i4 + (activeRange[0] * f3);
        if (f6 > i4) {
            float f7 = i4;
            float f8 = i2;
            canvas.drawLine(f7, f8, f6, f8, this.f11213f);
        }
    }

    private void setValuesInternal(@NonNull ArrayList<Float> arrayList) {
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.f11197H.size() != arrayList.size() || !this.f11197H.equals(arrayList)) {
                this.f11197H = arrayList;
                this.f11205P = true;
                this.f11199J = 0;
                m9123Y();
                m9101n();
                m9098q();
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    /* renamed from: t */
    private void m9095t(@NonNull Canvas canvas, int i, int i2) {
        if (!isEnabled()) {
            Iterator<Float> it = this.f11197H.iterator();
            while (it.hasNext()) {
                canvas.drawCircle(this.f11230w + (m9138I(it.next().floatValue()) * i), i2, this.f11232y, this.f11215h);
            }
        }
        Iterator<Float> it2 = this.f11197H.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            canvas.save();
            int i3 = this.f11230w;
            int I = (int) (m9138I(next.floatValue()) * i);
            int i4 = this.f11232y;
            canvas.translate((i3 + I) - i4, i2 - i4);
            this.f11211V.draw(canvas);
            canvas.restore();
        }
    }

    /* renamed from: u */
    private void m9094u(@NonNull Canvas canvas) {
        float[] activeRange = getActiveRange();
        int O = m9133O(this.f11201L, activeRange[0]);
        int O2 = m9133O(this.f11201L, activeRange[1]);
        int i = O * 2;
        canvas.drawPoints(this.f11201L, 0, i, this.f11217j);
        int i2 = O2 * 2;
        canvas.drawPoints(this.f11201L, i, i2 - i, this.f11218k);
        float[] fArr = this.f11201L;
        canvas.drawPoints(fArr, i2, fArr.length - i2, this.f11217j);
    }

    /* renamed from: v */
    private void m9093v() {
        if (this.f11228u != 2) {
            Iterator<TooltipDrawable> it = this.f11223p.iterator();
            for (int i = 0; i < this.f11197H.size() && it.hasNext(); i++) {
                if (i != this.f11199J) {
                    m9130R(it.next(), this.f11197H.get(i).floatValue());
                }
            }
            if (it.hasNext()) {
                m9130R(it.next(), this.f11197H.get(this.f11199J).floatValue());
                return;
            }
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f11223p.size()), Integer.valueOf(this.f11197H.size())));
        }
    }

    /* renamed from: w */
    private void m9092w(int i) {
        if (i == 1) {
            m9140G(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        } else if (i == 2) {
            m9140G(Integer.MIN_VALUE);
        } else if (i == 17) {
            m9139H(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        } else if (i == 66) {
            m9139H(Integer.MIN_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public String m9091x(float f) {
        if (m9146A()) {
            return this.f11193D.mo9079a(f);
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    /* renamed from: y */
    private float m9090y(int i, float f) {
        int i2 = i + 1;
        int i3 = i - 1;
        return MathUtils.m19452a(f, i3 < 0 ? this.f11195F : this.f11197H.get(i3).floatValue(), i2 >= this.f11197H.size() ? this.f11196G : this.f11197H.get(i2).floatValue());
    }

    @ColorInt
    /* renamed from: z */
    private int m9089z(@NonNull ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    /* renamed from: A */
    public boolean m9146A() {
        return this.f11193D != null;
    }

    /* renamed from: D */
    final boolean m9143D() {
        boolean z = true;
        if (ViewCompat.m19244A(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: N */
    protected boolean mo9077N() {
        boolean z = true;
        if (this.f11198I != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float f0 = m9110f0(valueOfTouchPositionAbsolute);
        this.f11198I = 0;
        float abs = Math.abs(this.f11197H.get(0).floatValue() - valueOfTouchPositionAbsolute);
        for (int i = 1; i < this.f11197H.size(); i++) {
            float abs2 = Math.abs(this.f11197H.get(i).floatValue() - valueOfTouchPositionAbsolute);
            float f02 = m9110f0(this.f11197H.get(i).floatValue());
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z2 = !m9143D() ? f02 - f0 < 0.0f : f02 - f0 > 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.f11198I = i;
            } else {
                abs = abs;
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else if (Math.abs(f02 - f0) < this.f11226s) {
                    this.f11198I = -1;
                    return false;
                } else {
                    abs = abs;
                    if (z2) {
                        this.f11198I = i;
                    }
                }
            }
            abs = abs2;
        }
        if (this.f11198I == -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: X */
    void m9124X(int i, Rect rect) {
        int I = this.f11230w + ((int) (m9138I(getValues().get(i).floatValue()) * this.f11202M));
        int m = m9102m();
        int i2 = this.f11232y;
        rect.set(I - i2, m - i2, I + i2, m + i2);
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return this.f11219l.m18773i(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f11213f.setColor(m9089z(this.f11210U));
        this.f11214g.setColor(m9089z(this.f11209T));
        this.f11217j.setColor(m9089z(this.f11208S));
        this.f11218k.setColor(m9089z(this.f11207R));
        for (TooltipDrawable tooltipDrawable : this.f11223p) {
            if (tooltipDrawable.isStateful()) {
                tooltipDrawable.setState(getDrawableState());
            }
        }
        if (this.f11211V.isStateful()) {
            this.f11211V.setState(getDrawableState());
        }
        this.f11216i.setColor(m9089z(this.f11206Q));
        this.f11216i.setAlpha(63);
    }

    @Override // android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @VisibleForTesting
    final int getAccessibilityFocusedVirtualViewId() {
        return this.f11219l.m18771k();
    }

    public int getActiveThumbIndex() {
        return this.f11198I;
    }

    public int getFocusedThumbIndex() {
        return this.f11199J;
    }

    @Dimension
    public int getHaloRadius() {
        return this.f11233z;
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.f11206Q;
    }

    public int getLabelBehavior() {
        return this.f11228u;
    }

    public float getStepSize() {
        return this.f11200K;
    }

    public float getThumbElevation() {
        return this.f11211V.m9290w();
    }

    @Dimension
    public int getThumbRadius() {
        return this.f11232y;
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        return this.f11211V.m9289x();
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.f11207R;
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.f11208S;
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (this.f11208S.equals(this.f11207R)) {
            return this.f11207R;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.f11209T;
    }

    @Dimension
    public int getTrackHeight() {
        return this.f11229v;
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.f11210U;
    }

    @Dimension
    public int getTrackSidePadding() {
        return this.f11230w;
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (this.f11210U.equals(this.f11209T)) {
            return this.f11209T;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    @Dimension
    public int getTrackWidth() {
        return this.f11202M;
    }

    public float getValueFrom() {
        return this.f11195F;
    }

    public float getValueTo() {
        return this.f11196G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Float> getValues() {
        return new ArrayList(this.f11197H);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (TooltipDrawable tooltipDrawable : this.f11223p) {
            m9107h(tooltipDrawable);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender = this.f11221n;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        for (TooltipDrawable tooltipDrawable : this.f11223p) {
            m9100o(tooltipDrawable);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        if (this.f11205P) {
            m9122Z();
            if (this.f11200K > 0.0f) {
                m9103l();
            }
        }
        super.onDraw(canvas);
        int m = m9102m();
        m9096s(canvas, this.f11202M, m);
        if (((Float) Collections.max(getValues())).floatValue() > this.f11195F) {
            m9097r(canvas, this.f11202M, m);
        }
        if (this.f11200K > 0.0f) {
            m9094u(canvas);
        }
        if ((this.f11194E || isFocused()) && isEnabled()) {
            m9141F(canvas, this.f11202M, m);
            if (this.f11198I != -1) {
                m9093v();
            }
        }
        m9095t(canvas, this.f11202M, m);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, @Nullable Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            this.f11198I = -1;
            for (TooltipDrawable tooltipDrawable : this.f11223p) {
                ViewUtils.m9431e(this).mo9436b(tooltipDrawable);
            }
            this.f11219l.m18780b(this.f11199J);
            return;
        }
        m9092w(i);
        this.f11219l.m18784I(this.f11199J);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, @NonNull KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.f11197H.size() == 1) {
            this.f11198I = 0;
        }
        if (this.f11198I == -1) {
            Boolean J = m9137J(i, keyEvent);
            return J != null ? J.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        this.f11204O |= keyEvent.isLongPress();
        Float i2 = m9106i(i);
        if (i2 == null) {
            if (i != 23) {
                if (i != 61) {
                    if (i != 66) {
                        return super.onKeyDown(i, keyEvent);
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    return m9140G(1);
                } else {
                    if (keyEvent.isShiftPressed()) {
                        return m9140G(-1);
                    }
                    return false;
                }
            }
            this.f11198I = -1;
            for (TooltipDrawable tooltipDrawable : this.f11223p) {
                ViewUtils.m9431e(this).mo9436b(tooltipDrawable);
            }
            postInvalidate();
            return true;
        } else if (!m9128T(this.f11197H.get(this.f11198I).floatValue() + i2.floatValue())) {
            return true;
        } else {
            m9123Y();
            postInvalidate();
            return true;
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        this.f11204O = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.f11227t;
        int i4 = 0;
        if (this.f11228u == 1) {
            i4 = this.f11223p.get(0).getIntrinsicHeight();
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3 + i4, 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.f11195F = sliderState.f11241f;
        this.f11196G = sliderState.f11242g;
        setValuesInternal(sliderState.f11243h);
        this.f11200K = sliderState.f11244i;
        if (sliderState.f11245j) {
            requestFocus();
        }
        m9098q();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f11241f = this.f11195F;
        sliderState.f11242g = this.f11196G;
        sliderState.f11243h = new ArrayList<>(this.f11197H);
        sliderState.f11244i = this.f11200K;
        sliderState.f11245j = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f11202M = Math.max(i - (this.f11230w * 2), 0);
        if (this.f11200K > 0.0f) {
            m9103l();
        }
        m9123Y();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float f = (x - this.f11230w) / this.f11202M;
        this.f11212W = f;
        float max = Math.max(0.0f, f);
        this.f11212W = max;
        this.f11212W = Math.min(1.0f, max);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f11191B = x;
            if (!m9144C()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (mo9077N()) {
                    requestFocus();
                    this.f11194E = true;
                    m9125W();
                    m9123Y();
                    invalidate();
                    m9136K();
                }
            }
        } else if (actionMasked == 1) {
            this.f11194E = false;
            MotionEvent motionEvent2 = this.f11192C;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.f11192C.getX() - motionEvent.getX()) <= this.f11226s && Math.abs(this.f11192C.getY() - motionEvent.getY()) <= this.f11226s) {
                mo9077N();
            }
            if (this.f11198I != -1) {
                m9125W();
                this.f11198I = -1;
            }
            for (TooltipDrawable tooltipDrawable : this.f11223p) {
                ViewUtils.m9431e(this).mo9436b(tooltipDrawable);
            }
            m9135L();
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.f11194E) {
                if (Math.abs(x - this.f11191B) < this.f11226s) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                m9136K();
            }
            if (mo9077N()) {
                this.f11194E = true;
                m9125W();
                m9123Y();
                invalidate();
            }
        }
        setPressed(this.f11194E);
        this.f11192C = MotionEvent.obtain(motionEvent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setActiveThumbIndex(int i) {
        this.f11198I = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.f11197H.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f11199J = i;
        this.f11219l.m18784I(i);
        postInvalidate();
    }

    public void setHaloRadius(@IntRange(from = 0) @Dimension int i) {
        if (i != this.f11233z) {
            this.f11233z = i;
            Drawable background = getBackground();
            if (m9129S() || !(background instanceof RippleDrawable)) {
                postInvalidate();
            } else {
                DrawableUtils.m9797a((RippleDrawable) background, this.f11233z);
            }
        }
    }

    public void setHaloRadiusResource(@DimenRes int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        if (!colorStateList.equals(this.f11206Q)) {
            this.f11206Q = colorStateList;
            Drawable background = getBackground();
            if (m9129S() || !(background instanceof RippleDrawable)) {
                this.f11216i.setColor(m9089z(colorStateList));
                this.f11216i.setAlpha(63);
                invalidate();
                return;
            }
            ((RippleDrawable) background).setColor(colorStateList);
        }
    }

    public void setLabelBehavior(int i) {
        if (this.f11228u != i) {
            this.f11228u = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(@Nullable LabelFormatter labelFormatter) {
        this.f11193D = labelFormatter;
    }

    public void setStepSize(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(f), Float.toString(this.f11195F), Float.toString(this.f11196G)));
        } else if (this.f11200K != f) {
            this.f11200K = f;
            this.f11205P = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f) {
        this.f11211V.m9329V(f);
    }

    public void setThumbElevationResource(@DimenRes int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbRadius(@IntRange(from = 0) @Dimension int i) {
        if (i != this.f11232y) {
            this.f11232y = i;
            MaterialShapeDrawable materialShapeDrawable = this.f11211V;
            ShapeAppearanceModel.Builder a = ShapeAppearanceModel.m9277a();
            a.m9229p(0, this.f11232y);
            materialShapeDrawable.setShapeAppearanceModel(a.m9232m());
            MaterialShapeDrawable materialShapeDrawable2 = this.f11211V;
            int i2 = this.f11232y;
            materialShapeDrawable2.setBounds(0, 0, i2 * 2, i2 * 2);
            postInvalidate();
        }
    }

    public void setThumbRadiusResource(@DimenRes int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        this.f11211V.m9328W(colorStateList);
    }

    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        if (!colorStateList.equals(this.f11207R)) {
            this.f11207R = colorStateList;
            this.f11218k.setColor(m9089z(colorStateList));
            invalidate();
        }
    }

    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (!colorStateList.equals(this.f11208S)) {
            this.f11208S = colorStateList;
            this.f11217j.setColor(m9089z(colorStateList));
            invalidate();
        }
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        if (!colorStateList.equals(this.f11209T)) {
            this.f11209T = colorStateList;
            this.f11214g.setColor(m9089z(colorStateList));
            invalidate();
        }
    }

    public void setTrackHeight(@IntRange(from = 0) @Dimension int i) {
        if (this.f11229v != i) {
            this.f11229v = i;
            m9145B();
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (!colorStateList.equals(this.f11210U)) {
            this.f11210U = colorStateList;
            this.f11213f.setColor(m9089z(colorStateList));
            invalidate();
        }
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.f11195F = f;
        this.f11205P = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.f11196G = f;
        this.f11205P = true;
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(@NonNull List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(@NonNull Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }
}
