package com.google.android.material.k;

import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/b.class */
public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private final c f30672a;

    /* renamed from: b  reason: collision with root package name */
    private final float f30673b;

    public b(float f, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f30672a;
            f += ((b) cVar).f30673b;
        }
        this.f30672a = cVar;
        this.f30673b = f;
    }

    @Override // com.google.android.material.k.c
    public final float a(RectF rectF) {
        return Math.max((float) BitmapDescriptorFactory.HUE_RED, this.f30672a.a(rectF) + this.f30673b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f30672a.equals(bVar.f30672a) && this.f30673b == bVar.f30673b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30672a, Float.valueOf(this.f30673b)});
    }
}
