package com.google.api.client.p379a.p380a;

import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.api.client.a.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a/c.class */
public final class C15203c extends AbstractC15206e {

    /* renamed from: a */
    private static final char[] f55047a = {'+'};

    /* renamed from: b */
    private static final char[] f55048b = "0123456789ABCDEF".toCharArray();

    /* renamed from: c */
    private final boolean f55049c;

    /* renamed from: d */
    private final boolean[] f55050d;

    public C15203c(String str) {
        this(str, false);
    }

    @Deprecated
    public C15203c(String str, boolean z) {
        if (!str.matches(".*[0-9A-Za-z].*")) {
            if (z && str.contains(StringUtils.SPACE)) {
                throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
            }
            if (str.contains("%")) {
                throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
            }
            this.f55049c = z;
            this.f55050d = m9289b(str);
            return;
        }
        throw new IllegalArgumentException("Alphanumeric ASCII characters are always 'safe' and should not be escaped.");
    }

    /* renamed from: b */
    private static boolean[] m9289b(String str) {
        char[] charArray = str.toCharArray();
        int i = 122;
        for (char c : charArray) {
            i = Math.max((int) c, i);
        }
        boolean[] zArr = new boolean[i + 1];
        for (int i2 = 48; i2 <= 57; i2++) {
            zArr[i2] = true;
        }
        for (int i3 = 65; i3 <= 90; i3++) {
            zArr[i3] = true;
        }
        for (int i4 = 97; i4 <= 122; i4++) {
            zArr[i4] = true;
        }
        for (char c2 : charArray) {
            zArr[c2] = true;
        }
        return zArr;
    }

    @Override // com.google.api.client.p379a.p380a.AbstractC15206e
    /* renamed from: a */
    protected final int mo9286a(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            boolean[] zArr = this.f55050d;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i++;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0035, code lost:
        r8 = m9285a(r5, r7);
     */
    @Override // com.google.api.client.p379a.p380a.AbstractC15202b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String mo9290a(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.length()
            r6 = r0
            r0 = 0
            r7 = r0
        L7:
            r0 = r5
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 >= r1) goto L3d
            r0 = r5
            r1 = r7
            char r0 = r0.charAt(r1)
            r9 = r0
            r0 = r4
            boolean[] r0 = r0.f55050d
            r8 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L35
            r0 = r8
            r1 = r9
            r0 = r0[r1]
            if (r0 != 0) goto L2f
            goto L35
        L2f:
            int r7 = r7 + 1
            goto L7
        L35:
            r0 = r4
            r1 = r5
            r2 = r7
            java.lang.String r0 = r0.m9285a(r1, r2)
            r8 = r0
        L3d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.p379a.p380a.C15203c.mo9290a(java.lang.String):java.lang.String");
    }

    @Override // com.google.api.client.p379a.p380a.AbstractC15206e
    /* renamed from: a */
    protected final char[] mo9287a(int i) {
        boolean[] zArr = this.f55050d;
        if (i >= zArr.length || !zArr[i]) {
            if (i == 32 && this.f55049c) {
                return f55047a;
            }
            if (i <= 127) {
                char[] cArr = f55048b;
                return new char[]{'%', cArr[i >>> 4], cArr[i & 15]};
            } else if (i <= 2047) {
                char[] cArr2 = f55048b;
                char c = cArr2[i & 15];
                int i2 = i >>> 4;
                char c2 = cArr2[(i2 & 3) | 8];
                int i3 = i2 >>> 2;
                return new char[]{'%', cArr2[(i3 >>> 4) | 12], cArr2[i3 & 15], '%', c2, c};
            } else if (i <= 65535) {
                char[] cArr3 = f55048b;
                char c3 = cArr3[i & 15];
                int i4 = i >>> 4;
                char c4 = cArr3[(i4 & 3) | 8];
                int i5 = i4 >>> 2;
                char c5 = cArr3[i5 & 15];
                int i6 = i5 >>> 4;
                return new char[]{'%', 'E', cArr3[i6 >>> 2], '%', cArr3[(i6 & 3) | 8], c5, '%', c4, c3};
            } else if (i > 1114111) {
                throw new IllegalArgumentException("Invalid unicode character value ".concat(String.valueOf(i)));
            } else {
                char[] cArr4 = f55048b;
                char c6 = cArr4[i & 15];
                int i7 = i >>> 4;
                char c7 = cArr4[(i7 & 3) | 8];
                int i8 = i7 >>> 2;
                char c8 = cArr4[i8 & 15];
                int i9 = i8 >>> 4;
                char c9 = cArr4[(i9 & 3) | 8];
                int i10 = i9 >>> 2;
                char c10 = cArr4[i10 & 15];
                int i11 = i10 >>> 4;
                return new char[]{'%', 'F', cArr4[(i11 >>> 2) & 7], '%', cArr4[(i11 & 3) | 8], c10, '%', c9, c8, '%', c7, c6};
            }
        }
        return null;
    }
}
