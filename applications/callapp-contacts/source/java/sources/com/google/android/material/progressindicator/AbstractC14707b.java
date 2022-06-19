package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14647l;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.p371h.C14598c;
/* renamed from: com.google.android.material.progressindicator.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/b.class */
public abstract class AbstractC14707b {

    /* renamed from: a */
    public int f53656a;

    /* renamed from: b */
    public int f53657b;

    /* renamed from: c */
    public int[] f53658c;

    /* renamed from: d */
    public int f53659d;

    /* renamed from: e */
    public int f53660e;

    /* renamed from: f */
    public int f53661f;

    public AbstractC14707b(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f53658c = new int[0];
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C14376a.C14380d.mtrl_progress_track_thickness);
        TypedArray m10508a = C14647l.m10508a(context, attributeSet, C14376a.C14388l.BaseProgressIndicator, i, i2, new int[0]);
        this.f53656a = C14598c.m10652a(context, m10508a, C14376a.C14388l.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f53657b = Math.min(C14598c.m10652a(context, m10508a, C14376a.C14388l.BaseProgressIndicator_trackCornerRadius, 0), this.f53656a / 2);
        this.f53660e = m10508a.getInt(C14376a.C14388l.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f53661f = m10508a.getInt(C14376a.C14388l.BaseProgressIndicator_hideAnimationBehavior, 0);
        if (!m10508a.hasValue(C14376a.C14388l.BaseProgressIndicator_indicatorColor)) {
            this.f53658c = new int[]{C14416a.m11240a(context, C14376a.C14378b.colorPrimary, -1)};
        } else if (m10508a.peekValue(C14376a.C14388l.BaseProgressIndicator_indicatorColor).type != 1) {
            this.f53658c = new int[]{m10508a.getColor(C14376a.C14388l.BaseProgressIndicator_indicatorColor, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(m10508a.getResourceId(C14376a.C14388l.BaseProgressIndicator_indicatorColor, -1));
            this.f53658c = intArray;
            if (intArray.length == 0) {
                throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
            }
        }
        if (m10508a.hasValue(C14376a.C14388l.BaseProgressIndicator_trackColor)) {
            this.f53659d = m10508a.getColor(C14376a.C14388l.BaseProgressIndicator_trackColor, -1);
        } else {
            this.f53659d = this.f53658c[0];
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16842803});
            float f = obtainStyledAttributes.getFloat(0, 0.2f);
            obtainStyledAttributes.recycle();
            this.f53659d = C14416a.m11242a(this.f53659d, (int) (f * 255.0f));
        }
        m10508a.recycle();
    }

    /* renamed from: a */
    public final boolean m10343a() {
        return this.f53660e != 0;
    }

    /* renamed from: b */
    public final boolean m10342b() {
        return this.f53661f != 0;
    }

    /* renamed from: c */
    public abstract void mo10341c();
}
