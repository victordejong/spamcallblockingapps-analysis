package com.google.android.datatransport.p232h;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.p232h.AbstractC4673m;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.h.c */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/c.class */
final class C4655c extends AbstractC4673m {

    /* renamed from: a */
    private final String f14212a;

    /* renamed from: b */
    private final byte[] f14213b;

    /* renamed from: c */
    private final Priority f14214c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.h.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/c$b.class */
    public static final class C4657b extends AbstractC4673m.AbstractC4674a {

        /* renamed from: a */
        private String f14215a;

        /* renamed from: b */
        private byte[] f14216b;

        /* renamed from: c */
        private Priority f14217c;

        @Override // com.google.android.datatransport.p232h.AbstractC4673m.AbstractC4674a
        /* renamed from: a */
        public AbstractC4673m mo22019a() {
            String str = "";
            if (this.f14215a == null) {
                str = " backendName";
            }
            String str2 = str;
            if (this.f14217c == null) {
                str2 = str + " priority";
            }
            if (str2.isEmpty()) {
                return new C4655c(this.f14215a, this.f14216b, this.f14217c);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4673m.AbstractC4674a
        /* renamed from: b */
        public AbstractC4673m.AbstractC4674a mo22018b(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.f14215a = str;
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4673m.AbstractC4674a
        /* renamed from: c */
        public AbstractC4673m.AbstractC4674a mo22017c(byte[] bArr) {
            this.f14216b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4673m.AbstractC4674a
        /* renamed from: d */
        public AbstractC4673m.AbstractC4674a mo22016d(Priority priority) {
            Objects.requireNonNull(priority, "Null priority");
            this.f14217c = priority;
            return this;
        }
    }

    private C4655c(String str, byte[] bArr, Priority priority) {
        this.f14212a = str;
        this.f14213b = bArr;
        this.f14214c = priority;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4673m
    /* renamed from: b */
    public String mo22023b() {
        return this.f14212a;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4673m
    /* renamed from: c */
    public byte[] mo22022c() {
        return this.f14213b;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4673m
    /* renamed from: d */
    public Priority mo22021d() {
        return this.f14214c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r3.f14214c.equals(r0.mo22021d()) != false) goto L18;
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
            boolean r0 = r0 instanceof com.google.android.datatransport.p232h.AbstractC4673m
            if (r0 == 0) goto L5e
            r0 = r4
            com.google.android.datatransport.h.m r0 = (com.google.android.datatransport.p232h.AbstractC4673m) r0
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.f14212a
            r1 = r6
            java.lang.String r1 = r1.mo22023b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            r0 = r3
            byte[] r0 = r0.f14213b
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof com.google.android.datatransport.p232h.C4655c
            if (r0 == 0) goto L3b
            r0 = r6
            com.google.android.datatransport.h.c r0 = (com.google.android.datatransport.p232h.C4655c) r0
            byte[] r0 = r0.f14213b
            r4 = r0
            goto L40
        L3b:
            r0 = r6
            byte[] r0 = r0.mo22022c()
            r4 = r0
        L40:
            r0 = r7
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L5a
            r0 = r3
            com.google.android.datatransport.Priority r0 = r0.f14214c
            r1 = r6
            com.google.android.datatransport.Priority r1 = r1.mo22021d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            goto L5c
        L5a:
            r0 = 0
            r5 = r0
        L5c:
            r0 = r5
            return r0
        L5e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.p232h.C4655c.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((((this.f14212a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f14213b)) * 1000003) ^ this.f14214c.hashCode();
    }
}
