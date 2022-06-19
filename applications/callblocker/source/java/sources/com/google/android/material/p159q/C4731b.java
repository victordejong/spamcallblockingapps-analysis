package com.google.android.material.p159q;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: com.google.android.material.q.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/q/b.class */
public final class C4731b implements AbstractC4732c {

    /* renamed from: a */
    private final AbstractC4732c f20461a;

    /* renamed from: b */
    private final float f20462b;

    public C4731b(float f, AbstractC4732c abstractC4732c) {
        while (abstractC4732c instanceof C4731b) {
            abstractC4732c = ((C4731b) abstractC4732c).f20461a;
            f += ((C4731b) abstractC4732c).f20462b;
        }
        this.f20461a = abstractC4732c;
        this.f20462b = f;
    }

    @Override // com.google.android.material.p159q.AbstractC4732c
    /* renamed from: a */
    public float mo2680a(RectF rectF) {
        return Math.max(0.0f, this.f20461a.mo2680a(rectF) + this.f20462b);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C4731b)) {
                z = false;
            } else {
                C4731b c4731b = (C4731b) obj;
                if (!this.f20461a.equals(c4731b.f20461a) || this.f20462b != c4731b.f20462b) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20461a, Float.valueOf(this.f20462b)});
    }
}
