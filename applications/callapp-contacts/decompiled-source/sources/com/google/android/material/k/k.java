package com.google.android.material.k;

import android.graphics.RectF;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/k.class */
public final class k implements c {

    /* renamed from: a  reason: collision with root package name */
    private final float f30689a;

    public k(float f) {
        this.f30689a = f;
    }

    @Override // com.google.android.material.k.c
    public final float a(RectF rectF) {
        return this.f30689a * rectF.height();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k) && this.f30689a == ((k) obj).f30689a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f30689a)});
    }
}
