package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.a;
import com.google.android.material.h.c;
import com.google.android.material.internal.l;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public int f30746a;

    /* renamed from: b  reason: collision with root package name */
    public int f30747b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f30748c;

    /* renamed from: d  reason: collision with root package name */
    public int f30749d;
    public int e;
    public int f;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f30748c = new int[0];
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(a.d.mtrl_progress_track_thickness);
        TypedArray a2 = l.a(context, attributeSet, a.l.BaseProgressIndicator, i, i2, new int[0]);
        this.f30746a = c.a(context, a2, a.l.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f30747b = Math.min(c.a(context, a2, a.l.BaseProgressIndicator_trackCornerRadius, 0), this.f30746a / 2);
        this.e = a2.getInt(a.l.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f = a2.getInt(a.l.BaseProgressIndicator_hideAnimationBehavior, 0);
        if (!a2.hasValue(a.l.BaseProgressIndicator_indicatorColor)) {
            this.f30748c = new int[]{com.google.android.material.b.a.a(context, a.b.colorPrimary, -1)};
        } else if (a2.peekValue(a.l.BaseProgressIndicator_indicatorColor).type != 1) {
            this.f30748c = new int[]{a2.getColor(a.l.BaseProgressIndicator_indicatorColor, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(a2.getResourceId(a.l.BaseProgressIndicator_indicatorColor, -1));
            this.f30748c = intArray;
            if (intArray.length == 0) {
                throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
            }
        }
        if (a2.hasValue(a.l.BaseProgressIndicator_trackColor)) {
            this.f30749d = a2.getColor(a.l.BaseProgressIndicator_trackColor, -1);
        } else {
            this.f30749d = this.f30748c[0];
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16842803});
            float f = obtainStyledAttributes.getFloat(0, 0.2f);
            obtainStyledAttributes.recycle();
            this.f30749d = com.google.android.material.b.a.a(this.f30749d, (int) (f * 255.0f));
        }
        a2.recycle();
    }

    public final boolean a() {
        return this.e != 0;
    }

    public final boolean b() {
        return this.f != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c();
}
