package p078c.p084c.p085a.p096b.p108x;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: c.c.a.b.x.k */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/x/k.class */
public final class C1944k implements AbstractC1933c {

    /* renamed from: a */
    private final float f6956a;

    public C1944k(float f) {
        this.f6956a = f;
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1933c
    /* renamed from: a */
    public float mo28577a(RectF rectF) {
        return this.f6956a * rectF.height();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1944k)) {
            return false;
        }
        if (this.f6956a != ((C1944k) obj).f6956a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f6956a)});
    }
}
