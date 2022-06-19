package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.AbstractC1369ae;
import androidx.media2.exoplayer.external.AbstractC1383al;
/* renamed from: androidx.media2.exoplayer.external.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a.class */
public abstract class AbstractC1357a implements AbstractC1369ae {

    /* renamed from: a */
    protected final AbstractC1383al.C1386b f5076a = new AbstractC1383al.C1386b();

    /* renamed from: androidx.media2.exoplayer.external.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a$a.class */
    protected static final class C1358a {

        /* renamed from: a */
        public final AbstractC1369ae.AbstractC1371b f5077a;

        /* renamed from: b */
        boolean f5078b;

        public C1358a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
            this.f5077a = abstractC1371b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.f5077a.equals(((C1358a) obj).f5077a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f5077a.hashCode();
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a$b.class */
    protected interface AbstractC1359b {
        /* renamed from: a */
        void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b);
    }

    /* renamed from: a */
    public final long m43166a() {
        AbstractC1383al k = mo42481k();
        if (k.m43094a()) {
            return -9223372036854775807L;
        }
        return C1446c.m42894a(k.mo42095a(mo42489c(), this.f5076a, 0L).f5219j);
    }

    /* renamed from: a */
    public final void m43165a(long j) {
        mo42501a(mo42489c(), j);
    }
}
