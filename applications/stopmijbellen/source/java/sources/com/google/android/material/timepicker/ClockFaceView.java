package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;
import p097g.C2788a;
import p134j4.C3260w0;
import p163m0.C3546a;
import p163m0.C3589v;
import p174n0.C3694b;
import p304z3.C5071c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/ClockFaceView.class */
public class ClockFaceView extends C1838c implements ClockHandView.AbstractC1834c {

    /* renamed from: A */
    public final int[] f6896A;

    /* renamed from: C */
    public final int f6898C;

    /* renamed from: D */
    public final int f6899D;

    /* renamed from: E */
    public final int f6900E;

    /* renamed from: F */
    public final int f6901F;

    /* renamed from: G */
    public String[] f6902G;

    /* renamed from: H */
    public float f6903H;

    /* renamed from: I */
    public final ColorStateList f6904I;

    /* renamed from: v */
    public final ClockHandView f6905v;

    /* renamed from: y */
    public final SparseArray<TextView> f6908y;

    /* renamed from: z */
    public final C3546a f6909z;

    /* renamed from: w */
    public final Rect f6906w = new Rect();

    /* renamed from: x */
    public final RectF f6907x = new RectF();

    /* renamed from: B */
    public final float[] f6897B = {0.0f, 0.9f, 1.0f};

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130969301);
        SparseArray<TextView> sparseArray = new SparseArray<>();
        this.f6908y = sparseArray;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11028i, 2130969301, 2131887141);
        Resources resources = getResources();
        ColorStateList m72a = C5071c.m72a(context, obtainStyledAttributes, 1);
        this.f6904I = m72a;
        LayoutInflater.from(context).inflate(2131492977, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(2131296751);
        this.f6905v = clockHandView;
        this.f6898C = resources.getDimensionPixelSize(2131165543);
        int colorForState = m72a.getColorForState(new int[]{16842913}, m72a.getDefaultColor());
        this.f6896A = new int[]{colorForState, colorForState, m72a.getDefaultColor()};
        clockHandView.f6915e.add(this);
        int defaultColor = C2788a.m3016a(context, 2131100219).getDefaultColor();
        ColorStateList m72a2 = C5071c.m72a(context, obtainStyledAttributes, 0);
        setBackgroundColor(m72a2 != null ? m72a2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC1836a(this));
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f6909z = new C1837b(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.f6902G = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        for (int i = 0; i < Math.max(this.f6902G.length, size); i++) {
            TextView textView = this.f6908y.get(i);
            if (i >= this.f6902G.length) {
                removeView(textView);
                this.f6908y.remove(i);
            } else {
                TextView textView2 = textView;
                if (textView == null) {
                    textView2 = (TextView) from.inflate(2131492976, (ViewGroup) this, false);
                    this.f6908y.put(i, textView2);
                    addView(textView2);
                }
                textView2.setVisibility(0);
                textView2.setText(this.f6902G[i]);
                textView2.setTag(2131296767, Integer.valueOf(i));
                C3589v.m2103u(textView2, this.f6909z);
                textView2.setTextColor(this.f6904I);
            }
        }
        this.f6899D = resources.getDimensionPixelSize(2131165573);
        this.f6900E = resources.getDimensionPixelSize(2131165574);
        this.f6901F = resources.getDimensionPixelSize(2131165549);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.AbstractC1834c
    /* renamed from: a */
    public void mo4494a(float f, boolean z) {
        if (Math.abs(this.f6903H - f) > 0.001f) {
            this.f6903H = f;
            m4498t();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3694b.C3696b.m1866a(1, this.f6902G.length, false, 1).f12087a);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m4498t();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.f6901F / Math.max(Math.max(this.f6899D / displayMetrics.heightPixels, this.f6900E / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    /* renamed from: t */
    public final void m4498t() {
        RectF rectF = this.f6905v.f6919i;
        for (int i = 0; i < this.f6908y.size(); i++) {
            TextView textView = this.f6908y.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.f6906w);
                this.f6906w.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.f6906w);
                this.f6907x.set(this.f6906w);
                textView.getPaint().setShader(!RectF.intersects(rectF, this.f6907x) ? null : new RadialGradient(rectF.centerX() - this.f6907x.left, rectF.centerY() - this.f6907x.top, 0.5f * rectF.width(), this.f6896A, this.f6897B, Shader.TileMode.CLAMP));
                textView.invalidate();
            }
        }
    }
}
