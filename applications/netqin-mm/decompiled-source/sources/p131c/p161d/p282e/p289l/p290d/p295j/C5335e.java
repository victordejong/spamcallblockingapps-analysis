package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Arrays;
/* renamed from: c.d.e.l.d.j.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/e.class */
public final class C5335e extends CrashlyticsReport.AbstractC7781c.AbstractC7783b {

    /* renamed from: a */
    public final String f18148a;

    /* renamed from: b */
    public final byte[] f18149b;

    /* renamed from: c.d.e.l.d.j.e$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/e$b.class */
    public static final class C5337b extends CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a {

        /* renamed from: a */
        public String f18150a;

        /* renamed from: b */
        public byte[] f18151b;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a mo7598a(String str) {
            if (str != null) {
                this.f18150a = str;
                return this;
            }
            throw new NullPointerException("Null filename");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a mo7597a(byte[] bArr) {
            if (bArr != null) {
                this.f18151b = bArr;
                return this;
            }
            throw new NullPointerException("Null contents");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7781c.AbstractC7783b mo7599a() {
            String str = "";
            if (this.f18150a == null) {
                str = " filename";
            }
            String str2 = str;
            if (this.f18151b == null) {
                str2 = str + " contents";
            }
            if (str2.isEmpty()) {
                return new C5335e(this.f18150a, this.f18151b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }
    }

    public C5335e(String str, byte[] bArr) {
        this.f18148a = str;
        this.f18149b = bArr;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7783b
    /* renamed from: a */
    public byte[] mo7602a() {
        return this.f18149b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7783b
    /* renamed from: b */
    public String mo7601b() {
        return this.f18148a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f18149b, r0 instanceof p131c.p161d.p282e.p289l.p290d.p295j.C5335e ? ((p131c.p161d.p282e.p289l.p290d.p295j.C5335e) r0).f18149b : r0.mo7602a()) != false) goto L_0x004c;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7783b
            if (r0 == 0) goto L_0x004e
            r0 = r4
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$c$b r0 = (com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7783b) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f18148a
            r1 = r4
            java.lang.String r1 = r1.mo7601b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004a
            r0 = r3
            byte[] r0 = r0.f18149b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof p131c.p161d.p282e.p289l.p290d.p295j.C5335e
            if (r0 == 0) goto L_0x003a
            r0 = r4
            c.d.e.l.d.j.e r0 = (p131c.p161d.p282e.p289l.p290d.p295j.C5335e) r0
            byte[] r0 = r0.f18149b
            r4 = r0
            goto L_0x003f
        L_0x003a:
            r0 = r4
            byte[] r0 = r0.mo7602a()
            r4 = r0
        L_0x003f:
            r0 = r6
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x004a
            goto L_0x004c
        L_0x004a:
            r0 = 0
            r5 = r0
        L_0x004c:
            r0 = r5
            return r0
        L_0x004e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p289l.p290d.p295j.C5335e.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f18148a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f18149b);
    }

    public String toString() {
        return "File{filename=" + this.f18148a + ", contents=" + Arrays.toString(this.f18149b) + "}";
    }
}
