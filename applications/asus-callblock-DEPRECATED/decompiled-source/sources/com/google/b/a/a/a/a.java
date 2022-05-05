package com.google.b.a.a.a;
/* loaded from: classes-dex2jar.jar:com/google/b/a/a/a/a.class */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f4428a = {'+'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f4429b = "0123456789ABCDEF".toCharArray();
    private final boolean c;
    private final boolean[] d;

    public a(String str) {
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        } else if (str.contains("%")) {
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        } else {
            this.c = false;
            this.d = b(str);
        }
    }

    private static boolean[] b(String str) {
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

    @Override // com.google.b.a.a.a.b
    protected final int a(CharSequence charSequence, int i, int i2) {
        char charAt;
        while (i < i2 && (charAt = charSequence.charAt(i)) < this.d.length && this.d[charAt]) {
            i++;
        }
        return i;
    }

    @Override // com.google.b.a.a.a.b
    public final String a(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        while (true) {
            str2 = str;
            if (i >= length) {
                break;
            }
            char charAt = str.charAt(i);
            if (charAt >= this.d.length || !this.d[charAt]) {
                break;
            }
            i++;
        }
        str2 = a(str, i);
        return str2;
    }

    @Override // com.google.b.a.a.a.b
    protected final char[] a(int i) {
        char[] cArr;
        if (i < this.d.length && this.d[i]) {
            cArr = null;
        } else if (i == 32 && this.c) {
            cArr = f4428a;
        } else if (i <= 127) {
            cArr = new char[]{(char) 37, f4429b[i >>> 4], f4429b[i & 15]};
        } else if (i <= 2047) {
            cArr = new char[]{(char) 37, f4429b[(r0 >>> 4) | 12], f4429b[r0 & 15], (char) 37, f4429b[(r0 & 3) | 8], f4429b[i & 15]};
            int i2 = i >>> 4;
            int i3 = i2 >>> 2;
        } else if (i <= 65535) {
            cArr = new char[]{(char) 37, (char) 69, f4429b[r0 >>> 2], (char) 37, f4429b[(r0 & 3) | 8], f4429b[r0 & 15], (char) 37, f4429b[(r0 & 3) | 8], f4429b[i & 15]};
            int i4 = i >>> 4;
            int i5 = i4 >>> 2;
            int i6 = i5 >>> 4;
        } else if (i <= 1114111) {
            cArr = new char[]{(char) 37, (char) 70, f4429b[(r0 >>> 2) & 7], (char) 37, f4429b[(r0 & 3) | 8], f4429b[r0 & 15], (char) 37, f4429b[(r0 & 3) | 8], f4429b[r0 & 15], (char) 37, f4429b[(r0 & 3) | 8], f4429b[i & 15]};
            int i7 = i >>> 4;
            int i8 = i7 >>> 2;
            int i9 = i8 >>> 4;
            int i10 = i9 >>> 2;
            int i11 = i10 >>> 4;
        } else {
            throw new IllegalArgumentException("Invalid unicode character value " + i);
        }
        return cArr;
    }
}
