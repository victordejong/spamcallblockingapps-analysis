package p078c.p084c.p085a.p096b.p108x;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: c.c.a.b.x.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/x/a.class */
public final class C1931a implements AbstractC1933c {

    /* renamed from: a */
    private final float f6900a;

    public C1931a(float f) {
        this.f6900a = f;
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1933c
    /* renamed from: a */
    public float mo28577a(RectF rectF) {
        return this.f6900a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1931a)) {
            return false;
        }
        if (this.f6900a != ((C1931a) obj).f6900a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f6900a)});
    }
}
