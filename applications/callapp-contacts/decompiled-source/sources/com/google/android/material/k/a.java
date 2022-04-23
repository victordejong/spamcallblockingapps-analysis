package com.google.android.material.k;

import android.graphics.RectF;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/a.class */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final float f30671a;

    public a(float f) {
        this.f30671a = f;
    }

    @Override // com.google.android.material.k.c
    public final float a(RectF rectF) {
        return this.f30671a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f30671a == ((a) obj).f30671a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f30671a)});
    }
}
