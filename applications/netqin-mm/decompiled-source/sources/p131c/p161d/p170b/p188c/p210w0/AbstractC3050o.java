package p131c.p161d.p170b.p188c.p210w0;

import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.w0.o */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/o.class */
public interface AbstractC3050o {

    /* renamed from: c.d.b.c.w0.o$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/o$a.class */
    public static final class C3051a {

        /* renamed from: a */
        public final C3053p f10990a;

        /* renamed from: b */
        public final C3053p f10991b;

        public C3051a(C3053p pVar) {
            this(pVar, pVar);
        }

        public C3051a(C3053p pVar, C3053p pVar2) {
            C2877e.m28737a(pVar);
            this.f10990a = pVar;
            C2877e.m28737a(pVar2);
            this.f10991b = pVar2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C3051a.class != obj.getClass()) {
                return false;
            }
            C3051a aVar = (C3051a) obj;
            if (!this.f10990a.equals(aVar.f10990a) || !this.f10991b.equals(aVar.f10991b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f10990a.hashCode() * 31) + this.f10991b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(this.f10990a);
            if (this.f10990a.equals(this.f10991b)) {
                str = "";
            } else {
                str = ", " + this.f10991b;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: c.d.b.c.w0.o$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/o$b.class */
    public static class C3052b implements AbstractC3050o {

        /* renamed from: a */
        public final long f10992a;

        /* renamed from: b */
        public final C3051a f10993b;

        public C3052b(long j) {
            this(j, 0L);
        }

        public C3052b(long j, long j2) {
            this.f10992a = j;
            this.f10993b = new C3051a(j2 == 0 ? C3053p.f10994c : new C3053p(0L, j2));
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: b */
        public C3051a mo27544b(long j) {
            return this.f10993b;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: b */
        public boolean mo27545b() {
            return false;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: c */
        public long mo27543c() {
            return this.f10992a;
        }
    }

    /* renamed from: b */
    C3051a mo27544b(long j);

    /* renamed from: b */
    boolean mo27545b();

    /* renamed from: c */
    long mo27543c();
}
