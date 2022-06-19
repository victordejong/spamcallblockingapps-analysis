package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.internal.C8203l;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p105u.C1919c;
/* renamed from: com.google.android.material.progressindicator.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/b.class */
public abstract class AbstractC8225b {

    /* renamed from: a */
    public int f37088a;

    /* renamed from: b */
    public int f37089b;

    /* renamed from: c */
    public int[] f37090c = new int[0];

    /* renamed from: d */
    public int f37091d;

    /* renamed from: e */
    public int f37092e;

    /* renamed from: f */
    public int f37093f;

    public AbstractC8225b(Context context, AttributeSet attributeSet, int i, int i2) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C1888d.mtrl_progress_track_thickness);
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.BaseProgressIndicator, i, i2, new int[0]);
        this.f37088a = C1919c.m28684c(context, m4462h, C1896l.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f37089b = Math.min(C1919c.m28684c(context, m4462h, C1896l.BaseProgressIndicator_trackCornerRadius, 0), this.f37088a / 2);
        this.f37092e = m4462h.getInt(C1896l.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f37093f = m4462h.getInt(C1896l.BaseProgressIndicator_hideAnimationBehavior, 0);
        m4399c(context, m4462h);
        m4398d(context, m4462h);
        m4462h.recycle();
    }

    /* renamed from: c */
    private void m4399c(Context context, TypedArray typedArray) {
        int i = C1896l.BaseProgressIndicator_indicatorColor;
        if (!typedArray.hasValue(i)) {
            this.f37090c = new int[]{C1909a.m28717b(context, C1886b.colorPrimary, -1)};
        } else if (typedArray.peekValue(i).type != 1) {
            this.f37090c = new int[]{typedArray.getColor(i, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(i, -1));
            this.f37090c = intArray;
            if (intArray.length == 0) {
                throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
            }
        }
    }

    /* renamed from: d */
    private void m4398d(Context context, TypedArray typedArray) {
        int i = C1896l.BaseProgressIndicator_trackColor;
        if (typedArray.hasValue(i)) {
            this.f37091d = typedArray.getColor(i, -1);
            return;
        }
        this.f37091d = this.f37090c[0];
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16842803});
        float f = obtainStyledAttributes.getFloat(0, 0.2f);
        obtainStyledAttributes.recycle();
        this.f37091d = C1909a.m28718a(this.f37091d, (int) (f * 255.0f));
    }

    /* renamed from: a */
    public boolean m4401a() {
        return this.f37093f != 0;
    }

    /* renamed from: b */
    public boolean m4400b() {
        return this.f37092e != 0;
    }

    /* renamed from: e */
    public abstract void mo4397e();
}
