package p131c.p161d.p282e.p352w;

import p131c.p161d.p282e.p352w.p353o.C6094k;
/* renamed from: c.d.e.w.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/i.class */
public class C6072i {

    /* renamed from: a */
    public final long f19521a;

    /* renamed from: b */
    public final long f19522b;

    /* renamed from: c.d.e.w.i$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/w/i$b.class */
    public static class C6074b {

        /* renamed from: a */
        public long f19523a = 60;

        /* renamed from: b */
        public long f19524b = C6094k.f19571j;

        /* renamed from: a */
        public C6074b m22128a(long j) throws IllegalArgumentException {
            if (j >= 0) {
                this.f19523a = j;
                return this;
            }
            throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j)));
        }

        /* renamed from: a */
        public C6072i m22129a() {
            return new C6072i(this);
        }

        /* renamed from: b */
        public C6074b m22126b(long j) {
            if (j >= 0) {
                this.f19524b = j;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j + " is an invalid argument");
        }
    }

    public C6072i(C6074b bVar) {
        this.f19521a = bVar.f19523a;
        this.f19522b = bVar.f19524b;
    }

    /* renamed from: a */
    public long m22131a() {
        return this.f19521a;
    }

    /* renamed from: b */
    public long m22130b() {
        return this.f19522b;
    }
}
