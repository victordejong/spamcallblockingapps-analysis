package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/e.class */
final class C8955e extends AbstractC9004v.AbstractC9008c.AbstractC9010b {

    /* renamed from: a */
    private final String f39044a;

    /* renamed from: b */
    private final byte[] f39045b;

    /* renamed from: com.google.firebase.crashlytics.d.h.e$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/e$b.class */
    public static final class C8957b extends AbstractC9004v.AbstractC9008c.AbstractC9010b.AbstractC9011a {

        /* renamed from: a */
        private String f39046a;

        /* renamed from: b */
        private byte[] f39047b;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9010b.AbstractC9011a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9008c.AbstractC9010b mo2272a() {
            String str = "";
            if (this.f39046a == null) {
                str = " filename";
            }
            String str2 = str;
            if (this.f39047b == null) {
                str2 = str + " contents";
            }
            if (str2.isEmpty()) {
                return new C8955e(this.f39046a, this.f39047b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9010b.AbstractC9011a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9008c.AbstractC9010b.AbstractC9011a mo2271b(byte[] bArr) {
            Objects.requireNonNull(bArr, "Null contents");
            this.f39047b = bArr;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9010b.AbstractC9011a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9008c.AbstractC9010b.AbstractC9011a mo2270c(String str) {
            Objects.requireNonNull(str, "Null filename");
            this.f39046a = str;
            return this;
        }
    }

    private C8955e(String str, byte[] bArr) {
        this.f39044a = str;
        this.f39045b = bArr;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9010b
    /* renamed from: b */
    public byte[] mo2274b() {
        return this.f39045b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9010b
    /* renamed from: c */
    public String mo2273c() {
        return this.f39044a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f39045b, r0 instanceof com.google.firebase.crashlytics.p293d.p297h.C8955e ? ((com.google.firebase.crashlytics.p293d.p297h.C8955e) r0).f39045b : r0.mo2274b()) != false) goto L16;
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
            boolean r0 = r0 instanceof com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9010b
            if (r0 == 0) goto L4e
            r0 = r4
            com.google.firebase.crashlytics.d.h.v$c$b r0 = (com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9010b) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f39044a
            r1 = r4
            java.lang.String r1 = r1.mo2273c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r3
            byte[] r0 = r0.f39045b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.google.firebase.crashlytics.p293d.p297h.C8955e
            if (r0 == 0) goto L3a
            r0 = r4
            com.google.firebase.crashlytics.d.h.e r0 = (com.google.firebase.crashlytics.p293d.p297h.C8955e) r0
            byte[] r0 = r0.f39045b
            r4 = r0
            goto L3f
        L3a:
            r0 = r4
            byte[] r0 = r0.mo2274b()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.p293d.p297h.C8955e.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f39044a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f39045b);
    }

    public String toString() {
        return "File{filename=" + this.f39044a + ", contents=" + Arrays.toString(this.f39045b) + "}";
    }
}
