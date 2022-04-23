package p012b.p076s.p078b.p079a.p083p0;
/* renamed from: b.s.b.a.p0.p */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/p.class */
public final class C1292p {

    /* renamed from: a */
    public final int f5138a;

    /* renamed from: b */
    public final float f5139b;

    public C1292p(int i, float f) {
        this.f5138a = i;
        this.f5139b = f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1292p.class != obj.getClass()) {
            return false;
        }
        C1292p pVar = (C1292p) obj;
        if (!(this.f5138a == pVar.f5138a && Float.compare(pVar.f5139b, this.f5139b) == 0)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f5138a) * 31) + Float.floatToIntBits(this.f5139b);
    }
}
