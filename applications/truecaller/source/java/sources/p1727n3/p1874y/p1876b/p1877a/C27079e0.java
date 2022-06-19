package p1727n3.p1874y.p1876b.p1877a;

import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: n3.y.b.a.e0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/e0.class */
public final class C27079e0 {

    /* renamed from: e */
    public static final C27079e0 f75693e = new C27079e0(1.0f, 1.0f, false);

    /* renamed from: a */
    public final float f75694a;

    /* renamed from: b */
    public final float f75695b;

    /* renamed from: c */
    public final boolean f75696c;

    /* renamed from: d */
    public final int f75697d;

    public C27079e0(float f, float f2, boolean z) {
        MediaSessionCompat.m43211p(f > 0.0f);
        MediaSessionCompat.m43211p(f2 > 0.0f);
        this.f75694a = f;
        this.f75695b = f2;
        this.f75696c = z;
        this.f75697d = Math.round(f * 1000.0f);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C27079e0.class != obj.getClass()) {
            return false;
        }
        C27079e0 c27079e0 = (C27079e0) obj;
        if (this.f75694a != c27079e0.f75694a || this.f75695b != c27079e0.f75695b || this.f75696c != c27079e0.f75696c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((Float.floatToRawIntBits(this.f75695b) + ((Float.floatToRawIntBits(this.f75694a) + 527) * 31)) * 31) + (this.f75696c ? 1 : 0);
    }
}
