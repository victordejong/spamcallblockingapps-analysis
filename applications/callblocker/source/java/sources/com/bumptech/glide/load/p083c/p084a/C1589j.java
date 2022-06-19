package com.bumptech.glide.load.p083c.p084a;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.p077h.C1456i;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* renamed from: com.bumptech.glide.load.c.a.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/j.class */
public final class C1589j implements ImageHeaderParser {

    /* renamed from: a */
    static final byte[] f4963a = "Exif����".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b */
    private static final int[] f4964b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: com.bumptech.glide.load.c.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/j$a.class */
    private static final class C1590a implements AbstractC1592c {

        /* renamed from: a */
        private final ByteBuffer f4965a;

        C1590a(ByteBuffer byteBuffer) {
            this.f4965a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: a */
        public int mo16780a() {
            return ((mo16776c() << 8) & 65280) | (mo16776c() & 255);
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: a */
        public int mo16778a(byte[] bArr, int i) {
            int min = Math.min(i, this.f4965a.remaining());
            if (min == 0) {
                min = -1;
            } else {
                this.f4965a.get(bArr, 0, min);
            }
            return min;
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: a */
        public long mo16779a(long j) {
            int min = (int) Math.min(this.f4965a.remaining(), j);
            this.f4965a.position(this.f4965a.position() + min);
            return min;
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: b */
        public short mo16777b() {
            return (short) (mo16776c() & 255);
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: c */
        public int mo16776c() {
            return this.f4965a.remaining() < 1 ? (byte) -1 : this.f4965a.get();
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/j$b.class */
    public static final class C1591b {

        /* renamed from: a */
        private final ByteBuffer f4966a;

        C1591b(byte[] bArr, int i) {
            this.f4966a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: a */
        private boolean m16783a(int i, int i2) {
            return this.f4966a.remaining() - i >= i2;
        }

        /* renamed from: a */
        int m16785a() {
            return this.f4966a.remaining();
        }

        /* renamed from: a */
        int m16784a(int i) {
            return m16783a(i, 4) ? this.f4966a.getInt(i) : -1;
        }

        /* renamed from: a */
        void m16782a(ByteOrder byteOrder) {
            this.f4966a.order(byteOrder);
        }

        /* renamed from: b */
        short m16781b(int i) {
            return m16783a(i, 2) ? this.f4966a.getShort(i) : (short) -1;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.j$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/j$c.class */
    public interface AbstractC1592c {
        /* renamed from: a */
        int mo16780a();

        /* renamed from: a */
        int mo16778a(byte[] bArr, int i);

        /* renamed from: a */
        long mo16779a(long j);

        /* renamed from: b */
        short mo16777b();

        /* renamed from: c */
        int mo16776c();
    }

    /* renamed from: com.bumptech.glide.load.c.a.j$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/j$d.class */
    private static final class C1593d implements AbstractC1592c {

        /* renamed from: a */
        private final InputStream f4967a;

        C1593d(InputStream inputStream) {
            this.f4967a = inputStream;
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: a */
        public int mo16780a() {
            return ((this.f4967a.read() << 8) & 65280) | (this.f4967a.read() & 255);
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: a */
        public int mo16778a(byte[] bArr, int i) {
            int i2;
            int read;
            int i3 = i;
            while (true) {
                i2 = i3;
                if (i2 <= 0 || (read = this.f4967a.read(bArr, i - i2, i2)) == -1) {
                    break;
                }
                i3 = i2 - read;
            }
            return i - i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v13 */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22 */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r8v0, types: [long] */
        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: a */
        public long mo16779a(long j) {
            ?? r8;
            ?? r6;
            if (j < 0) {
                r6 = 0;
            } else {
                ?? r0 = j;
                while (true) {
                    r8 = r0 == true ? 1 : 0;
                    if (r8 <= 0) {
                        break;
                    }
                    long skip = this.f4967a.skip(r8);
                    if (skip > 0) {
                        r0 = r8 - skip;
                    } else if (this.f4967a.read() == -1) {
                        break;
                    } else {
                        r0 = r8 - 1;
                    }
                }
                r6 = j - r8;
            }
            return r6;
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: b */
        public short mo16777b() {
            return (short) (this.f4967a.read() & 255);
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1589j.AbstractC1592c
        /* renamed from: c */
        public int mo16776c() {
            return this.f4967a.read();
        }
    }

    /* renamed from: a */
    private static int m16792a(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* renamed from: a */
    private static int m16791a(C1591b c1591b) {
        short m16781b;
        ByteOrder byteOrder;
        short s;
        short m16781b2;
        int length = "Exif����".length();
        switch (c1591b.m16781b(length)) {
            case 18761:
                byteOrder = ByteOrder.LITTLE_ENDIAN;
                break;
            case 19789:
                byteOrder = ByteOrder.BIG_ENDIAN;
                break;
            default:
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) m16781b));
                }
                byteOrder = ByteOrder.BIG_ENDIAN;
                break;
        }
        c1591b.m16782a(byteOrder);
        int m16784a = length + c1591b.m16784a(length + 4);
        short m16781b3 = c1591b.m16781b(m16784a);
        int i = 0;
        while (true) {
            if (i < m16781b3) {
                int m16792a = m16792a(m16784a, (int) i);
                if (c1591b.m16781b(m16792a) == 274) {
                    short m16781b4 = c1591b.m16781b(m16792a + 2);
                    if (m16781b4 >= 1 && m16781b4 <= 12) {
                        int m16784a2 = c1591b.m16784a(m16792a + 4);
                        if (m16784a2 >= 0) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got tagIndex=" + ((int) i) + " tagType=" + ((int) m16781b2) + " formatCode=" + ((int) m16781b4) + " componentCount=" + m16784a2);
                            }
                            int i2 = m16784a2 + f4964b[m16781b4];
                            if (i2 <= 4) {
                                int i3 = m16792a + 8;
                                if (i3 < 0 || i3 > c1591b.m16785a()) {
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) m16781b2));
                                    }
                                } else if (i2 >= 0 && i3 + i2 <= c1591b.m16785a()) {
                                    s = c1591b.m16781b(i3);
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) m16781b2));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) m16781b4));
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Negative tiff component count");
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) m16781b4));
                    }
                }
                i++;
            } else {
                s = -1;
            }
        }
        return s;
    }

    /* renamed from: a */
    private int m16789a(AbstractC1592c abstractC1592c, AbstractC1673b abstractC1673b) {
        int m16788a;
        int mo16780a = abstractC1592c.mo16780a();
        if (!m16793a(mo16780a)) {
            m16788a = -1;
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + mo16780a);
                m16788a = -1;
            }
        } else {
            int m16786b = m16786b(abstractC1592c);
            if (m16786b == -1) {
                m16788a = -1;
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                    m16788a = -1;
                }
            } else {
                byte[] bArr = (byte[]) abstractC1673b.mo16562a(m16786b, byte[].class);
                try {
                    m16788a = m16788a(abstractC1592c, bArr, m16786b);
                } finally {
                    abstractC1673b.mo16557a((AbstractC1673b) bArr);
                }
            }
        }
        return m16788a;
    }

    /* renamed from: a */
    private int m16788a(AbstractC1592c abstractC1592c, byte[] bArr, int i) {
        int i2;
        int mo16778a = abstractC1592c.mo16778a(bArr, i);
        if (mo16778a != i) {
            i2 = -1;
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + mo16778a);
                i2 = -1;
            }
        } else if (m16787a(bArr, i)) {
            i2 = m16791a(new C1591b(bArr, i));
        } else {
            i2 = -1;
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
                i2 = -1;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private ImageHeaderParser.ImageType m16790a(AbstractC1592c abstractC1592c) {
        ImageHeaderParser.ImageType imageType;
        int mo16780a = abstractC1592c.mo16780a();
        if (mo16780a == 65496) {
            imageType = ImageHeaderParser.ImageType.JPEG;
        } else {
            int mo16780a2 = ((mo16780a << 16) & (-65536)) | (abstractC1592c.mo16780a() & 65535);
            if (mo16780a2 == -1991225785) {
                abstractC1592c.mo16779a(21L);
                imageType = abstractC1592c.mo16776c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
            } else if ((mo16780a2 >> 8) == 4671814) {
                imageType = ImageHeaderParser.ImageType.GIF;
            } else if (mo16780a2 != 1380533830) {
                imageType = ImageHeaderParser.ImageType.UNKNOWN;
            } else {
                abstractC1592c.mo16779a(4L);
                if ((((abstractC1592c.mo16780a() << 16) & (-65536)) | (abstractC1592c.mo16780a() & 65535)) != 1464156752) {
                    imageType = ImageHeaderParser.ImageType.UNKNOWN;
                } else {
                    int mo16780a3 = ((abstractC1592c.mo16780a() << 16) & (-65536)) | (abstractC1592c.mo16780a() & 65535);
                    if ((mo16780a3 & (-256)) != 1448097792) {
                        imageType = ImageHeaderParser.ImageType.UNKNOWN;
                    } else if ((mo16780a3 & 255) == 88) {
                        abstractC1592c.mo16779a(4L);
                        imageType = (abstractC1592c.mo16776c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                    } else if ((mo16780a3 & 255) == 76) {
                        abstractC1592c.mo16779a(4L);
                        imageType = (abstractC1592c.mo16776c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                    } else {
                        imageType = ImageHeaderParser.ImageType.WEBP;
                    }
                }
            }
        }
        return imageType;
    }

    /* renamed from: a */
    private static boolean m16793a(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }

    /* renamed from: a */
    private boolean m16787a(byte[] bArr, int i) {
        boolean z = bArr != null && i > f4963a.length;
        if (z) {
            int i2 = 0;
            while (true) {
                if (i2 >= f4963a.length) {
                    break;
                } else if (bArr[i2] != f4963a[i2]) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private int m16786b(AbstractC1592c abstractC1592c) {
        short mo16777b;
        int i;
        while (true) {
            if (abstractC1592c.mo16777b() == 255) {
                short mo16777b2 = abstractC1592c.mo16777b();
                i = -1;
                if (mo16777b2 != 218) {
                    if (mo16777b2 != 217) {
                        int mo16780a = abstractC1592c.mo16780a() - 2;
                        if (mo16777b2 == 225) {
                            i = mo16780a;
                            break;
                        }
                        long mo16779a = abstractC1592c.mo16779a(mo16780a);
                        if (mo16779a != mo16780a) {
                            i = -1;
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Unable to skip enough data, type: " + ((int) mo16777b2) + ", wanted to skip: " + mo16780a + ", but actually skipped: " + mo16779a);
                                i = -1;
                            }
                        }
                    } else {
                        i = -1;
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                            i = -1;
                        }
                    }
                } else {
                    break;
                }
            } else {
                i = -1;
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) mo16777b));
                    i = -1;
                }
            }
        }
        return i;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public int mo16746a(InputStream inputStream, AbstractC1673b abstractC1673b) {
        return m16789a(new C1593d((InputStream) C1456i.m16989a(inputStream)), (AbstractC1673b) C1456i.m16989a(abstractC1673b));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public ImageHeaderParser.ImageType mo16747a(InputStream inputStream) {
        return m16790a(new C1593d((InputStream) C1456i.m16989a(inputStream)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public ImageHeaderParser.ImageType mo16745a(ByteBuffer byteBuffer) {
        return m16790a(new C1590a((ByteBuffer) C1456i.m16989a(byteBuffer)));
    }
}
