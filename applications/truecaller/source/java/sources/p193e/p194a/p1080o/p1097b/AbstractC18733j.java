package p193e.p194a.p1080o.p1097b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
/* renamed from: e.a.o.b.j */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/j.class */
public abstract class AbstractC18733j {

    /* renamed from: e.a.o.b.j$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/j$a.class */
    public static final class C18734a extends AbstractC18733j {

        /* renamed from: a */
        public final boolean f52662a;

        public C18734a() {
            this(false, 1);
        }

        public C18734a(boolean z) {
            super(null);
            this.f52662a = z;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18734a(boolean z, int i) {
            super(null);
            z = (i & 1) != 0 ? false : z;
            this.f52662a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C18734a) && this.f52662a == ((C18734a) obj).f52662a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f52662a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("Disabled(hasNotCompletedFlow="), this.f52662a, ")");
        }
    }

    /* renamed from: e.a.o.b.j$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/j$b.class */
    public static final class C18735b extends AbstractC18733j {

        /* renamed from: a */
        public static final C18735b f52663a = new C18735b();

        public C18735b() {
            super(null);
        }
    }

    public AbstractC18733j() {
    }

    public AbstractC18733j(f fVar) {
    }
}
