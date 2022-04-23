package com.google.android.exoplayer2.extractor;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/v.class */
public interface v {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/v$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final w f21329a;

        /* renamed from: b  reason: collision with root package name */
        public final w f21330b;

        public a(w wVar) {
            this(wVar, wVar);
        }

        public a(w wVar, w wVar2) {
            this.f21329a = (w) com.google.android.exoplayer2.util.a.b(wVar);
            this.f21330b = (w) com.google.android.exoplayer2.util.a.b(wVar2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f21329a.equals(aVar.f21329a) && this.f21330b.equals(aVar.f21330b);
        }

        public final int hashCode() {
            return (this.f21329a.hashCode() * 31) + this.f21330b.hashCode();
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("[");
            sb.append(this.f21329a);
            if (this.f21329a.equals(this.f21330b)) {
                str = "";
            } else {
                str = ", " + this.f21330b;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/v$b.class */
    public static class b implements v {

        /* renamed from: a  reason: collision with root package name */
        private final long f21331a;

        /* renamed from: b  reason: collision with root package name */
        private final a f21332b;

        public b(long j) {
            this(j, 0L);
        }

        public b(long j, long j2) {
            this.f21331a = j;
            this.f21332b = new a(j2 == 0 ? w.f21333a : new w(0L, j2));
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final a a(long j) {
            return this.f21332b;
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final boolean a() {
            return false;
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final long b() {
            return this.f21331a;
        }
    }

    a a(long j);

    boolean a();

    long b();
}
