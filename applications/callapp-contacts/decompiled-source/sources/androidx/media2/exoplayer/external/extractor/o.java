package androidx.media2.exoplayer.external.extractor;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/o.class */
public interface o {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/o$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final p f3387a;

        /* renamed from: b  reason: collision with root package name */
        public final p f3388b;

        public a(p pVar) {
            this(pVar, pVar);
        }

        public a(p pVar, p pVar2) {
            this.f3387a = (p) androidx.media2.exoplayer.external.util.a.a(pVar);
            this.f3388b = (p) androidx.media2.exoplayer.external.util.a.a(pVar2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3387a.equals(aVar.f3387a) && this.f3388b.equals(aVar.f3388b);
        }

        public final int hashCode() {
            return (this.f3387a.hashCode() * 31) + this.f3388b.hashCode();
        }

        public final String toString() {
            String str;
            String valueOf = String.valueOf(this.f3387a);
            if (this.f3387a.equals(this.f3388b)) {
                str = "";
            } else {
                String valueOf2 = String.valueOf(this.f3388b);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 2);
                sb.append(", ");
                sb.append(valueOf2);
                str = sb.toString();
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 2 + String.valueOf(str).length());
            sb2.append("[");
            sb2.append(valueOf);
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/o$b.class */
    public static final class b implements o {

        /* renamed from: a  reason: collision with root package name */
        private final long f3389a;

        /* renamed from: b  reason: collision with root package name */
        private final a f3390b;

        public b(long j) {
            this(j, 0L);
        }

        public b(long j, long j2) {
            this.f3389a = j;
            this.f3390b = new a(j2 == 0 ? p.f3391a : new p(0L, j2));
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final a a(long j) {
            return this.f3390b;
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final long b() {
            return this.f3389a;
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final boolean j_() {
            return false;
        }
    }

    a a(long j);

    long b();

    boolean j_();
}
