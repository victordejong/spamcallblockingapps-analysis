package com.google.android.material.p152j;

import android.content.Context;
import android.graphics.Color;
import androidx.core.graphics.C0529a;
import com.google.android.material.C4492a;
import com.google.android.material.p149g.C4680a;
import com.google.android.material.p156n.C4717b;
/* renamed from: com.google.android.material.j.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/j/a.class */
public class C4709a {

    /* renamed from: a */
    private final boolean f20399a;

    /* renamed from: b */
    private final int f20400b;

    /* renamed from: c */
    private final int f20401c;

    /* renamed from: d */
    private final float f20402d;

    public C4709a(Context context) {
        this.f20399a = C4717b.m2786a(context, C4492a.C4494b.elevationOverlayEnabled, false);
        this.f20400b = C4680a.m2922a(context, C4492a.C4494b.elevationOverlayColor, 0);
        this.f20401c = C4680a.m2922a(context, C4492a.C4494b.colorSurface, 0);
        this.f20402d = context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: a */
    private boolean m2806a(int i) {
        return C0529a.m20633b(i, 255) == this.f20401c;
    }

    /* renamed from: a */
    public float m2807a(float f) {
        float f2 = 0.0f;
        if (this.f20402d > 0.0f) {
            f2 = f <= 0.0f ? 0.0f : Math.min(((((float) Math.log1p(f / this.f20402d)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        }
        return f2;
    }

    /* renamed from: a */
    public int m2805a(int i, float f) {
        int i2 = i;
        if (this.f20399a) {
            i2 = i;
            if (m2806a(i)) {
                i2 = m2804b(i, f);
            }
        }
        return i2;
    }

    /* renamed from: a */
    public boolean m2808a() {
        return this.f20399a;
    }

    /* renamed from: b */
    public int m2804b(int i, float f) {
        float m2807a = m2807a(f);
        return C0529a.m20633b(C4680a.m2923a(C0529a.m20633b(i, 255), this.f20400b, m2807a), Color.alpha(i));
    }
}
