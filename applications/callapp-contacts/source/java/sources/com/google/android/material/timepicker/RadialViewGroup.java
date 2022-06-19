package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14676k;
import com.google.android.material.p374k.C14678m;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/RadialViewGroup.class */
public class RadialViewGroup extends ConstraintLayout {

    /* renamed from: a */
    private final Runnable f54198a;

    /* renamed from: b */
    private int f54199b;

    /* renamed from: c */
    private C14670h f54200c;

    public RadialViewGroup(Context context) {
        this(context, null);
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(C14376a.C14384h.material_radial_view_group, this);
        C14670h c14670h = new C14670h();
        this.f54200c = c14670h;
        C14676k c14676k = new C14676k(0.5f);
        C14678m.C14680a m10422b = c14670h.f53492t.f53500a.m10422b();
        m10422b.f53543e = c14676k;
        m10422b.f53544f = c14676k;
        m10422b.f53545g = c14676k;
        m10422b.f53546h = c14676k;
        c14670h.setShapeAppearanceModel(m10422b.m10421a());
        this.f54200c.m10456g(ColorStateList.valueOf(-1));
        C0926v.m44128a(this, this.f54200c);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.RadialViewGroup, i, 0);
        this.f54199b = obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.RadialViewGroup_materialCircleRadius, 0);
        this.f54198a = new Runnable() { // from class: com.google.android.material.timepicker.RadialViewGroup.1
            @Override // java.lang.Runnable
            public final void run() {
                RadialViewGroup.this.m9902a();
            }
        };
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    private static boolean m9899b(View view) {
        return EventConstants.SKIP.equals(view.getTag());
    }

    /* renamed from: d */
    private void m9898d() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f54198a);
            handler.post(this.f54198a);
        }
    }

    /* renamed from: a */
    protected final void m9902a() {
        int childCount = getChildCount();
        int i = 1;
        int i2 = 0;
        while (i2 < childCount) {
            int i3 = i;
            if (m9899b(getChildAt(i2))) {
                i3 = i + 1;
            }
            i2++;
            i = i3;
        }
        C0680c c0680c = new C0680c();
        c0680c.m44701a(this);
        float f = 0.0f;
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            float f2 = f;
            if (childAt.getId() != C14376a.C14382f.circle_center) {
                f2 = f;
                if (!m9899b(childAt)) {
                    c0680c.m44710a(childAt.getId(), C14376a.C14382f.circle_center, this.f54199b, f);
                    f2 = f + (360.0f / (childCount - i));
                }
            }
            i4++;
            f = f2;
        }
        c0680c.m44693b(this);
    }

    /* renamed from: a */
    public void mo9901a(int i) {
        this.f54199b = i;
        m9902a();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(C0926v.m44141a());
        }
        m9898d();
    }

    /* renamed from: b */
    public final int m9900b() {
        return this.f54199b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        m9902a();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        m9898d();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f54200c.m10456g(ColorStateList.valueOf(i));
    }
}
