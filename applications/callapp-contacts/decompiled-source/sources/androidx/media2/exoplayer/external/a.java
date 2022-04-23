package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.ae;
import androidx.media2.exoplayer.external.al;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a.class */
public abstract class a implements ae {

    /* renamed from: a  reason: collision with root package name */
    protected final al.b f2779a = new al.b();

    /* renamed from: androidx.media2.exoplayer.external.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a$a.class */
    protected static final class C0074a {

        /* renamed from: a  reason: collision with root package name */
        public final ae.b f2780a;

        /* renamed from: b  reason: collision with root package name */
        boolean f2781b;

        public C0074a(ae.b bVar) {
            this.f2780a = bVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f2780a.equals(((C0074a) obj).f2780a);
        }

        public final int hashCode() {
            return this.f2780a.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a$b.class */
    protected interface b {
        void a(ae.b bVar);
    }

    public final long a() {
        al k = k();
        if (k.a()) {
            return -9223372036854775807L;
        }
        return c.a(k.a(c(), this.f2779a, 0L).j);
    }

    public final void a(long j) {
        a(c(), j);
    }
}
