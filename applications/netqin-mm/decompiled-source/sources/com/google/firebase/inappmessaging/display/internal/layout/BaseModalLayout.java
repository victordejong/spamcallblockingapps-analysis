package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p282e.p315q.p318p0.C5541h;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout.class */
public abstract class BaseModalLayout extends FrameLayout {

    /* renamed from: a */
    public float f30970a;

    /* renamed from: b */
    public float f30971b;

    /* renamed from: c */
    public DisplayMetrics f30972c;

    /* renamed from: d */
    public List<View> f30973d = new ArrayList();

    /* JADX WARN: Finally extract failed */
    public BaseModalLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C5541h.ModalLayout, 0, 0);
        try {
            this.f30970a = obtainStyledAttributes.getFloat(C5541h.ModalLayout_maxWidthPct, -1.0f);
            this.f30971b = obtainStyledAttributes.getFloat(C5541h.ModalLayout_maxHeightPct, -1.0f);
            obtainStyledAttributes.recycle();
            this.f30972c = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public int m7306a(int i) {
        int i2;
        if (getMaxHeightPct() > 0.0f) {
            C5562j.m23515a("Height: restrict by pct");
            i2 = m7305a((int) (getDisplayMetrics().heightPixels * getMaxHeightPct()), 4);
        } else {
            C5562j.m23515a("Height: restrict by spec");
            i2 = View.MeasureSpec.getSize(i);
        }
        return i2;
    }

    /* renamed from: a */
    public int m7305a(int i, int i2) {
        return i2 * Math.round(i / i2);
    }

    /* renamed from: a */
    public int m7304a(View view) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return view.getMeasuredHeight();
    }

    /* renamed from: a */
    public void m7303a(View view, int i, int i2) {
        m7302a(view, i, i2, i + m7300b(view), i2 + m7304a(view));
    }

    /* renamed from: a */
    public void m7302a(View view, int i, int i2, int i3, int i4) {
        C5562j.m23513a("\tleft, right", i, i3);
        C5562j.m23513a("\ttop, bottom", i2, i4);
        view.layout(i, i2, i3, i4);
    }

    /* renamed from: b */
    public int m7301b(int i) {
        int i2;
        if (getMaxWidthPct() > 0.0f) {
            C5562j.m23515a("Width: restrict by pct");
            i2 = m7305a((int) (getDisplayMetrics().widthPixels * getMaxWidthPct()), 4);
        } else {
            C5562j.m23515a("Width: restrict by spec");
            i2 = View.MeasureSpec.getSize(i);
        }
        return i2;
    }

    /* renamed from: b */
    public int m7300b(View view) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return view.getMeasuredWidth();
    }

    /* renamed from: c */
    public int m7299c(int i) {
        return (int) Math.floor(TypedValue.applyDimension(1, i, this.f30972c));
    }

    /* renamed from: c */
    public FrameLayout.LayoutParams m7298c(View view) {
        return (FrameLayout.LayoutParams) view.getLayoutParams();
    }

    /* renamed from: d */
    public View m7297d(int i) {
        View findViewById = findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalStateException("No such child: " + i);
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.f30972c;
    }

    public float getMaxHeightPct() {
        return this.f30971b;
    }

    public float getMaxWidthPct() {
        return this.f30970a;
    }

    public List<View> getVisibleChildren() {
        return this.f30973d;
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        C5562j.m23513a("\tdesired (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
        super.measureChildWithMargins(view, i, i2, i3, i4);
        C5562j.m23513a("\tactual  (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C5562j.m23512b("BEGIN LAYOUT");
        C5562j.m23515a("onLayout: l: " + i + ", t: " + i2 + ", r: " + i3 + ", b: " + i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        C5562j.m23512b("BEGIN MEASURE");
        C5562j.m23513a("Display", getDisplayMetrics().widthPixels, getDisplayMetrics().heightPixels);
        this.f30973d.clear();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                this.f30973d.add(childAt);
            } else {
                C5562j.m23514a("Skipping GONE child", i3);
            }
        }
    }
}
