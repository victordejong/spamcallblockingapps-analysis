package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1887c;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1919c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ClockFaceView.class */
public class ClockFaceView extends RadialViewGroup implements ClockHandView.AbstractC8336d {

    /* renamed from: D */
    private final ClockHandView f37555D;

    /* renamed from: E */
    private final Rect f37556E;

    /* renamed from: F */
    private final RectF f37557F;

    /* renamed from: G */
    private final SparseArray<TextView> f37558G;

    /* renamed from: H */
    private final C1599a f37559H;

    /* renamed from: I */
    private final int[] f37560I;

    /* renamed from: J */
    private final float[] f37561J;

    /* renamed from: K */
    private final int f37562K;

    /* renamed from: L */
    private String[] f37563L;

    /* renamed from: M */
    private float f37564M;

    /* renamed from: N */
    private final ColorStateList f37565N;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.timepicker.ClockFaceView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ClockFaceView$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC8331a implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC8331a() {
            ClockFaceView.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            int height = ClockFaceView.this.getHeight() / 2;
            int m3862g = ClockFaceView.this.f37555D.m3862g();
            ClockFaceView.this.mo3852B((height - m3862g) - ClockFaceView.this.f37562K);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.timepicker.ClockFaceView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ClockFaceView$b.class */
    public class C8332b extends C1599a {
        C8332b() {
            ClockFaceView.this = r4;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            int intValue = ((Integer) view.getTag(C1890f.material_value_index)).intValue();
            if (intValue > 0) {
                c1634c.m29519E0((View) ClockFaceView.this.f37558G.get(intValue - 1));
            }
            c1634c.m29483f0(C1634c.C1637c.m29436a(0, 1, intValue, 1, false, view.isSelected()));
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.materialClockStyle);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f37556E = new Rect();
        this.f37557F = new RectF();
        this.f37558G = new SparseArray<>();
        this.f37561J = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.ClockFaceView, i, C1895k.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList m28686a = C1919c.m28686a(context, obtainStyledAttributes, C1896l.ClockFaceView_clockNumberTextColor);
        this.f37565N = m28686a;
        LayoutInflater.from(context).inflate(C1892h.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(C1890f.material_clock_hand);
        this.f37555D = clockHandView;
        this.f37562K = resources.getDimensionPixelSize(C1888d.material_clock_hand_padding);
        int colorForState = m28686a.getColorForState(new int[]{16842913}, m28686a.getDefaultColor());
        this.f37560I = new int[]{colorForState, colorForState, m28686a.getDefaultColor()};
        clockHandView.m3867b(this);
        int defaultColor = C1433a.m30127c(context, C1887c.material_timepicker_clockface).getDefaultColor();
        ColorStateList m28686a2 = C1919c.m28686a(context, obtainStyledAttributes, C1896l.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(m28686a2 != null ? m28686a2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC8331a());
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f37559H = new C8332b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        m3871K(strArr, 0);
    }

    /* renamed from: I */
    private void m3873I() {
        RectF m3865d = this.f37555D.m3865d();
        for (int i = 0; i < this.f37558G.size(); i++) {
            TextView textView = this.f37558G.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.f37556E);
                this.f37556E.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.f37556E);
                this.f37557F.set(this.f37556E);
                textView.getPaint().setShader(m3872J(m3865d, this.f37557F));
                textView.invalidate();
            }
        }
    }

    /* renamed from: J */
    private RadialGradient m3872J(RectF rectF, RectF rectF2) {
        if (!RectF.intersects(rectF, rectF2)) {
            return null;
        }
        return new RadialGradient(rectF.centerX() - this.f37557F.left, rectF.centerY() - this.f37557F.top, rectF.width() * 0.5f, this.f37560I, this.f37561J, Shader.TileMode.CLAMP);
    }

    /* renamed from: L */
    private void m3870L(int i) {
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = this.f37558G.size();
        for (int i2 = 0; i2 < Math.max(this.f37563L.length, size); i2++) {
            TextView textView = this.f37558G.get(i2);
            if (i2 >= this.f37563L.length) {
                removeView(textView);
                this.f37558G.remove(i2);
            } else {
                TextView textView2 = textView;
                if (textView == null) {
                    textView2 = (TextView) from.inflate(C1892h.material_clockface_textview, (ViewGroup) this, false);
                    this.f37558G.put(i2, textView2);
                    addView(textView2);
                }
                textView2.setVisibility(0);
                textView2.setText(this.f37563L[i2]);
                textView2.setTag(C1890f.material_value_index, Integer.valueOf(i2));
                C1679w.m29273r0(textView2, this.f37559H);
                textView2.setTextColor(this.f37565N);
                if (i != 0) {
                    textView2.setContentDescription(getResources().getString(i, this.f37563L[i2]));
                }
            }
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    /* renamed from: B */
    public void mo3852B(int i) {
        if (i != m3853A()) {
            super.mo3852B(i);
            this.f37555D.m3859j(m3853A());
        }
    }

    /* renamed from: K */
    public void m3871K(String[] strArr, int i) {
        this.f37563L = strArr;
        m3870L(i);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.AbstractC8336d
    /* renamed from: a */
    public void mo3854a(float f, boolean z) {
        if (Math.abs(this.f37564M - f) > 0.001f) {
            this.f37564M = f;
            m3873I();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C1634c.m29513H0(accessibilityNodeInfo).m29485e0(C1634c.C1636b.m29437b(1, this.f37563L.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m3873I();
    }
}
