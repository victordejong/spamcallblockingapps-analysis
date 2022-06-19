package com.google.android.material.p159q;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: com.google.android.material.q.i */
/* loaded from: classes-dex2jar.jar:com/google/android/material/q/i.class */
public final class C4741i implements AbstractC4732c {

    /* renamed from: a */
    private final float f20511a;

    public C4741i(float f) {
        this.f20511a = f;
    }

    @Override // com.google.android.material.p159q.AbstractC4732c
    /* renamed from: a */
    public float mo2680a(RectF rectF) {
        return this.f20511a * rectF.height();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C4741i)) {
                z = false;
            } else if (this.f20511a != ((C4741i) obj).f20511a) {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f20511a)});
    }
}
