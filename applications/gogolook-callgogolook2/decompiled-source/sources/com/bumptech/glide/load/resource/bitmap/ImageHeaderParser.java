package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import androidx.core.internal.view.SupportMenu;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/ImageHeaderParser.class */
public class ImageHeaderParser {

    /* renamed from: b */
    public static final byte[] f1950b;

    /* renamed from: c */
    public static final int[] f1951c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: a */
    public final C1875b f1952a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType.class */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        PNG_A(true),
        PNG(false),
        UNKNOWN(false);
        

        /* renamed from: a */
        public final boolean f1953a;

        ImageType(boolean z) {
            this.f1953a = z;
        }

        public boolean hasAlpha() {
            return this.f1953a;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$a.class */
    public static class C1874a {

        /* renamed from: a */
        public final ByteBuffer f1954a;

        public C1874a(byte[] bArr) {
            this.f1954a = ByteBuffer.wrap(bArr);
            this.f1954a.order(ByteOrder.BIG_ENDIAN);
        }

        /* renamed from: a */
        public int m36085a() {
            return this.f1954a.array().length;
        }

        /* renamed from: a */
        public short m36084a(int i) {
            return this.f1954a.getShort(i);
        }

        /* renamed from: a */
        public void m36083a(ByteOrder byteOrder) {
            this.f1954a.order(byteOrder);
        }

        /* renamed from: b */
        public int m36082b(int i) {
            return this.f1954a.getInt(i);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$b.class */
    public static class C1875b {

        /* renamed from: a */
        public final InputStream f1955a;

        public C1875b(InputStream inputStream) {
            this.f1955a = inputStream;
        }

        /* renamed from: a */
        public int m36081a() throws IOException {
            return this.f1955a.read();
        }

        /* renamed from: a */
        public int m36079a(byte[] bArr) throws IOException {
            int read;
            int length = bArr.length;
            while (length > 0 && (read = this.f1955a.read(bArr, bArr.length - length, length)) != -1) {
                length -= read;
            }
            return bArr.length - length;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19 */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m36080a(long r6) throws java.io.IOException {
            /*
                r5 = this;
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0008
                r0 = 0
                return r0
            L_0x0008:
                r0 = r6
                r8 = r0
            L_0x000a:
                r0 = r8
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x003d
                r0 = r5
                java.io.InputStream r0 = r0.f1955a
                r1 = r8
                long r0 = r0.skip(r1)
                r10 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0029
            L_0x0021:
                r0 = r8
                r1 = r10
                long r0 = r0 - r1
                r8 = r0
                goto L_0x000a
            L_0x0029:
                r0 = r5
                java.io.InputStream r0 = r0.f1955a
                int r0 = r0.read()
                r1 = -1
                if (r0 != r1) goto L_0x0037
                goto L_0x003d
            L_0x0037:
                r0 = 1
                r10 = r0
                goto L_0x0021
            L_0x003d:
                r0 = r6
                r1 = r8
                long r0 = r0 - r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.C1875b.m36080a(long):long");
        }

        /* renamed from: b */
        public int m36078b() throws IOException {
            return ((this.f1955a.read() << 8) & 65280) | (this.f1955a.read() & 255);
        }

        /* renamed from: c */
        public short m36077c() throws IOException {
            return (short) (this.f1955a.read() & 255);
        }
    }

    static {
        byte[] bArr = new byte[0];
        try {
            bArr = "Exif����".getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
        }
        f1950b = bArr;
    }

    public ImageHeaderParser(InputStream inputStream) {
        this.f1952a = new C1875b(inputStream);
    }

    /* renamed from: a */
    public static int m36090a(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    /* renamed from: a */
    public static int m36089a(C1874a aVar) {
        ByteOrder byteOrder;
        short a;
        short a2 = aVar.m36084a(6);
        if (a2 == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (a2 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                String str = "Unknown endianness = " + ((int) a2);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        aVar.m36083a(byteOrder);
        int b = aVar.m36082b(10) + 6;
        short a3 = aVar.m36084a(b);
        for (int i = 0; i < a3; i++) {
            int a4 = m36090a(b, i);
            if (aVar.m36084a(a4) == 274) {
                short a5 = aVar.m36084a(a4 + 2);
                if (a5 >= 1 && a5 <= 12) {
                    int b2 = aVar.m36082b(a4 + 4);
                    if (b2 < 0) {
                        Log.isLoggable("ImageHeaderParser", 3);
                    } else {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            String str2 = "Got tagIndex=" + i + " tagType=" + ((int) a) + " formatCode=" + ((int) a5) + " componentCount=" + b2;
                        }
                        int i2 = b2 + f1951c[a5];
                        if (i2 <= 4) {
                            int i3 = a4 + 8;
                            if (i3 < 0 || i3 > aVar.m36085a()) {
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    String str3 = "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) a);
                                }
                            } else if (i2 >= 0 && i2 + i3 <= aVar.m36085a()) {
                                return aVar.m36084a(i3);
                            } else {
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    String str4 = "Illegal number of bytes for TI tag data tagType=" + ((int) a);
                                }
                            }
                        } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                            String str5 = "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) a5);
                        }
                    }
                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                    String str6 = "Got invalid format code=" + ((int) a5);
                }
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static boolean m36091a(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }

    /* renamed from: a */
    public final byte[] m36092a() throws IOException {
        short c;
        short c2;
        int b;
        long j;
        long a;
        do {
            if (this.f1952a.m36077c() == 255) {
                c2 = this.f1952a.m36077c();
                if (c2 == 218) {
                    return null;
                }
                if (c2 == 217) {
                    Log.isLoggable("ImageHeaderParser", 3);
                    return null;
                }
                b = this.f1952a.m36078b() - 2;
                if (c2 != 225) {
                    j = b;
                    a = this.f1952a.m36080a(j);
                } else {
                    byte[] bArr = new byte[b];
                    int a2 = this.f1952a.m36079a(bArr);
                    if (a2 == b) {
                        return bArr;
                    }
                    if (!Log.isLoggable("ImageHeaderParser", 3)) {
                        return null;
                    }
                    String str = "Unable to read segment data, type: " + ((int) c2) + ", length: " + b + ", actually read: " + a2;
                    return null;
                }
            } else if (!Log.isLoggable("ImageHeaderParser", 3)) {
                return null;
            } else {
                String str2 = "Unknown segmentId=" + ((int) c);
                return null;
            }
        } while (a == j);
        if (!Log.isLoggable("ImageHeaderParser", 3)) {
            return null;
        }
        String str3 = "Unable to skip enough data, type: " + ((int) c2) + ", wanted to skip: " + b + ", but actually skipped: " + a;
        return null;
    }

    /* renamed from: b */
    public int m36088b() throws IOException {
        if (!m36091a(this.f1952a.m36078b())) {
            return -1;
        }
        byte[] a = m36092a();
        boolean z = false;
        z = a != null && a.length > f1950b.length;
        if (z) {
            int i = 0;
            while (true) {
                byte[] bArr = f1950b;
                if (i >= bArr.length || a[i] != bArr[i]) {
                    break;
                }
                i++;
            }
        }
        if (z) {
            return m36089a(new C1874a(a));
        }
        return -1;
    }

    /* renamed from: c */
    public ImageType m36087c() throws IOException {
        int b = this.f1952a.m36078b();
        if (b == 65496) {
            return ImageType.JPEG;
        }
        int b2 = ((b << 16) & SupportMenu.CATEGORY_MASK) | (this.f1952a.m36078b() & 65535);
        if (b2 != -1991225785) {
            return (b2 >> 8) == 4671814 ? ImageType.GIF : ImageType.UNKNOWN;
        }
        this.f1952a.m36080a(21L);
        return this.f1952a.m36081a() >= 3 ? ImageType.PNG_A : ImageType.PNG;
    }

    /* renamed from: d */
    public boolean m36086d() throws IOException {
        return m36087c().hasAlpha();
    }
}
