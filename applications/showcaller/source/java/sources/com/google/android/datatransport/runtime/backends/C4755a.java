package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.runtime.backends.AbstractC4762f;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.backends.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/a.class */
final class C4755a extends AbstractC4762f {

    /* renamed from: a */
    private final Iterable<AbstractC4664h> f14359a;

    /* renamed from: b */
    private final byte[] f14360b;

    /* renamed from: com.google.android.datatransport.runtime.backends.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/a$b.class */
    public static final class C4757b extends AbstractC4762f.AbstractC4763a {

        /* renamed from: a */
        private Iterable<AbstractC4664h> f14361a;

        /* renamed from: b */
        private byte[] f14362b;

        @Override // com.google.android.datatransport.runtime.backends.AbstractC4762f.AbstractC4763a
        /* renamed from: a */
        public AbstractC4762f mo21836a() {
            String str = "";
            if (this.f14361a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new C4755a(this.f14361a, this.f14362b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.backends.AbstractC4762f.AbstractC4763a
        /* renamed from: b */
        public AbstractC4762f.AbstractC4763a mo21835b(Iterable<AbstractC4664h> iterable) {
            Objects.requireNonNull(iterable, "Null events");
            this.f14361a = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.AbstractC4762f.AbstractC4763a
        /* renamed from: c */
        public AbstractC4762f.AbstractC4763a mo21834c(byte[] bArr) {
            this.f14362b = bArr;
            return this;
        }
    }

    private C4755a(Iterable<AbstractC4664h> iterable, byte[] bArr) {
        this.f14359a = iterable;
        this.f14360b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4762f
    /* renamed from: b */
    public Iterable<AbstractC4664h> mo21838b() {
        return this.f14359a;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4762f
    /* renamed from: c */
    public byte[] mo21837c() {
        return this.f14360b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f14360b, r0 instanceof com.google.android.datatransport.runtime.backends.C4755a ? ((com.google.android.datatransport.runtime.backends.C4755a) r0).f14360b : r0.mo21837c()) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.backends.AbstractC4762f
            if (r0 == 0) goto L4e
            r0 = r4
            com.google.android.datatransport.runtime.backends.f r0 = (com.google.android.datatransport.runtime.backends.AbstractC4762f) r0
            r4 = r0
            r0 = r3
            java.lang.Iterable<com.google.android.datatransport.h.h> r0 = r0.f14359a
            r1 = r4
            java.lang.Iterable r1 = r1.mo21838b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r3
            byte[] r0 = r0.f14360b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.backends.C4755a
            if (r0 == 0) goto L3a
            r0 = r4
            com.google.android.datatransport.runtime.backends.a r0 = (com.google.android.datatransport.runtime.backends.C4755a) r0
            byte[] r0 = r0.f14360b
            r4 = r0
            goto L3f
        L3a:
            r0 = r4
            byte[] r0 = r0.mo21837c()
            r4 = r0
        L3f:
            r0 = r6
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L4a
            goto L4c
        L4a:
            r0 = 0
            r5 = r0
        L4c:
            r0 = r5
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.backends.C4755a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f14359a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f14360b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f14359a + ", extras=" + Arrays.toString(this.f14360b) + "}";
    }
}
