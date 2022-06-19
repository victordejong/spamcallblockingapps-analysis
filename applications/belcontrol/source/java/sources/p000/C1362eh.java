package p000;
/* renamed from: eh */
/* loaded from: classes-dex2jar.jar:eh.class */
public final class C1362eh {

    /* renamed from: e */
    public static final C1362eh f6329e = new C1362eh(1.0f);

    /* renamed from: a */
    public final float f6330a;

    /* renamed from: b */
    public final float f6331b;

    /* renamed from: c */
    public final boolean f6332c;

    /* renamed from: d */
    public final int f6333d;

    public C1362eh(float f) {
        this(f, 1.0f, false);
    }

    public C1362eh(float f, float f2) {
        this(f, f2, false);
    }

    public C1362eh(float f, float f2, boolean z) {
        it.a(f > 0.0f);
        it.a(f2 > 0.0f);
        this.f6330a = f;
        this.f6331b = f2;
        this.f6332c = z;
        this.f6333d = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public long m2164a(long j) {
        return j * this.f6333d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1362eh.class != obj.getClass()) {
            return false;
        }
        C1362eh c1362eh = (C1362eh) obj;
        if (this.f6330a != c1362eh.f6330a || this.f6331b != c1362eh.f6331b || this.f6332c != c1362eh.f6332c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + Float.floatToRawIntBits(this.f6330a)) * 31) + Float.floatToRawIntBits(this.f6331b)) * 31) + (this.f6332c ? 1 : 0);
    }
}
