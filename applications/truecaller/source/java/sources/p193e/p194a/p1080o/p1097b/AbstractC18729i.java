package p193e.p194a.p1080o.p1097b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
/* renamed from: e.a.o.b.i */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/i.class */
public abstract class AbstractC18729i {

    /* renamed from: e.a.o.b.i$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/i$a.class */
    public static final class C18730a extends AbstractC18729i {

        /* renamed from: a */
        public static final C18730a f52660a = new C18730a();

        public C18730a() {
            super(null);
        }
    }

    /* renamed from: e.a.o.b.i$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/i$b.class */
    public static final class C18731b extends AbstractC18729i {

        /* renamed from: a */
        public final boolean f52661a;

        public C18731b() {
            this(false, 1);
        }

        public C18731b(boolean z) {
            super(null);
            this.f52661a = z;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18731b(boolean z, int i) {
            super(null);
            z = (i & 1) != 0 ? false : z;
            this.f52661a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C18731b) && this.f52661a == ((C18731b) obj).f52661a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f52661a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("NotAvailable(reasonPresence="), this.f52661a, ")");
        }
    }

    public AbstractC18729i() {
    }

    public AbstractC18729i(f fVar) {
    }
}
