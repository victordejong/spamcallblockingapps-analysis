package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.p116g.C3643j;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser.class */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: a */
    static final byte[] f14198a = "Exif����".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b */
    private static final int[] f14199b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader.class */
    public interface Reader {

        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException.class */
        public static final class EndOfFileException extends IOException {
            EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        /* renamed from: a */
        int mo37293a(byte[] bArr, int i) throws IOException;

        /* renamed from: a */
        long mo37294a(long j) throws IOException;

        /* renamed from: a */
        short mo37295a() throws IOException;

        /* renamed from: b */
        int mo37292b() throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$a.class */
    static final class C3847a implements Reader {

        /* renamed from: a */
        private final ByteBuffer f14200a;

        C3847a(ByteBuffer byteBuffer) {
            this.f14200a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public final int mo37293a(byte[] bArr, int i) {
            int min = Math.min(i, this.f14200a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f14200a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public final long mo37294a(long j) {
            int min = (int) Math.min(this.f14200a.remaining(), j);
            ByteBuffer byteBuffer = this.f14200a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public final short mo37295a() throws Reader.EndOfFileException {
            if (this.f14200a.remaining() > 0) {
                return (short) (this.f14200a.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: b */
        public final int mo37292b() throws Reader.EndOfFileException {
            return (mo37295a() << 8) | mo37295a();
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$b.class */
    public static final class C3848b {

        /* renamed from: a */
        final ByteBuffer f14201a;

        C3848b(byte[] bArr, int i) {
            this.f14201a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: a */
        private boolean m37297a(int i, int i2) {
            return this.f14201a.remaining() - i >= i2;
        }

        /* renamed from: a */
        final int m37298a(int i) {
            if (m37297a(i, 4)) {
                return this.f14201a.getInt(i);
            }
            return -1;
        }

        /* renamed from: b */
        final short m37296b(int i) {
            if (m37297a(i, 2)) {
                return this.f14201a.getShort(i);
            }
            return (short) -1;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$c.class */
    static final class C3849c implements Reader {

        /* renamed from: a */
        private final InputStream f14202a;

        C3849c(InputStream inputStream) {
            this.f14202a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public final int mo37293a(byte[] bArr, int i) throws IOException {
            int i2;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i2 = i4;
                if (i3 >= i) {
                    break;
                }
                i4 = this.f14202a.read(bArr, i3, i - i3);
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v19 */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public final long mo37294a(long j) throws IOException {
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
                char skip = this.f14202a.skip(c);
                if (skip <= 0) {
                    if (this.f14202a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                c2 = c - skip;
            }
            return j - c;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public final short mo37295a() throws IOException {
            int read = this.f14202a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: b */
        public final int mo37292b() throws IOException {
            return (mo37295a() << 8) | mo37295a();
        }
    }

    /* renamed from: a */
    private int m37302a(Reader reader, AbstractC3707b abstractC3707b) throws IOException {
        int i;
        try {
            int mo37292b = reader.mo37292b();
            if (!((mo37292b & 65496) == 65496 || mo37292b == 19789 || mo37292b == 18761)) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            int m37299b = m37299b(reader);
            if (m37299b == -1) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            byte[] bArr = (byte[]) abstractC3707b.mo37474a(m37299b, byte[].class);
            int mo37293a = reader.mo37293a(bArr, m37299b);
            if (mo37293a != m37299b) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    StringBuilder sb = new StringBuilder("Unable to read exif segment data, length: ");
                    sb.append(m37299b);
                    sb.append(", actually read: ");
                    sb.append(mo37293a);
                }
            } else if (m37300a(bArr, m37299b)) {
                i = m37301a(new C3848b(bArr, m37299b));
                abstractC3707b.mo37470a((AbstractC3707b) bArr);
                return i;
            } else {
                Log.isLoggable("DfltImageHeaderParser", 3);
            }
            i = -1;
            abstractC3707b.mo37470a((AbstractC3707b) bArr);
            return i;
        } catch (Reader.EndOfFileException e) {
            return -1;
        }
    }

    /* renamed from: a */
    private static int m37301a(C3848b c3848b) {
        ByteOrder byteOrder;
        short m37296b = c3848b.m37296b(6);
        if (m37296b == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (m37296b != 19789) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        c3848b.f14201a.order(byteOrder);
        int m37298a = c3848b.m37298a(10) + 6;
        short m37296b2 = c3848b.m37296b(m37298a);
        for (int i = 0; i < m37296b2; i++) {
            int i2 = m37298a + 2 + (i * 12);
            short m37296b3 = c3848b.m37296b(i2);
            if (m37296b3 == 274) {
                short m37296b4 = c3848b.m37296b(i2 + 2);
                if (m37296b4 <= 0 || m37296b4 > 12) {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                } else {
                    int m37298a2 = c3848b.m37298a(i2 + 4);
                    if (m37298a2 < 0) {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                    } else {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            StringBuilder sb = new StringBuilder("Got tagIndex=");
                            sb.append(i);
                            sb.append(" tagType=");
                            sb.append((int) m37296b3);
                            sb.append(" formatCode=");
                            sb.append((int) m37296b4);
                            sb.append(" componentCount=");
                            sb.append(m37298a2);
                        }
                        int i3 = m37298a2 + f14199b[m37296b4];
                        if (i3 > 4) {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                        } else {
                            int i4 = i2 + 8;
                            if (i4 < 0 || i4 > c3848b.f14201a.remaining()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    StringBuilder sb2 = new StringBuilder("Illegal tagValueOffset=");
                                    sb2.append(i4);
                                    sb2.append(" tagType=");
                                    sb2.append((int) m37296b3);
                                }
                            } else if (i3 >= 0 && i3 + i4 <= c3848b.f14201a.remaining()) {
                                return c3848b.m37296b(i4);
                            } else {
                                Log.isLoggable("DfltImageHeaderParser", 3);
                            }
                        }
                    }
                }
            }
        }
        return -1;
    }

    /* renamed from: a */
    private static ImageHeaderParser.ImageType m37303a(Reader reader) throws IOException {
        try {
            int mo37292b = reader.mo37292b();
            if (mo37292b == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int mo37295a = (mo37292b << 8) | reader.mo37295a();
            if (mo37295a == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int mo37295a2 = (mo37295a << 8) | reader.mo37295a();
            if (mo37295a2 == -1991225785) {
                reader.mo37294a(21L);
                try {
                    return reader.mo37295a() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException e) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            } else if (mo37295a2 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            } else {
                reader.mo37294a(4L);
                if (((reader.mo37292b() << 16) | reader.mo37292b()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int mo37292b2 = (reader.mo37292b() << 16) | reader.mo37292b();
                if ((mo37292b2 & (-256)) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i = mo37292b2 & 255;
                if (i == 88) {
                    reader.mo37294a(4L);
                    return (reader.mo37295a() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                } else if (i != 76) {
                    return ImageHeaderParser.ImageType.WEBP;
                } else {
                    reader.mo37294a(4L);
                    return (reader.mo37295a() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                }
            }
        } catch (Reader.EndOfFileException e2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    /* renamed from: a */
    private static boolean m37300a(byte[] bArr, int i) {
        boolean z = bArr != null && i > f14198a.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = f14198a;
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

    /* renamed from: b */
    private static int m37299b(Reader reader) throws IOException {
        while (reader.mo37295a() == 255) {
            short mo37295a = reader.mo37295a();
            if (mo37295a == 218) {
                return -1;
            }
            if (mo37295a == 217) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            int mo37292b = reader.mo37292b() - 2;
            if (mo37295a == 225) {
                return mo37292b;
            }
            long j = mo37292b;
            long mo37294a = reader.mo37294a(j);
            if (mo37294a != j) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                StringBuilder sb = new StringBuilder("Unable to skip enough data, type: ");
                sb.append((int) mo37295a);
                sb.append(", wanted to skip: ");
                sb.append(mo37292b);
                sb.append(", but actually skipped: ");
                sb.append(mo37294a);
                return -1;
            }
        }
        Log.isLoggable("DfltImageHeaderParser", 3);
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final int mo37264a(InputStream inputStream, AbstractC3707b abstractC3707b) throws IOException {
        return m37302a(new C3849c((InputStream) C3643j.m37588a(inputStream, "Argument must not be null")), (AbstractC3707b) C3643j.m37588a(abstractC3707b, "Argument must not be null"));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final ImageHeaderParser.ImageType mo37265a(InputStream inputStream) throws IOException {
        return m37303a(new C3849c((InputStream) C3643j.m37588a(inputStream, "Argument must not be null")));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final ImageHeaderParser.ImageType mo37263a(ByteBuffer byteBuffer) throws IOException {
        return m37303a(new C3847a((ByteBuffer) C3643j.m37588a(byteBuffer, "Argument must not be null")));
    }
}
