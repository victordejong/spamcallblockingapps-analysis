package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.ConstraintLayout;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1944k;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/RadialViewGroup.class */
public class RadialViewGroup extends ConstraintLayout {

    /* renamed from: A */
    private final Runnable f37587A;

    /* renamed from: B */
    private int f37588B;

    /* renamed from: C */
    private C1938h f37589C;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.timepicker.RadialViewGroup$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/RadialViewGroup$a.class */
    public class RunnableC8337a implements Runnable {
        RunnableC8337a() {
            RadialViewGroup.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RadialViewGroup.this.m3850D();
        }
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(C1892h.material_radial_view_group, this);
        C1679w.m29267u0(this, m3848z());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.RadialViewGroup, i, 0);
        this.f37588B = obtainStyledAttributes.getDimensionPixelSize(C1896l.RadialViewGroup_materialCircleRadius, 0);
        this.f37587A = new RunnableC8337a();
        obtainStyledAttributes.recycle();
    }

    /* renamed from: C */
    private static boolean m3851C(View view) {
        return "skip".equals(view.getTag());
    }

    /* renamed from: E */
    private void m3849E() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f37587A);
            handler.post(this.f37587A);
        }
    }

    /* renamed from: z */
    private Drawable m3848z() {
        C1938h c1938h = new C1938h();
        this.f37589C = c1938h;
        c1938h.m28627Y(new C1944k(0.5f));
        this.f37589C.m28625a0(ColorStateList.valueOf(-1));
        return this.f37589C;
    }

    /* renamed from: A */
    public int m3853A() {
        return this.f37588B;
    }

    /* renamed from: B */
    public void mo3852B(int i) {
        this.f37588B = i;
        m3850D();
    }

    /* renamed from: D */
    protected void m3850D() {
        int childCount = getChildCount();
        int i = 1;
        int i2 = 0;
        while (i2 < childCount) {
            int i3 = i;
            if (m3851C(getChildAt(i2))) {
                i3 = i + 1;
            }
            i2++;
            i = i3;
        }
        C0515b c0515b = new C0515b();
        c0515b.m33638j(this);
        float f = 0.0f;
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            int id = childAt.getId();
            int i5 = C1890f.circle_center;
            float f2 = f;
            if (id != i5) {
                if (m3851C(childAt)) {
                    f2 = f;
                } else {
                    c0515b.m33636l(childAt.getId(), i5, this.f37588B, f);
                    f2 = f + (360.0f / (childCount - i));
                }
            }
            i4++;
            f = f2;
        }
        c0515b.m33644d(this);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(C1679w.m29288k());
        }
        m3849E();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        m3850D();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        m3849E();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f37589C.m28625a0(ColorStateList.valueOf(i));
    }
}
