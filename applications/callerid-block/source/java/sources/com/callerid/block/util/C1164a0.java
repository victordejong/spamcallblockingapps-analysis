package com.callerid.block.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.callerid.block.util.a0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/a0.class */
public class C1164a0 {

    /* renamed from: a */
    private static final byte[] f4975a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b */
    private static final byte[] f4976b = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* renamed from: c */
    private static final byte[] f4977c = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: d */
    private static final byte[] f4978d = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* renamed from: e */
    private static final byte[] f4979e = {45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};

    /* renamed from: f */
    private static final byte[] f4980f = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* renamed from: com.callerid.block.util.a0$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/a0$a.class */
    public static class C1165a extends FilterOutputStream {

        /* renamed from: b */
        private boolean f4981b;

        /* renamed from: c */
        private int f4982c;

        /* renamed from: d */
        private byte[] f4983d;

        /* renamed from: e */
        private int f4984e;

        /* renamed from: f */
        private int f4985f;

        /* renamed from: g */
        private boolean f4986g;

        /* renamed from: h */
        private byte[] f4987h;

        /* renamed from: i */
        private boolean f4988i;

        /* renamed from: j */
        private int f4989j;

        /* renamed from: k */
        private byte[] f4990k;

        public C1165a(OutputStream outputStream, int i) {
            super(outputStream);
            this.f4986g = (i & 8) != 0;
            boolean z = (i & 1) != 0;
            this.f4981b = z;
            int i2 = z ? 3 : 4;
            this.f4984e = i2;
            this.f4983d = new byte[i2];
            this.f4982c = 0;
            this.f4985f = 0;
            this.f4988i = false;
            this.f4987h = new byte[4];
            this.f4989j = i;
            this.f4990k = C1164a0.m9908n(i);
        }

        /* renamed from: a */
        public void m9907a() {
            int i = this.f4982c;
            if (i > 0) {
                if (!this.f4981b) {
                    throw new IOException("Base64 input not properly padded.");
                }
                OutputStream outputStream = ((FilterOutputStream) this).out;
                byte[] bArr = this.f4987h;
                C1164a0.m9913i(bArr, this.f4983d, i, this.f4989j);
                outputStream.write(bArr);
                this.f4982c = 0;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            m9907a();
            super.close();
            this.f4983d = null;
            ((FilterOutputStream) this).out = null;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) {
            if (this.f4988i) {
                ((FilterOutputStream) this).out.write(i);
                return;
            }
            if (this.f4981b) {
                byte[] bArr = this.f4983d;
                int i2 = this.f4982c;
                int i3 = i2 + 1;
                this.f4982c = i3;
                bArr[i2] = (byte) i;
                int i4 = this.f4984e;
                if (i3 < i4) {
                    return;
                }
                OutputStream outputStream = ((FilterOutputStream) this).out;
                byte[] bArr2 = this.f4987h;
                C1164a0.m9913i(bArr2, bArr, i4, this.f4989j);
                outputStream.write(bArr2);
                int i5 = this.f4985f + 4;
                this.f4985f = i5;
                if (this.f4986g && i5 >= 76) {
                    ((FilterOutputStream) this).out.write(10);
                    this.f4985f = 0;
                }
            } else {
                byte[] bArr3 = this.f4990k;
                int i6 = i & 127;
                if (bArr3[i6] <= -5) {
                    if (bArr3[i6] != -5) {
                        throw new IOException("Invalid character in Base64 data.");
                    }
                    return;
                }
                byte[] bArr4 = this.f4983d;
                int i7 = this.f4982c;
                int i8 = i7 + 1;
                this.f4982c = i8;
                bArr4[i7] = (byte) i;
                if (i8 < this.f4984e) {
                    return;
                }
                ((FilterOutputStream) this).out.write(this.f4987h, 0, C1164a0.m9915g(bArr4, 0, this.f4987h, 0, this.f4989j));
            }
            this.f4982c = 0;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            if (this.f4988i) {
                ((FilterOutputStream) this).out.write(bArr, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                write(bArr[i + i3]);
            }
        }
    }

    /* renamed from: d */
    public static byte[] m9918d(String str) {
        return m9917e(str, 0);
    }

    /* renamed from: e */
    public static byte[] m9917e(String str, int i) {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        GZIPInputStream gZIPInputStream;
        ByteArrayInputStream byteArrayInputStream2;
        IOException e;
        ByteArrayInputStream byteArrayInputStream3;
        Throwable th2;
        if (str != null) {
            try {
                bArr = str.getBytes("US-ASCII");
            } catch (UnsupportedEncodingException e2) {
                bArr = str.getBytes();
            }
            byte[] m9916f = m9916f(bArr, 0, bArr.length, i);
            boolean z = (i & 4) != 0;
            byte[] bArr2 = m9916f;
            if (m9916f != null) {
                bArr2 = m9916f;
                if (m9916f.length >= 4) {
                    bArr2 = m9916f;
                    if (!z) {
                        bArr2 = m9916f;
                        if (35615 == ((m9916f[0] & 255) | ((m9916f[1] << 8) & 65280))) {
                            bArr2 = new byte[2048];
                            GZIPInputStream gZIPInputStream2 = null;
                            try {
                                try {
                                    byteArrayOutputStream = new ByteArrayOutputStream();
                                    try {
                                        byteArrayInputStream2 = new ByteArrayInputStream(m9916f);
                                        try {
                                            gZIPInputStream = new GZIPInputStream(byteArrayInputStream2);
                                            while (true) {
                                                try {
                                                    int read = gZIPInputStream.read(bArr2);
                                                    if (read < 0) {
                                                        break;
                                                    }
                                                    byteArrayOutputStream.write(bArr2, 0, read);
                                                } catch (IOException e3) {
                                                    e = e3;
                                                    try {
                                                        e.printStackTrace();
                                                        byteArrayInputStream3 = byteArrayInputStream2;
                                                        gZIPInputStream2 = gZIPInputStream;
                                                        byteArrayOutputStream.close();
                                                        bArr2 = m9916f;
                                                        gZIPInputStream.close();
                                                        byteArrayInputStream2.close();
                                                        return bArr2;
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        byteArrayInputStream = byteArrayInputStream2;
                                                        try {
                                                            byteArrayOutputStream.close();
                                                        } catch (Exception e4) {
                                                        }
                                                        try {
                                                            gZIPInputStream.close();
                                                        } catch (Exception e5) {
                                                        }
                                                        try {
                                                            byteArrayInputStream.close();
                                                        } catch (Exception e6) {
                                                        }
                                                        throw th;
                                                    }
                                                } catch (Throwable th4) {
                                                    byteArrayInputStream = byteArrayInputStream2;
                                                    th2 = th4;
                                                    th = th2;
                                                    byteArrayOutputStream.close();
                                                    gZIPInputStream.close();
                                                    byteArrayInputStream.close();
                                                    throw th;
                                                }
                                            }
                                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                                            byteArrayInputStream3 = byteArrayInputStream2;
                                            gZIPInputStream2 = gZIPInputStream;
                                            byteArrayOutputStream.close();
                                            bArr2 = byteArray;
                                        } catch (IOException e7) {
                                            e = e7;
                                            gZIPInputStream = null;
                                        } catch (Throwable th5) {
                                            gZIPInputStream = null;
                                            byteArrayInputStream = byteArrayInputStream2;
                                            th2 = th5;
                                        }
                                    } catch (IOException e8) {
                                        e = e8;
                                        byteArrayInputStream2 = null;
                                        gZIPInputStream = null;
                                    } catch (Throwable th6) {
                                        th2 = th6;
                                        byteArrayInputStream = null;
                                        gZIPInputStream = null;
                                    }
                                } catch (Exception e9) {
                                    byteArrayInputStream2 = byteArrayInputStream3;
                                    gZIPInputStream = gZIPInputStream2;
                                }
                            } catch (IOException e10) {
                                e = e10;
                                byteArrayInputStream2 = null;
                                gZIPInputStream = null;
                                byteArrayOutputStream = null;
                            } catch (Throwable th7) {
                                th = th7;
                                byteArrayInputStream = null;
                                gZIPInputStream = null;
                                byteArrayOutputStream = null;
                            }
                            try {
                                gZIPInputStream.close();
                            } catch (Exception e11) {
                            }
                            try {
                                byteArrayInputStream2.close();
                            } catch (Exception e12) {
                            }
                        }
                    }
                }
            }
            return bArr2;
        }
        throw new NullPointerException("Input string was null.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d2, code lost:
        r0 = new byte[r19];
        java.lang.System.arraycopy(r0, 0, r0, 0, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e2, code lost:
        return r0;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m9916f(byte[] r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.util.C1164a0.m9916f(byte[], int, int, int):byte[]");
    }

    /* renamed from: g */
    public static int m9915g(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4;
        int i5;
        if (bArr != null) {
            if (bArr2 == null) {
                throw new NullPointerException("Destination array was null.");
            }
            if (i < 0 || (i4 = i + 3) >= bArr.length) {
                throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i)));
            }
            if (i2 < 0 || (i5 = i2 + 2) >= bArr2.length) {
                throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(bArr2.length), Integer.valueOf(i2)));
            }
            byte[] m9908n = m9908n(i3);
            int i6 = i + 2;
            if (bArr[i6] == 61) {
                bArr2[i2] = (byte) ((((m9908n[bArr[i + 1]] & 255) << 12) | ((m9908n[bArr[i]] & 255) << 18)) >>> 16);
                return 1;
            } else if (bArr[i4] == 61) {
                int i7 = ((m9908n[bArr[i6]] & 255) << 6) | ((m9908n[bArr[i + 1]] & 255) << 12) | ((m9908n[bArr[i]] & 255) << 18);
                bArr2[i2] = (byte) (i7 >>> 16);
                bArr2[i2 + 1] = (byte) (i7 >>> 8);
                return 2;
            } else {
                int i8 = (m9908n[bArr[i4]] & 255) | ((m9908n[bArr[i + 1]] & 255) << 12) | ((m9908n[bArr[i]] & 255) << 18) | ((m9908n[bArr[i6]] & 255) << 6);
                bArr2[i2] = (byte) (i8 >> 16);
                bArr2[i2 + 1] = (byte) (i8 >> 8);
                bArr2[i5] = (byte) i8;
                return 3;
            }
        }
        throw new NullPointerException("Source array was null.");
    }

    /* renamed from: h */
    private static byte[] m9914h(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        byte[] m9909m = m9909m(i4);
        int i5 = 0;
        int i6 = i2 > 0 ? (bArr[i] << 24) >>> 8 : 0;
        int i7 = i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0;
        if (i2 > 2) {
            i5 = (bArr[i + 2] << 24) >>> 24;
        }
        int i8 = i6 | i7 | i5;
        if (i2 == 1) {
            bArr2[i3] = m9909m[i8 >>> 18];
            bArr2[i3 + 1] = m9909m[(i8 >>> 12) & 63];
            bArr2[i3 + 2] = (byte) 61;
            bArr2[i3 + 3] = (byte) 61;
            return bArr2;
        } else if (i2 == 2) {
            bArr2[i3] = m9909m[i8 >>> 18];
            bArr2[i3 + 1] = m9909m[(i8 >>> 12) & 63];
            bArr2[i3 + 2] = m9909m[(i8 >>> 6) & 63];
            bArr2[i3 + 3] = (byte) 61;
            return bArr2;
        } else if (i2 != 3) {
            return bArr2;
        } else {
            bArr2[i3] = m9909m[i8 >>> 18];
            bArr2[i3 + 1] = m9909m[(i8 >>> 12) & 63];
            bArr2[i3 + 2] = m9909m[(i8 >>> 6) & 63];
            bArr2[i3 + 3] = m9909m[i8 & 63];
            return bArr2;
        }
    }

    /* renamed from: i */
    public static byte[] m9913i(byte[] bArr, byte[] bArr2, int i, int i2) {
        m9914h(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    /* renamed from: j */
    public static String m9912j(byte[] bArr) {
        String str;
        try {
            str = m9911k(bArr, 0, bArr.length, 0);
        } catch (IOException e) {
            str = null;
        }
        return str;
    }

    /* renamed from: k */
    public static String m9911k(byte[] bArr, int i, int i2, int i3) {
        byte[] m9910l = m9910l(bArr, i, i2, i3);
        try {
            return new String(m9910l, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            return new String(m9910l);
        }
    }

    /* renamed from: l */
    public static byte[] m9910l(byte[] bArr, int i, int i2, int i3) {
        C1165a c1165a;
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        Throwable th;
        GZIPOutputStream gZIPOutputStream2;
        IOException iOException;
        GZIPOutputStream gZIPOutputStream3;
        IOException e;
        C1165a c1165a2;
        if (bArr != null) {
            if (i < 0) {
                throw new IllegalArgumentException("Cannot have negative offset: " + i);
            } else if (i2 < 0) {
                throw new IllegalArgumentException("Cannot have length offset: " + i2);
            } else if (i + i2 > bArr.length) {
                throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length)));
            } else {
                if ((i3 & 2) == 0) {
                    boolean z = (i3 & 8) != 0;
                    int i4 = ((i2 / 3) * 4) + (i2 % 3 > 0 ? 4 : 0);
                    int i5 = i4;
                    if (z) {
                        i5 = i4 + (i4 / 76);
                    }
                    byte[] bArr2 = new byte[i5];
                    int i6 = 0;
                    int i7 = 0;
                    int i8 = 0;
                    while (i6 < i2 - 2) {
                        m9914h(bArr, i6 + i, 3, bArr2, i7, i3);
                        i8 += 4;
                        if (z && i8 >= 76) {
                            bArr2[i7 + 4] = (byte) 10;
                            i7++;
                            i8 = 0;
                        }
                        i6 += 3;
                        i7 += 4;
                    }
                    int i9 = i7;
                    if (i6 < i2) {
                        m9914h(bArr, i6 + i, i2 - i6, bArr2, i7, i3);
                        i9 = i7 + 4;
                    }
                    if (i9 > i5 - 1) {
                        return bArr2;
                    }
                    byte[] bArr3 = new byte[i9];
                    System.arraycopy(bArr2, 0, bArr3, 0, i9);
                    return bArr3;
                }
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        c1165a2 = new C1165a(byteArrayOutputStream, i3 | 1);
                    } catch (IOException e2) {
                        e = e2;
                        c1165a2 = null;
                        gZIPOutputStream3 = null;
                    } catch (Throwable th2) {
                        th = th2;
                        c1165a = null;
                        gZIPOutputStream = null;
                    }
                } catch (IOException e3) {
                    c1165a = null;
                    gZIPOutputStream3 = null;
                    byteArrayOutputStream = null;
                    iOException = e3;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayOutputStream = null;
                    c1165a = null;
                    gZIPOutputStream = null;
                }
                try {
                    GZIPOutputStream gZIPOutputStream4 = new GZIPOutputStream(c1165a2);
                    try {
                        gZIPOutputStream4.write(bArr, i, i2);
                        gZIPOutputStream4.close();
                        try {
                            gZIPOutputStream4.close();
                        } catch (Exception e4) {
                        }
                        try {
                            c1165a2.close();
                        } catch (Exception e5) {
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e6) {
                        }
                        return byteArrayOutputStream.toByteArray();
                    } catch (IOException e7) {
                        e = e7;
                        gZIPOutputStream3 = gZIPOutputStream4;
                        iOException = e;
                        c1165a = c1165a2;
                        try {
                            throw iOException;
                        } catch (Throwable th4) {
                            gZIPOutputStream2 = gZIPOutputStream3;
                            th = th4;
                            gZIPOutputStream = gZIPOutputStream2;
                            try {
                                gZIPOutputStream.close();
                            } catch (Exception e8) {
                            }
                            try {
                                c1165a.close();
                            } catch (Exception e9) {
                            }
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception e10) {
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        c1165a = c1165a2;
                        gZIPOutputStream2 = gZIPOutputStream4;
                        gZIPOutputStream = gZIPOutputStream2;
                        gZIPOutputStream.close();
                        c1165a.close();
                        byteArrayOutputStream.close();
                        throw th;
                    }
                } catch (IOException e11) {
                    e = e11;
                    gZIPOutputStream3 = null;
                } catch (Throwable th6) {
                    th = th6;
                    gZIPOutputStream = null;
                    c1165a = c1165a2;
                    gZIPOutputStream.close();
                    c1165a.close();
                    byteArrayOutputStream.close();
                    throw th;
                }
            }
        } else {
            throw new NullPointerException("Cannot serialize a null array.");
        }
    }

    /* renamed from: m */
    private static final byte[] m9909m(int i) {
        return (i & 16) == 16 ? f4977c : (i & 32) == 32 ? f4979e : f4975a;
    }

    /* renamed from: n */
    public static final byte[] m9908n(int i) {
        return (i & 16) == 16 ? f4978d : (i & 32) == 32 ? f4980f : f4976b;
    }
}
