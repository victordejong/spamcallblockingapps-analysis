package p029c4;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: c4.g */
/* loaded from: classes-dex2jar.jar:c4/g.class */
public final class C0825g implements AbstractC0819c {

    /* renamed from: a */
    public final float f3056a;

    public C0825g(float f) {
        this.f3056a = f;
    }

    @Override // p029c4.AbstractC0819c
    /* renamed from: a */
    public float mo7306a(RectF rectF) {
        return rectF.height() * this.f3056a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0825g)) {
            return false;
        }
        if (this.f3056a != ((C0825g) obj).f3056a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f3056a)});
    }
}
