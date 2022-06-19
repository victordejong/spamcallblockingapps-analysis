package p078c.p084c.p085a.p096b.p108x;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: c.c.a.b.x.b */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/x/b.class */
public final class C1932b implements AbstractC1933c {

    /* renamed from: a */
    private final AbstractC1933c f6901a;

    /* renamed from: b */
    private final float f6902b;

    public C1932b(float f, AbstractC1933c abstractC1933c) {
        while (abstractC1933c instanceof C1932b) {
            abstractC1933c = ((C1932b) abstractC1933c).f6901a;
            f += ((C1932b) abstractC1933c).f6902b;
        }
        this.f6901a = abstractC1933c;
        this.f6902b = f;
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1933c
    /* renamed from: a */
    public float mo28577a(RectF rectF) {
        return Math.max(0.0f, this.f6901a.mo28577a(rectF) + this.f6902b);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1932b)) {
            return false;
        }
        C1932b c1932b = (C1932b) obj;
        if (!this.f6901a.equals(c1932b.f6901a) || this.f6902b != c1932b.f6902b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6901a, Float.valueOf(this.f6902b)});
    }
}
