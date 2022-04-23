package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser.class */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f7637a = "Exif����".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f7638b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader.class */
    public interface Reader {

        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException.class */
        public static final class EndOfFileException extends IOException {
            EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        int a(byte[] bArr, int i) throws IOException;

        long a(long j) throws IOException;

        short a() throws IOException;

        int b() throws IOException;
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$a.class */
    static final class a implements Reader {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f7639a;

        a(ByteBuffer byteBuffer) {
            this.f7639a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int a(byte[] bArr, int i) {
            int min = Math.min(i, this.f7639a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f7639a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final long a(long j) {
            int min = (int) Math.min(this.f7639a.remaining(), j);
            ByteBuffer byteBuffer = this.f7639a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final short a() throws Reader.EndOfFileException {
            if (this.f7639a.remaining() > 0) {
                return (short) (this.f7639a.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int b() throws Reader.EndOfFileException {
            return (a() << 8) | a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final ByteBuffer f7640a;

        b(byte[] bArr, int i) {
            this.f7640a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        private boolean a(int i, int i2) {
            return this.f7640a.remaining() - i >= i2;
        }

        final int a(int i) {
            if (a(i, 4)) {
                return this.f7640a.getInt(i);
            }
            return -1;
        }

        final short b(int i) {
            if (a(i, 2)) {
                return this.f7640a.getShort(i);
            }
            return (short) -1;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$c.class */
    static final class c implements Reader {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f7641a;

        c(InputStream inputStream) {
            this.f7641a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int a(byte[] bArr, int i) throws IOException {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                i3 = this.f7641a.read(bArr, i2, i - i2);
                i3 = i3;
                if (i3 == -1) {
                    break;
                }
                i2 += i3;
            }
            if (i2 != 0 || i3 != -1) {
                return i2;
            }
            throw new Reader.EndOfFileException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19 */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long a(long r6) throws java.io.IOException {
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
                if (r0 <= 0) goto L_0x003a
                r0 = r5
                java.io.InputStream r0 = r0.f7641a
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
                java.io.InputStream r0 = r0.f7641a
                int r0 = r0.read()
                r1 = -1
                if (r0 == r1) goto L_0x003a
                r0 = 1
                r10 = r0
                goto L_0x0021
            L_0x003a:
                r0 = r6
                r1 = r8
                long r0 = r0 - r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.c.a(long):long");
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final short a() throws IOException {
            int read = this.f7641a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int b() throws IOException {
            return (a() << 8) | a();
        }
    }

    private int a(Reader reader, com.bumptech.glide.load.engine.a.b bVar) throws IOException {
        int i;
        try {
            int b2 = reader.b();
            if (!((b2 & 65496) == 65496 || b2 == 19789 || b2 == 18761)) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            int b3 = b(reader);
            if (b3 == -1) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            byte[] bArr = (byte[]) bVar.a(b3, byte[].class);
            int a2 = reader.a(bArr, b3);
            if (a2 != b3) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    StringBuilder sb = new StringBuilder("Unable to read exif segment data, length: ");
                    sb.append(b3);
                    sb.append(", actually read: ");
                    sb.append(a2);
                }
            } else if (a(bArr, b3)) {
                i = a(new b(bArr, b3));
                bVar.a((com.bumptech.glide.load.engine.a.b) bArr);
                return i;
            } else {
                Log.isLoggable("DfltImageHeaderParser", 3);
            }
            i = -1;
            bVar.a((com.bumptech.glide.load.engine.a.b) bArr);
            return i;
        } catch (Reader.EndOfFileException e) {
            return -1;
        }
    }

    private static int a(b bVar) {
        ByteOrder byteOrder;
        short b2 = bVar.b(6);
        if (b2 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (b2 != 19789) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.f7640a.order(byteOrder);
        int a2 = bVar.a(10) + 6;
        short b3 = bVar.b(a2);
        for (int i = 0; i < b3; i++) {
            int i2 = a2 + 2 + (i * 12);
            short b4 = bVar.b(i2);
            if (b4 == 274) {
                short b5 = bVar.b(i2 + 2);
                if (b5 <= 0 || b5 > 12) {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                } else {
                    int a3 = bVar.a(i2 + 4);
                    if (a3 < 0) {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                    } else {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            StringBuilder sb = new StringBuilder("Got tagIndex=");
                            sb.append(i);
                            sb.append(" tagType=");
                            sb.append((int) b4);
                            sb.append(" formatCode=");
                            sb.append((int) b5);
                            sb.append(" componentCount=");
                            sb.append(a3);
                        }
                        int i3 = a3 + f7638b[b5];
                        if (i3 > 4) {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                        } else {
                            int i4 = i2 + 8;
                            if (i4 < 0 || i4 > bVar.f7640a.remaining()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    StringBuilder sb2 = new StringBuilder("Illegal tagValueOffset=");
                                    sb2.append(i4);
                                    sb2.append(" tagType=");
                                    sb2.append((int) b4);
                                }
                            } else if (i3 >= 0 && i3 + i4 <= bVar.f7640a.remaining()) {
                                return bVar.b(i4);
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

    private static ImageHeaderParser.ImageType a(Reader reader) throws IOException {
        try {
            int b2 = reader.b();
            if (b2 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int a2 = (b2 << 8) | reader.a();
            if (a2 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int a3 = (a2 << 8) | reader.a();
            if (a3 == -1991225785) {
                reader.a(21L);
                try {
                    return reader.a() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException e) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            } else if (a3 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            } else {
                reader.a(4L);
                if (((reader.b() << 16) | reader.b()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int b3 = (reader.b() << 16) | reader.b();
                if ((b3 & (-256)) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i = b3 & 255;
                if (i == 88) {
                    reader.a(4L);
                    return (reader.a() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                } else if (i != 76) {
                    return ImageHeaderParser.ImageType.WEBP;
                } else {
                    reader.a(4L);
                    return (reader.a() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                }
            }
        } catch (Reader.EndOfFileException e2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    private static boolean a(byte[] bArr, int i) {
        boolean z = false;
        z = bArr != null && i > f7637a.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = f7637a;
                if (i2 >= bArr2.length || bArr[i2] != bArr2[i2]) {
                    break;
                }
                i2++;
            }
        }
        return z;
    }

    private static int b(Reader reader) throws IOException {
        while (reader.a() == 255) {
            short a2 = reader.a();
            if (a2 == 218) {
                return -1;
            }
            if (a2 == 217) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            int b2 = reader.b() - 2;
            if (a2 == 225) {
                return b2;
            }
            long j = b2;
            long a3 = reader.a(j);
            if (a3 != j) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                StringBuilder sb = new StringBuilder("Unable to skip enough data, type: ");
                sb.append((int) a2);
                sb.append(", wanted to skip: ");
                sb.append(b2);
                sb.append(", but actually skipped: ");
                sb.append(a3);
                return -1;
            }
        }
        Log.isLoggable("DfltImageHeaderParser", 3);
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int a(InputStream inputStream, com.bumptech.glide.load.engine.a.b bVar) throws IOException {
        return a(new c((InputStream) j.a(inputStream, "Argument must not be null")), (com.bumptech.glide.load.engine.a.b) j.a(bVar, "Argument must not be null"));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(InputStream inputStream) throws IOException {
        return a(new c((InputStream) j.a(inputStream, "Argument must not be null")));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) throws IOException {
        return a(new a((ByteBuffer) j.a(byteBuffer, "Argument must not be null")));
    }
}
