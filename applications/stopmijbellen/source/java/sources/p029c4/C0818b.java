package p029c4;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: c4.b */
/* loaded from: classes-dex2jar.jar:c4/b.class */
public final class C0818b implements AbstractC0819c {

    /* renamed from: a */
    public final AbstractC0819c f2998a;

    /* renamed from: b */
    public final float f2999b;

    public C0818b(float f, AbstractC0819c abstractC0819c) {
        while (abstractC0819c instanceof C0818b) {
            abstractC0819c = ((C0818b) abstractC0819c).f2998a;
            f += ((C0818b) abstractC0819c).f2999b;
        }
        this.f2998a = abstractC0819c;
        this.f2999b = f;
    }

    @Override // p029c4.AbstractC0819c
    /* renamed from: a */
    public float mo7306a(RectF rectF) {
        return Math.max(0.0f, this.f2998a.mo7306a(rectF) + this.f2999b);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0818b)) {
            return false;
        }
        C0818b c0818b = (C0818b) obj;
        if (!this.f2998a.equals(c0818b.f2998a) || this.f2999b != c0818b.f2999b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2998a, Float.valueOf(this.f2999b)});
    }
}
