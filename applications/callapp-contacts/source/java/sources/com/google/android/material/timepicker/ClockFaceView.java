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
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ClockFaceView.class */
public class ClockFaceView extends RadialViewGroup implements ClockHandView.AbstractC14836b {

    /* renamed from: a */
    private final ClockHandView f54166a;

    /* renamed from: b */
    private final Rect f54167b;

    /* renamed from: c */
    private final RectF f54168c;

    /* renamed from: d */
    private final SparseArray<TextView> f54169d;

    /* renamed from: e */
    private final C0865a f54170e;

    /* renamed from: f */
    private final int[] f54171f;

    /* renamed from: g */
    private final float[] f54172g;

    /* renamed from: h */
    private final int f54173h;

    /* renamed from: i */
    private String[] f54174i;

    /* renamed from: j */
    private float f54175j;

    /* renamed from: k */
    private final ColorStateList f54176k;

    public ClockFaceView(Context context) {
        this(context, null);
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.materialClockStyle);
    }

    public ClockFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f54167b = new Rect();
        this.f54168c = new RectF();
        this.f54169d = new SparseArray<>();
        this.f54172g = new float[]{BitmapDescriptorFactory.HUE_RED, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.ClockFaceView, i, C14376a.C14387k.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList m10653a = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.ClockFaceView_clockNumberTextColor);
        this.f54176k = m10653a;
        LayoutInflater.from(context).inflate(C14376a.C14384h.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(C14376a.C14382f.material_clock_hand);
        this.f54166a = clockHandView;
        this.f54173h = resources.getDimensionPixelSize(C14376a.C14380d.material_clock_hand_padding);
        int colorForState = m10653a.getColorForState(new int[]{16842913}, m10653a.getDefaultColor());
        this.f54171f = new int[]{colorForState, colorForState, m10653a.getDefaultColor()};
        clockHandView.m9905a(this);
        int defaultColor = C0153a.m46375a(context, C14376a.C14379c.material_timepicker_clockface).getDefaultColor();
        ColorStateList m10653a2 = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(m10653a2 != null ? m10653a2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.timepicker.ClockFaceView.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (!ClockFaceView.this.isShown()) {
                    return true;
                }
                ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                int height = ClockFaceView.this.getHeight() / 2;
                int i2 = ClockFaceView.this.f54166a.f54180b;
                ClockFaceView.this.mo9901a((height - i2) - ClockFaceView.this.f54173h);
                return true;
            }
        });
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f54170e = new C0865a() { // from class: com.google.android.material.timepicker.ClockFaceView.2
            @Override // androidx.core.view.C0865a
            /* renamed from: a */
            public final void mo9886a(View view, C0869c c0869c) {
                super.mo9886a(view, c0869c);
                int intValue = ((Integer) view.getTag(C14376a.C14382f.material_value_index)).intValue();
                if (intValue > 0) {
                    View view2 = (View) ClockFaceView.this.f54169d.get(intValue - 1);
                    if (Build.VERSION.SDK_INT >= 22) {
                        c0869c.f3644a.setTraversalAfter(view2);
                    }
                }
                c0869c.m44264b(C0869c.C0872c.m44234a(0, 1, intValue, 1, view.isSelected()));
            }
        };
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        m9913a(strArr, 0);
    }

    /* renamed from: a */
    private RadialGradient m9915a(RectF rectF, RectF rectF2) {
        if (!RectF.intersects(rectF, rectF2)) {
            return null;
        }
        return new RadialGradient(rectF.centerX() - this.f54168c.left, rectF.centerY() - this.f54168c.top, rectF.width() * 0.5f, this.f54171f, this.f54172g, Shader.TileMode.CLAMP);
    }

    /* renamed from: b */
    private void m9912b(int i) {
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = this.f54169d.size();
        for (int i2 = 0; i2 < Math.max(this.f54174i.length, size); i2++) {
            TextView textView = this.f54169d.get(i2);
            if (i2 >= this.f54174i.length) {
                removeView(textView);
                this.f54169d.remove(i2);
            } else {
                TextView textView2 = textView;
                if (textView == null) {
                    textView2 = (TextView) from.inflate(C14376a.C14384h.material_clockface_textview, (ViewGroup) this, false);
                    this.f54169d.put(i2, textView2);
                    addView(textView2);
                }
                textView2.setVisibility(0);
                textView2.setText(this.f54174i[i2]);
                textView2.setTag(C14376a.C14382f.material_value_index, Integer.valueOf(i2));
                C0926v.m44123a(textView2, this.f54170e);
                textView2.setTextColor(this.f54176k);
                if (i != 0) {
                    textView2.setContentDescription(getResources().getString(i, this.f54174i[i2]));
                }
            }
        }
    }

    /* renamed from: d */
    private void m9909d() {
        RectF rectF = this.f54166a.f54181c;
        for (int i = 0; i < this.f54169d.size(); i++) {
            TextView textView = this.f54169d.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.f54167b);
                this.f54167b.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.f54167b);
                this.f54168c.set(this.f54167b);
                textView.getPaint().setShader(m9915a(rectF, this.f54168c));
                textView.invalidate();
            }
        }
    }

    @Override // com.google.android.material.timepicker.ClockHandView.AbstractC14836b
    /* renamed from: a */
    public final void mo9873a(float f, boolean z) {
        if (Math.abs(this.f54175j - f) > 0.001f) {
            this.f54175j = f;
            m9909d();
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    /* renamed from: a */
    public final void mo9901a(int i) {
        if (i != m9900b()) {
            super.mo9901a(i);
            ClockHandView clockHandView = this.f54166a;
            clockHandView.f54183e = m9900b();
            clockHandView.invalidate();
        }
    }

    /* renamed from: a */
    public final void m9913a(String[] strArr, int i) {
        this.f54174i = strArr;
        m9912b(i);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0869c.m44278a(accessibilityNodeInfo).m44274a(C0869c.C0871b.m44235a(1, this.f54174i.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m9909d();
    }
}
