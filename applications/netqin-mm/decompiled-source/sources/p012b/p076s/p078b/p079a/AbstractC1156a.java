package p012b.p076s.p078b.p079a;

import p012b.p076s.p078b.p079a.AbstractC1223d0;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a.class */
public abstract class AbstractC1156a implements AbstractC1223d0 {

    /* renamed from: a */
    public final AbstractC1252n0.C1255c f4667a = new AbstractC1252n0.C1255c();

    /* renamed from: b.s.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/a$a.class */
    public static final class C1157a {

        /* renamed from: a */
        public final AbstractC1223d0.AbstractC1225b f4668a;

        /* renamed from: b */
        public boolean f4669b;

        public C1157a(AbstractC1223d0.AbstractC1225b bVar) {
            this.f4668a = bVar;
        }

        /* renamed from: a */
        public void m34556a(AbstractC1158b bVar) {
            if (!this.f4669b) {
                bVar.mo33673a(this.f4668a);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C1157a.class != obj.getClass()) {
                return false;
            }
            return this.f4668a.equals(((C1157a) obj).f4668a);
        }

        public int hashCode() {
            return this.f4668a.hashCode();
        }
    }

    /* renamed from: b.s.b.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/a$b.class */
    public interface AbstractC1158b {
        /* renamed from: a */
        void mo33673a(AbstractC1223d0.AbstractC1225b bVar);
    }

    /* renamed from: a */
    public final int m34559a() {
        long d = mo34072d();
        long duration = getDuration();
        int i = 100;
        if (d == -9223372036854775807L || duration == -9223372036854775807L) {
            i = 0;
        } else if (duration != 0) {
            i = C1167d0.m34493a((int) ((d * 100) / duration), 0, 100);
        }
        return i;
    }

    /* renamed from: a */
    public final void m34558a(long j) {
        mo34101a(mo34079b(), j);
    }

    /* renamed from: j */
    public final long m34557j() {
        AbstractC1252n0 e = mo34070e();
        return e.m34040c() ? -9223372036854775807L : e.m34045a(mo34079b(), this.f4667a).m34021c();
    }
}
