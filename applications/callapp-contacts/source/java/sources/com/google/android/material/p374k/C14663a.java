package com.google.android.material.p374k;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: com.google.android.material.k.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/a.class */
public final class C14663a implements AbstractC14665c {

    /* renamed from: a */
    private final float f53468a;

    public C14663a(float f) {
        this.f53468a = f;
    }

    @Override // com.google.android.material.p374k.AbstractC14665c
    /* renamed from: a */
    public final float mo10432a(RectF rectF) {
        return this.f53468a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C14663a) && this.f53468a == ((C14663a) obj).f53468a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f53468a)});
    }
}
