package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.extractor.o */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/o.class */
public interface AbstractC1637o {

    /* renamed from: androidx.media2.exoplayer.external.extractor.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/o$a.class */
    public static final class C1638a {

        /* renamed from: a */
        public final C1640p f6501a;

        /* renamed from: b */
        public final C1640p f6502b;

        public C1638a(C1640p c1640p) {
            this(c1640p, c1640p);
        }

        public C1638a(C1640p c1640p, C1640p c1640p2) {
            this.f6501a = (C1640p) C1993a.m41690a(c1640p);
            this.f6502b = (C1640p) C1993a.m41690a(c1640p2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1638a c1638a = (C1638a) obj;
            return this.f6501a.equals(c1638a.f6501a) && this.f6502b.equals(c1638a.f6502b);
        }

        public final int hashCode() {
            return (this.f6501a.hashCode() * 31) + this.f6502b.hashCode();
        }

        public final String toString() {
            String str;
            String valueOf = String.valueOf(this.f6501a);
            if (this.f6501a.equals(this.f6502b)) {
                str = "";
            } else {
                String valueOf2 = String.valueOf(this.f6502b);
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

    /* renamed from: androidx.media2.exoplayer.external.extractor.o$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/o$b.class */
    public static final class C1639b implements AbstractC1637o {

        /* renamed from: a */
        private final long f6503a;

        /* renamed from: b */
        private final C1638a f6504b;

        public C1639b(long j) {
            this(j, 0L);
        }

        public C1639b(long j, long j2) {
            this.f6503a = j;
            this.f6504b = new C1638a(j2 == 0 ? C1640p.f6505a : new C1640p(0L, j2));
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: a */
        public final C1638a mo42504a(long j) {
            return this.f6504b;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: b */
        public final long mo42503b() {
            return this.f6503a;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: j_ */
        public final boolean mo42502j_() {
            return false;
        }
    }

    /* renamed from: a */
    C1638a mo42504a(long j);

    /* renamed from: b */
    long mo42503b();

    /* renamed from: j_ */
    boolean mo42502j_();
}
