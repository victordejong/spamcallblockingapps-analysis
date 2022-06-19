package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.c1.t */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/t.class */
public interface AbstractC4992t {

    /* renamed from: com.google.android.exoplayer2.c1.t$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/t$a.class */
    public static final class C4993a {

        /* renamed from: a */
        public final C4995u f15518a;

        /* renamed from: b */
        public final C4995u f15519b;

        public C4993a(C4995u c4995u) {
            this(c4995u, c4995u);
        }

        public C4993a(C4995u c4995u, C4995u c4995u2) {
            this.f15518a = (C4995u) C5508e.m18911e(c4995u);
            this.f15519b = (C4995u) C5508e.m18911e(c4995u2);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C4993a.class != obj.getClass()) {
                return false;
            }
            C4993a c4993a = (C4993a) obj;
            if (!this.f15518a.equals(c4993a.f15518a) || !this.f15519b.equals(c4993a.f15519b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f15518a.hashCode() * 31) + this.f15519b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(this.f15518a);
            if (this.f15518a.equals(this.f15519b)) {
                str = "";
            } else {
                str = ", " + this.f15519b;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.t$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/t$b.class */
    public static class C4994b implements AbstractC4992t {

        /* renamed from: a */
        private final long f15520a;

        /* renamed from: b */
        private final C4993a f15521b;

        public C4994b(long j) {
            this(j, 0L);
        }

        public C4994b(long j, long j2) {
            this.f15520a = j;
            this.f15521b = new C4993a(j2 == 0 ? C4995u.f15522a : new C4995u(0L, j2));
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: d */
        public boolean mo20622d() {
            return false;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: i */
        public C4993a mo20621i(long j) {
            return this.f15521b;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: j */
        public long mo20620j() {
            return this.f15520a;
        }
    }

    /* renamed from: d */
    boolean mo20622d();

    /* renamed from: i */
    C4993a mo20621i(long j);

    /* renamed from: j */
    long mo20620j();
}
