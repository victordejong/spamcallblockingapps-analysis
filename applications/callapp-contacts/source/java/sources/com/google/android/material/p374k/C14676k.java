package com.google.android.material.p374k;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: com.google.android.material.k.k */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/k.class */
public final class C14676k implements AbstractC14665c {

    /* renamed from: a */
    private final float f53524a;

    public C14676k(float f) {
        this.f53524a = f;
    }

    @Override // com.google.android.material.p374k.AbstractC14665c
    /* renamed from: a */
    public final float mo10432a(RectF rectF) {
        return this.f53524a * rectF.height();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C14676k) && this.f53524a == ((C14676k) obj).f53524a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f53524a)});
    }
}
