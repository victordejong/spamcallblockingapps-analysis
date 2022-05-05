package p459j.p460a.p474c0.p499h.p500x0;
/* renamed from: j.a.c0.h.x0.l */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/l.class */
public class C12240l {

    /* renamed from: a */
    public final long f27588a;

    /* renamed from: b */
    public final long f27589b;

    public C12240l(long j, long j2) {
        this.f27588a = j;
        this.f27589b = j2;
    }

    /* renamed from: a */
    public long m6568a() {
        return this.f27589b;
    }

    /* renamed from: b */
    public long m6567b() {
        return this.f27588a;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        boolean z = false;
        if (obj instanceof C12240l) {
            C12240l lVar = (C12240l) obj;
            z = false;
            if (this.f27588a == lVar.f27588a) {
                z = false;
                if (this.f27589b == lVar.f27589b) {
                    z = true;
                }
            }
        }
        return z;
    }

    public String toString() {
        return this.f27588a + "/" + this.f27589b;
    }
}
