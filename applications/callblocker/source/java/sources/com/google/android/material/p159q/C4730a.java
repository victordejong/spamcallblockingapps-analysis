package com.google.android.material.p159q;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: com.google.android.material.q.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/q/a.class */
public final class C4730a implements AbstractC4732c {

    /* renamed from: a */
    private final float f20460a;

    public C4730a(float f) {
        this.f20460a = f;
    }

    @Override // com.google.android.material.p159q.AbstractC4732c
    /* renamed from: a */
    public float mo2680a(RectF rectF) {
        return this.f20460a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C4730a)) {
                z = false;
            } else if (this.f20460a != ((C4730a) obj).f20460a) {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f20460a)});
    }
}
