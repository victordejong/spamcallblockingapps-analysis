package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.p223p.C4382j;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser.class */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: a */
    static final byte[] f13207a = "Exif����".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b */
    private static final int[] f13208b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader.class */
    public interface Reader {

        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException.class */
        public static final class EndOfFileException extends IOException {
            private static final long serialVersionUID = 1;

            EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        /* renamed from: a */
        int mo22974a();

        /* renamed from: b */
        int mo22973b(byte[] bArr, int i);

        /* renamed from: c */
        short mo22972c();

        long skip(long j);
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$a.class */
    private static final class C4276a implements Reader {

        /* renamed from: a */
        private final ByteBuffer f13209a;

        C4276a(ByteBuffer byteBuffer) {
            this.f13209a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public int mo22974a() {
            return (mo22972c() << 8) | mo22972c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: b */
        public int mo22973b(byte[] bArr, int i) {
            int min = Math.min(i, this.f13209a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f13209a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: c */
        public short mo22972c() {
            if (this.f13209a.remaining() >= 1) {
                return (short) (this.f13209a.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) {
            int min = (int) Math.min(this.f13209a.remaining(), j);
            ByteBuffer byteBuffer = this.f13209a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$b.class */
    public static final class C4277b {

        /* renamed from: a */
        private final ByteBuffer f13210a;

        C4277b(byte[] bArr, int i) {
            this.f13210a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: c */
        private boolean m22977c(int i, int i2) {
            return this.f13210a.remaining() - i >= i2;
        }

        /* renamed from: a */
        short m22979a(int i) {
            return m22977c(i, 2) ? this.f13210a.getShort(i) : (short) -1;
        }

        /* renamed from: b */
        int m22978b(int i) {
            return m22977c(i, 4) ? this.f13210a.getInt(i) : -1;
        }

        /* renamed from: d */
        int m22976d() {
            return this.f13210a.remaining();
        }

        /* renamed from: e */
        void m22975e(ByteOrder byteOrder) {
            this.f13210a.order(byteOrder);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$c.class */
    private static final class C4278c implements Reader {

        /* renamed from: a */
        private final InputStream f13211a;

        C4278c(InputStream inputStream) {
            this.f13211a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public int mo22974a() {
            return (mo22972c() << 8) | mo22972c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: b */
        public int mo22973b(byte[] bArr, int i) {
            int i2;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i2 = i4;
                if (i3 >= i) {
                    break;
                }
                i4 = this.f13211a.read(bArr, i3, i - i3);
                i2 = i4;
                if (i4 == -1) {
                    break;
                }
                i3 += i4;
            }
            if (i3 == 0 && i2 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i3;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: c */
        public short mo22972c() {
            int read = this.f13211a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v19 */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) {
            char c;
            if (j < 0) {
                return 0L;
            }
            char c2 = j;
            while (true) {
                c = c2;
                if (c <= 0) {
                    break;
                }
                char skip = this.f13211a.skip(c);
                if (skip <= 0) {
                    if (this.f13211a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                c2 = c - skip;
            }
            return j - c;
        }
    }

    /* renamed from: d */
    private static int m22987d(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    /* renamed from: e */
    private int m22986e(Reader reader, AbstractC4091b abstractC4091b) {
        try {
            int mo22974a = reader.mo22974a();
            if (!m22984g(mo22974a)) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + mo22974a);
                return -1;
            }
            int m22982i = m22982i(reader);
            if (m22982i == -1) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                return -1;
            }
            byte[] bArr = (byte[]) abstractC4091b.mo23275e(m22982i, byte[].class);
            int m22980k = m22980k(reader, bArr, m22982i);
            abstractC4091b.mo23276d(bArr);
            return m22980k;
        } catch (Reader.EndOfFileException e) {
            return -1;
        }
    }

    /* renamed from: f */
    private ImageHeaderParser.ImageType m22985f(Reader reader) {
        try {
            int mo22974a = reader.mo22974a();
            if (mo22974a == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int mo22972c = (mo22974a << 8) | reader.mo22972c();
            if (mo22972c == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int mo22972c2 = (mo22972c << 8) | reader.mo22972c();
            if (mo22972c2 == -1991225785) {
                reader.skip(21L);
                try {
                    return reader.mo22972c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException e) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            } else if (mo22972c2 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            } else {
                reader.skip(4L);
                if (((reader.mo22974a() << 16) | reader.mo22974a()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int mo22974a2 = (reader.mo22974a() << 16) | reader.mo22974a();
                if ((mo22974a2 & (-256)) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i = mo22974a2 & 255;
                if (i == 88) {
                    reader.skip(4L);
                    return (reader.mo22972c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                } else if (i != 76) {
                    return ImageHeaderParser.ImageType.WEBP;
                } else {
                    reader.skip(4L);
                    return (reader.mo22972c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                }
            }
        } catch (Reader.EndOfFileException e2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    /* renamed from: g */
    private static boolean m22984g(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }

    /* renamed from: h */
    private boolean m22983h(byte[] bArr, int i) {
        boolean z = bArr != null && i > f13207a.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = f13207a;
                if (i2 >= bArr2.length) {
                    break;
                } else if (bArr[i2] != bArr2[i2]) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return z;
    }

    /* renamed from: i */
    private int m22982i(Reader reader) {
        short mo22972c;
        short mo22972c2;
        int mo22974a;
        long j;
        long skip;
        do {
            if (reader.mo22972c() != 255) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) mo22972c));
                return -1;
            }
            mo22972c2 = reader.mo22972c();
            if (mo22972c2 == 218) {
                return -1;
            }
            if (mo22972c2 == 217) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                return -1;
            }
            mo22974a = reader.mo22974a() - 2;
            if (mo22972c2 == 225) {
                return mo22974a;
            }
            j = mo22974a;
            skip = reader.skip(j);
        } while (skip == j);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to skip enough data, type: " + ((int) mo22972c2) + ", wanted to skip: " + mo22974a + ", but actually skipped: " + skip);
            return -1;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* renamed from: j */
    private static int m22981j(C4277b c4277b) {
        ByteOrder byteOrder;
        short m22979a;
        short m22979a2 = c4277b.m22979a(6);
        if (m22979a2 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (m22979a2 != 19789) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) m22979a2));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        c4277b.m22975e(byteOrder);
        int m22978b = c4277b.m22978b(10) + 6;
        short m22979a3 = c4277b.m22979a(m22978b);
        for (int i = 0; i < m22979a3; i++) {
            int m22987d = m22987d(m22978b, i);
            if (c4277b.m22979a(m22987d) == 274) {
                short m22979a4 = c4277b.m22979a(m22987d + 2);
                if (m22979a4 >= 1 && m22979a4 <= 12) {
                    int m22978b2 = c4277b.m22978b(m22987d + 4);
                    if (m22978b2 >= 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got tagIndex=" + ((int) i) + " tagType=" + ((int) m22979a) + " formatCode=" + ((int) m22979a4) + " componentCount=" + m22978b2);
                        }
                        int i2 = m22978b2 + f13208b[m22979a4];
                        if (i2 <= 4) {
                            int i3 = m22987d + 8;
                            if (i3 < 0 || i3 > c4277b.m22976d()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) m22979a));
                                }
                            } else if (i2 >= 0 && i2 + i3 <= c4277b.m22976d()) {
                                return c4277b.m22979a(i3);
                            } else {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) m22979a));
                                }
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) m22979a4));
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Negative tiff component count");
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) m22979a4));
                }
            }
        }
        return -1;
    }

    /* renamed from: k */
    private int m22980k(Reader reader, byte[] bArr, int i) {
        int mo22973b = reader.mo22973b(bArr, i);
        if (mo22973b == i) {
            if (m22983h(bArr, i)) {
                return m22981j(new C4277b(bArr, i));
            }
            if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            return -1;
        } else if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
            return -1;
        } else {
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + mo22973b);
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public ImageHeaderParser.ImageType mo22907a(ByteBuffer byteBuffer) {
        return m22985f(new C4276a((ByteBuffer) C4382j.m22719d(byteBuffer)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: b */
    public ImageHeaderParser.ImageType mo22906b(InputStream inputStream) {
        return m22985f(new C4278c((InputStream) C4382j.m22719d(inputStream)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: c */
    public int mo22905c(InputStream inputStream, AbstractC4091b abstractC4091b) {
        return m22986e(new C4278c((InputStream) C4382j.m22719d(inputStream)), (AbstractC4091b) C4382j.m22719d(abstractC4091b));
    }
}
