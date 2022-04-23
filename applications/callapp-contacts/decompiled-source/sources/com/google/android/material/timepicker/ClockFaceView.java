package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.core.view.a;
import androidx.core.view.a.c;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.h.c;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ClockFaceView.class */
class ClockFaceView extends RadialViewGroup implements ClockHandView.b {

    /* renamed from: a  reason: collision with root package name */
    private final ClockHandView f30947a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f30948b;

    /* renamed from: c  reason: collision with root package name */
    private final RectF f30949c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<TextView> f30950d;
    private final a e;
    private final int[] f;
    private final float[] g;
    private final int h;
    private String[] i;
    private float j;
    private final ColorStateList k;

    public ClockFaceView(Context context) {
        this(context, null);
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.materialClockStyle);
    }

    public ClockFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f30948b = new Rect();
        this.f30949c = new RectF();
        this.f30950d = new SparseArray<>();
        this.g = new float[]{BitmapDescriptorFactory.HUE_RED, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.ClockFaceView, i, a.k.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList a2 = c.a(context, obtainStyledAttributes, a.l.ClockFaceView_clockNumberTextColor);
        this.k = a2;
        LayoutInflater.from(context).inflate(a.h.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(a.f.material_clock_hand);
        this.f30947a = clockHandView;
        this.h = resources.getDimensionPixelSize(a.d.material_clock_hand_padding);
        int colorForState = a2.getColorForState(new int[]{16842913}, a2.getDefaultColor());
        this.f = new int[]{colorForState, colorForState, a2.getDefaultColor()};
        clockHandView.a(this);
        int defaultColor = androidx.appcompat.a.a.a.a(context, a.c.material_timepicker_clockface).getDefaultColor();
        ColorStateList a3 = c.a(context, obtainStyledAttributes, a.l.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(a3 != null ? a3.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.timepicker.ClockFaceView.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (!ClockFaceView.this.isShown()) {
                    return true;
                }
                ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                int height = ClockFaceView.this.getHeight() / 2;
                int i2 = ClockFaceView.this.f30947a.f30954b;
                ClockFaceView.this.a((height - i2) - ClockFaceView.this.h);
                return true;
            }
        });
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.e = new androidx.core.view.a() { // from class: com.google.android.material.timepicker.ClockFaceView.2
            @Override // androidx.core.view.a
            public final void a(View view, androidx.core.view.a.c cVar) {
                super.a(view, cVar);
                int intValue = ((Integer) view.getTag(a.f.material_value_index)).intValue();
                if (intValue > 0) {
                    View view2 = (View) ClockFaceView.this.f30950d.get(intValue - 1);
                    if (Build.VERSION.SDK_INT >= 22) {
                        cVar.f1959a.setTraversalAfter(view2);
                    }
                }
                cVar.b(c.C0052c.a(0, 1, intValue, 1, view.isSelected()));
            }
        };
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        a(strArr, 0);
    }

    private RadialGradient a(RectF rectF, RectF rectF2) {
        if (!RectF.intersects(rectF, rectF2)) {
            return null;
        }
        return new RadialGradient(rectF.centerX() - this.f30949c.left, rectF.centerY() - this.f30949c.top, rectF.width() * 0.5f, this.f, this.g, Shader.TileMode.CLAMP);
    }

    private void b(int i) {
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = this.f30950d.size();
        for (int i2 = 0; i2 < Math.max(this.i.length, size); i2++) {
            View view = (TextView) this.f30950d.get(i2);
            if (i2 >= this.i.length) {
                removeView(view);
                this.f30950d.remove(i2);
            } else {
                TextView textView = view;
                if (view == null) {
                    textView = (TextView) from.inflate(a.h.material_clockface_textview, (ViewGroup) this, false);
                    this.f30950d.put(i2, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.i[i2]);
                textView.setTag(a.f.material_value_index, Integer.valueOf(i2));
                v.a(textView, this.e);
                textView.setTextColor(this.k);
                if (i != 0) {
                    textView.setContentDescription(getResources().getString(i, this.i[i2]));
                }
            }
        }
    }

    private void d() {
        RectF rectF = this.f30947a.f30955c;
        for (int i = 0; i < this.f30950d.size(); i++) {
            TextView textView = this.f30950d.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.f30948b);
                this.f30948b.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.f30948b);
                this.f30949c.set(this.f30948b);
                textView.getPaint().setShader(a(rectF, this.f30949c));
                textView.invalidate();
            }
        }
    }

    @Override // com.google.android.material.timepicker.ClockHandView.b
    public final void a(float f, boolean z) {
        if (Math.abs(this.j - f) > 0.001f) {
            this.j = f;
            d();
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    public final void a(int i) {
        if (i != b()) {
            super.a(i);
            ClockHandView clockHandView = this.f30947a;
            clockHandView.e = b();
            clockHandView.invalidate();
        }
    }

    public final void a(String[] strArr, int i) {
        this.i = strArr;
        b(i);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.a.c.a(accessibilityNodeInfo).a(c.b.a(1, this.i.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        d();
    }
}
