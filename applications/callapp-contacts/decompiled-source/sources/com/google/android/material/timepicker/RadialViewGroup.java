package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.k.h;
import com.google.android.material.k.k;
import com.google.android.material.k.m;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/RadialViewGroup.class */
public class RadialViewGroup extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f30959a;

    /* renamed from: b  reason: collision with root package name */
    private int f30960b;

    /* renamed from: c  reason: collision with root package name */
    private h f30961c;

    public RadialViewGroup(Context context) {
        this(context, null);
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(a.h.material_radial_view_group, this);
        h hVar = new h();
        this.f30961c = hVar;
        k kVar = new k(0.5f);
        m.a b2 = hVar.t.f30683a.b();
        b2.e = kVar;
        b2.f = kVar;
        b2.g = kVar;
        b2.h = kVar;
        hVar.setShapeAppearanceModel(b2.a());
        this.f30961c.g(ColorStateList.valueOf(-1));
        v.a(this, this.f30961c);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.RadialViewGroup, i, 0);
        this.f30960b = obtainStyledAttributes.getDimensionPixelSize(a.l.RadialViewGroup_materialCircleRadius, 0);
        this.f30959a = new Runnable() { // from class: com.google.android.material.timepicker.RadialViewGroup.1
            @Override // java.lang.Runnable
            public final void run() {
                RadialViewGroup.this.a();
            }
        };
        obtainStyledAttributes.recycle();
    }

    private static boolean b(View view) {
        return EventConstants.SKIP.equals(view.getTag());
    }

    private void d() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f30959a);
            handler.post(this.f30959a);
        }
    }

    protected final void a() {
        int childCount = getChildCount();
        int i = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            i = i;
            if (b(getChildAt(i2))) {
                i++;
            }
        }
        c cVar = new c();
        cVar.a(this);
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            f = f;
            if (childAt.getId() != a.f.circle_center) {
                f = f;
                if (!b(childAt)) {
                    cVar.a(childAt.getId(), a.f.circle_center, this.f30960b, f);
                    f += 360.0f / (childCount - i);
                }
            }
        }
        cVar.b(this);
    }

    public void a(int i) {
        this.f30960b = i;
        a();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(v.a());
        }
        d();
    }

    public final int b() {
        return this.f30960b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        a();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        d();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f30961c.g(ColorStateList.valueOf(i));
    }
}
