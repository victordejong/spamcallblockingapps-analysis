package com.google.api.client.a.a;

import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a/c.class */
public final class c extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f31597a = {'+'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f31598b = "0123456789ABCDEF".toCharArray();

    /* renamed from: c  reason: collision with root package name */
    private final boolean f31599c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f31600d;

    public c(String str) {
        this(str, false);
    }

    @Deprecated
    public c(String str, boolean z) {
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric ASCII characters are always 'safe' and should not be escaped.");
        } else if (z && str.contains(StringUtils.SPACE)) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        } else if (!str.contains("%")) {
            this.f31599c = z;
            this.f31600d = b(str);
        } else {
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        }
    }

    private static boolean[] b(String str) {
        char[] charArray = str.toCharArray();
        int i = 122;
        for (char c2 : charArray) {
            i = Math.max((int) c2, i);
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
        for (char c3 : charArray) {
            zArr[c3] = true;
        }
        return zArr;
    }

    @Override // com.google.api.client.a.a.e
    protected final int a(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            boolean[] zArr = this.f31600d;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i++;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0035, code lost:
        r8 = a(r5, r7);
     */
    @Override // com.google.api.client.a.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.length()
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0007:
            r0 = r5
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 >= r1) goto L_0x003d
            r0 = r5
            r1 = r7
            char r0 = r0.charAt(r1)
            r9 = r0
            r0 = r4
            boolean[] r0 = r0.f31600d
            r8 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0035
            r0 = r8
            r1 = r9
            r0 = r0[r1]
            if (r0 != 0) goto L_0x002f
            goto L_0x0035
        L_0x002f:
            int r7 = r7 + 1
            goto L_0x0007
        L_0x0035:
            r0 = r4
            r1 = r5
            r2 = r7
            java.lang.String r0 = r0.a(r1, r2)
            r8 = r0
        L_0x003d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.a.a.c.a(java.lang.String):java.lang.String");
    }

    @Override // com.google.api.client.a.a.e
    protected final char[] a(int i) {
        boolean[] zArr = this.f31600d;
        if (i < zArr.length && zArr[i]) {
            return null;
        }
        if (i == 32 && this.f31599c) {
            return f31597a;
        }
        if (i <= 127) {
            char[] cArr = f31598b;
            return new char[]{'%', cArr[i >>> 4], cArr[i & 15]};
        } else if (i <= 2047) {
            char[] cArr2 = f31598b;
            char c2 = cArr2[i & 15];
            int i2 = i >>> 4;
            char c3 = cArr2[(i2 & 3) | 8];
            int i3 = i2 >>> 2;
            return new char[]{'%', cArr2[(i3 >>> 4) | 12], cArr2[i3 & 15], '%', c3, c2};
        } else if (i <= 65535) {
            char[] cArr3 = f31598b;
            char c4 = cArr3[i & 15];
            int i4 = i >>> 4;
            char c5 = cArr3[(i4 & 3) | 8];
            int i5 = i4 >>> 2;
            char c6 = cArr3[i5 & 15];
            int i6 = i5 >>> 4;
            return new char[]{'%', 'E', cArr3[i6 >>> 2], '%', cArr3[(i6 & 3) | 8], c6, '%', c5, c4};
        } else if (i <= 1114111) {
            char[] cArr4 = f31598b;
            char c7 = cArr4[i & 15];
            int i7 = i >>> 4;
            char c8 = cArr4[(i7 & 3) | 8];
            int i8 = i7 >>> 2;
            char c9 = cArr4[i8 & 15];
            int i9 = i8 >>> 4;
            char c10 = cArr4[(i9 & 3) | 8];
            int i10 = i9 >>> 2;
            char c11 = cArr4[i10 & 15];
            int i11 = i10 >>> 4;
            return new char[]{'%', 'F', cArr4[(i11 >>> 2) & 7], '%', cArr4[(i11 & 3) | 8], c11, '%', c10, c9, '%', c8, c7};
        } else {
            throw new IllegalArgumentException("Invalid unicode character value ".concat(String.valueOf(i)));
        }
    }
}
