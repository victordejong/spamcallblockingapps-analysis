package p131c.p161d.p282e.p351v;
/* renamed from: c.d.e.v.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/v/a.class */
public final class C6054a extends AbstractC6059f {

    /* renamed from: a */
    public final String f19494a;

    /* renamed from: b */
    public final String f19495b;

    public C6054a(String str, String str2) {
        if (str != null) {
            this.f19494a = str;
            if (str2 != null) {
                this.f19495b = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }

    @Override // p131c.p161d.p282e.p351v.AbstractC6059f
    /* renamed from: a */
    public String mo22169a() {
        return this.f19494a;
    }

    @Override // p131c.p161d.p282e.p351v.AbstractC6059f
    /* renamed from: b */
    public String mo22167b() {
        return this.f19495b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6059f)) {
            return false;
        }
        AbstractC6059f fVar = (AbstractC6059f) obj;
        if (!this.f19494a.equals(fVar.mo22169a()) || !this.f19495b.equals(fVar.mo22167b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f19494a.hashCode() ^ 1000003) * 1000003) ^ this.f19495b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f19494a + ", version=" + this.f19495b + "}";
    }
}
