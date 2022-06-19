package com.google.android.material.p374k;

import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* renamed from: com.google.android.material.k.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/b.class */
public final class C14664b implements AbstractC14665c {

    /* renamed from: a */
    private final AbstractC14665c f53469a;

    /* renamed from: b */
    private final float f53470b;

    public C14664b(float f, AbstractC14665c abstractC14665c) {
        while (abstractC14665c instanceof C14664b) {
            abstractC14665c = ((C14664b) abstractC14665c).f53469a;
            f += ((C14664b) abstractC14665c).f53470b;
        }
        this.f53469a = abstractC14665c;
        this.f53470b = f;
    }

    @Override // com.google.android.material.p374k.AbstractC14665c
    /* renamed from: a */
    public final float mo10432a(RectF rectF) {
        return Math.max((float) BitmapDescriptorFactory.HUE_RED, this.f53469a.mo10432a(rectF) + this.f53470b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14664b)) {
            return false;
        }
        C14664b c14664b = (C14664b) obj;
        return this.f53469a.equals(c14664b.f53469a) && this.f53470b == c14664b.f53470b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f53469a, Float.valueOf(this.f53470b)});
    }
}
