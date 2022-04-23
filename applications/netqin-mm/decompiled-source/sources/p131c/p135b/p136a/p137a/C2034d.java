package p131c.p135b.p136a.p137a;
/* renamed from: c.b.a.a.d */
/* loaded from: classes-dex2jar.jar:c/b/a/a/d.class */
public class C2034d {

    /* renamed from: a */
    public String f7935a;

    /* renamed from: b */
    public String f7936b;

    /* renamed from: c */
    public String f7937c;

    /* renamed from: d */
    public long f7938d = -1;

    /* renamed from: e */
    public int f7939e = -1;

    /* renamed from: a */
    public static int m31228a(String str, C2032b bVar) {
        if ("start".equalsIgnoreCase(str)) {
            return 0;
        }
        if ("firstQuartile".equalsIgnoreCase(str)) {
            return 25;
        }
        if ("midpoint".equalsIgnoreCase(str)) {
            return 50;
        }
        if ("thirdQuartile".equalsIgnoreCase(str)) {
            return 75;
        }
        if (!"complete".equalsIgnoreCase(str)) {
            return -1;
        }
        return bVar != null ? bVar.m31233i() : 95;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p131c.p135b.p136a.p137a.C2034d m31229a(p131c.p135b.p136a.p148e.p153y.C2429t r6, p131c.p135b.p136a.p137a.C2032b r7, p131c.p135b.p136a.p148e.C2341l r8) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p137a.C2034d.m31229a(c.b.a.e.y.t, c.b.a.a.b, c.b.a.e.l):c.b.a.a.d");
    }

    /* renamed from: a */
    public String m31231a() {
        return this.f7936b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
        if (r13 == false) goto L_0x0058;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m31230a(long r6, int r8) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f7938d
            r9 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0016
            r0 = 1
            r12 = r0
            goto L_0x0019
        L_0x0016:
            r0 = 0
            r12 = r0
        L_0x0019:
            r0 = r6
            r1 = r5
            long r1 = r1.f7938d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0028
            r0 = 1
            r13 = r0
            goto L_0x002b
        L_0x0028:
            r0 = 0
            r13 = r0
        L_0x002b:
            r0 = r5
            int r0 = r0.f7939e
            if (r0 < 0) goto L_0x0038
            r0 = 1
            r14 = r0
            goto L_0x003b
        L_0x0038:
            r0 = 0
            r14 = r0
        L_0x003b:
            r0 = r8
            r1 = r5
            int r1 = r1.f7939e
            if (r0 < r1) goto L_0x0048
            r0 = 1
            r8 = r0
            goto L_0x004a
        L_0x0048:
            r0 = 0
            r8 = r0
        L_0x004a:
            r0 = r12
            if (r0 == 0) goto L_0x0058
            r0 = r11
            r15 = r0
            r0 = r13
            if (r0 != 0) goto L_0x006b
        L_0x0058:
            r0 = r14
            if (r0 == 0) goto L_0x0068
            r0 = r8
            if (r0 == 0) goto L_0x0068
            r0 = r11
            r15 = r0
            goto L_0x006b
        L_0x0068:
            r0 = 0
            r15 = r0
        L_0x006b:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p137a.C2034d.m31230a(long, int):boolean");
    }

    /* renamed from: b */
    public String m31227b() {
        return this.f7937c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2034d)) {
            return false;
        }
        C2034d dVar = (C2034d) obj;
        if (this.f7938d != dVar.f7938d || this.f7939e != dVar.f7939e) {
            return false;
        }
        String str = this.f7935a;
        if (str != null) {
            if (!str.equals(dVar.f7935a)) {
                return false;
            }
        } else if (dVar.f7935a != null) {
            return false;
        }
        String str2 = this.f7936b;
        if (str2 != null) {
            if (!str2.equals(dVar.f7936b)) {
                return false;
            }
        } else if (dVar.f7936b != null) {
            return false;
        }
        return this.f7937c.equals(dVar.f7937c);
    }

    public int hashCode() {
        String str = this.f7935a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f7936b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        int hashCode2 = this.f7937c.hashCode();
        long j = this.f7938d;
        return (((((((hashCode * 31) + i) * 31) + hashCode2) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.f7939e;
    }

    public String toString() {
        return "VastTracker{identifier='" + this.f7935a + "', event='" + this.f7936b + "', uriString='" + this.f7937c + "', offsetSeconds=" + this.f7938d + ", offsetPercent=" + this.f7939e + '}';
    }
}
