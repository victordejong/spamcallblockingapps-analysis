package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.extractor.v */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/v.class */
public interface AbstractC11146v {

    /* renamed from: com.google.android.exoplayer2.extractor.v$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/v$a.class */
    public static final class C11147a {

        /* renamed from: a */
        public final C11149w f36502a;

        /* renamed from: b */
        public final C11149w f36503b;

        public C11147a(C11149w c11149w) {
            this(c11149w, c11149w);
        }

        public C11147a(C11149w c11149w, C11149w c11149w2) {
            this.f36502a = (C11149w) C11593a.m20020b(c11149w);
            this.f36503b = (C11149w) C11593a.m20020b(c11149w2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C11147a c11147a = (C11147a) obj;
            return this.f36502a.equals(c11147a.f36502a) && this.f36503b.equals(c11147a.f36503b);
        }

        public final int hashCode() {
            return (this.f36502a.hashCode() * 31) + this.f36503b.hashCode();
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("[");
            sb.append(this.f36502a);
            if (this.f36502a.equals(this.f36503b)) {
                str = "";
            } else {
                str = ", " + this.f36503b;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.v$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/v$b.class */
    public static class C11148b implements AbstractC11146v {

        /* renamed from: a */
        private final long f36504a;

        /* renamed from: b */
        private final C11147a f36505b;

        public C11148b(long j) {
            this(j, 0L);
        }

        public C11148b(long j, long j2) {
            this.f36504a = j;
            this.f36505b = new C11147a(j2 == 0 ? C11149w.f36506a : new C11149w(0L, j2));
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: a */
        public final C11147a mo21388a(long j) {
            return this.f36505b;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: a */
        public final boolean mo21389a() {
            return false;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: b */
        public final long mo21387b() {
            return this.f36504a;
        }
    }

    /* renamed from: a */
    C11147a mo21388a(long j);

    /* renamed from: a */
    boolean mo21389a();

    /* renamed from: b */
    long mo21387b();
}
