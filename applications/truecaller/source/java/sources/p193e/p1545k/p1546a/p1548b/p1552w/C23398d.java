package p193e.p1545k.p1546a.p1548b.p1552w;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.b.w.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/d.class */
public final class C23398d {

    /* renamed from: a */
    public static final char[] f64788a = (char[]) C23394a.f64767a.clone();

    /* renamed from: b */
    public static final byte[] f64789b = (byte[]) C23394a.f64768b.clone();

    /* renamed from: c */
    public static final C23398d f64790c = new C23398d();

    /* renamed from: a */
    public static int m7128a(int i, int i2) {
        if (i2 < 56320 || i2 > 57343) {
            StringBuilder m8728C = C22128a.m8728C("Broken surrogate pair: first char 0x");
            m8728C.append(Integer.toHexString(i));
            m8728C.append(", second 0x");
            m8728C.append(Integer.toHexString(i2));
            m8728C.append("; illegal combination");
            throw new IllegalArgumentException(m8728C.toString());
        }
        return (i2 - 56320) + ((i - 55296) << 10) + 65536;
    }

    /* renamed from: b */
    public static void m7127b(int i) {
        throw new IllegalArgumentException(C23405k.m7089j(i));
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0297, code lost:
        if (r15 != null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02a2, code lost:
        return java.util.Arrays.copyOfRange(r13, 0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02a3, code lost:
        r15.f64572e = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x02af, code lost:
        return r15.m7247q();
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0274 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] m7126c(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 688
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1552w.C23398d.m7126c(java.lang.String):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0052, code lost:
        if (r13 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0055, code lost:
        r17 = new char[]{(char) 92, 0, (char) 48, (char) 48};
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0080, code lost:
        if (r0[r7.charAt(r14)] >= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0083, code lost:
        r17[1] = (char) 117;
        r0 = p193e.p1545k.p1546a.p1548b.p1552w.C23398d.f64788a;
        r17[4] = r0[r0 >> 4];
        r17[5] = r0[r0 & 15];
        r18 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00af, code lost:
        r17[1] = (char) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b7, code lost:
        r0 = r15 + r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00c2, code lost:
        if (r0 <= r8.length) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00c5, code lost:
        r0 = r8.length - r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00ce, code lost:
        if (r0 <= 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d1, code lost:
        java.lang.System.arraycopy(r17, 0, r8, r15, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00dc, code lost:
        r16 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00e2, code lost:
        if (r12 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00e5, code lost:
        r16 = new p193e.p1545k.p1546a.p1548b.p1549a0.C23362n(null, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00f0, code lost:
        r8 = r16.m7228l();
        r15 = r18 - r0;
        java.lang.System.arraycopy(r17, r0, r8, 0, r15);
        r12 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x010f, code lost:
        java.lang.System.arraycopy(r17, 0, r8, r15, r18);
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0049, code lost:
        r18 = 2;
        r17 = r13;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char[] m7125d(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1552w.C23398d.m7125d(java.lang.String):char[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x033f, code lost:
        if (r14 != null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x034a, code lost:
        return java.util.Arrays.copyOfRange(r12, 0, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x034b, code lost:
        r14.f64572e = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0357, code lost:
        return r14.m7247q();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0315  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] m7124e(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 856
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1552w.C23398d.m7124e(java.lang.String):byte[]");
    }
}
