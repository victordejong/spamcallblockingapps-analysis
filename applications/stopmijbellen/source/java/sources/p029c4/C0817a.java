package p029c4;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: c4.a */
/* loaded from: classes-dex2jar.jar:c4/a.class */
public final class C0817a implements AbstractC0819c {

    /* renamed from: a */
    public final float f2997a;

    public C0817a(float f) {
        this.f2997a = f;
    }

    @Override // p029c4.AbstractC0819c
    /* renamed from: a */
    public float mo7306a(RectF rectF) {
        return this.f2997a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0817a)) {
            return false;
        }
        if (this.f2997a != ((C0817a) obj).f2997a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f2997a)});
    }
}
