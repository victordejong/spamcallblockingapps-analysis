package com.bumptech.glide.load.resource.bitmap;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/ImageHeaderParser.class */
public final class ImageHeaderParser {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f3594a;
    private static final int[] c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: b  reason: collision with root package name */
    final b f3595b;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType.class */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        PNG_A(true),
        PNG(false),
        UNKNOWN(false);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f3596a;

        ImageType(boolean z) {
            this.f3596a = z;
        }

        public final boolean hasAlpha() {
            return this.f3596a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final ByteBuffer f3597a;

        public a(byte[] bArr) {
            this.f3597a = ByteBuffer.wrap(bArr);
            this.f3597a.order(ByteOrder.BIG_ENDIAN);
        }

        public final int a() {
            return this.f3597a.array().length;
        }

        public final int a(int i) {
            return this.f3597a.getInt(i);
        }

        public final short b(int i) {
            return this.f3597a.getShort(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final InputStream f3598a;

        public b(InputStream inputStream) {
            this.f3598a = inputStream;
        }

        public final int a() {
            return ((this.f3598a.read() << 8) & 65280) | (this.f3598a.read() & 255);
        }

        public final int a(byte[] bArr) {
            int read;
            int length = bArr.length;
            while (length > 0 && (read = this.f3598a.read(bArr, bArr.length - length, length)) != -1) {
                length -= read;
            }
            return bArr.length - length;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r0v14 */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long a(long r6) {
            /*
                r5 = this;
                r0 = 0
                r8 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x000c
                r0 = r8
                r6 = r0
            L_0x000a:
                r0 = r6
                return r0
            L_0x000c:
                r0 = r6
                r8 = r0
            L_0x000e:
                r0 = r8
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x003f
                r0 = r5
                java.io.InputStream r0 = r0.f3598a
                r1 = r8
                long r0 = r0.skip(r1)
                r10 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x002d
                r0 = r8
                r1 = r10
                long r0 = r0 - r1
                r8 = r0
                goto L_0x000e
            L_0x002d:
                r0 = r5
                java.io.InputStream r0 = r0.f3598a
                int r0 = r0.read()
                r1 = -1
                if (r0 == r1) goto L_0x003f
                r0 = r8
                r1 = 1
                long r0 = r0 - r1
                r8 = r0
                goto L_0x000e
            L_0x003f:
                r0 = r6
                r1 = r8
                long r0 = r0 - r1
                r6 = r0
                goto L_0x000a
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.b.a(long):long");
        }

        public final short b() {
            return (short) (this.f3598a.read() & 255);
        }
    }

    static {
        byte[] bArr = new byte[0];
        try {
            bArr = "Exif����".getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
        }
        f3594a = bArr;
    }

    public ImageHeaderParser(InputStream inputStream) {
        this.f3595b = new b(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.a r5) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.a(com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$a):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }

    public final ImageType a() {
        ImageType imageType;
        int a2 = this.f3595b.a();
        if (a2 == 65496) {
            imageType = ImageType.JPEG;
        } else {
            int a3 = ((a2 << 16) & (-65536)) | (this.f3595b.a() & 65535);
            if (a3 == -1991225785) {
                this.f3595b.a(21L);
                imageType = this.f3595b.f3598a.read() >= 3 ? ImageType.PNG_A : ImageType.PNG;
            } else {
                imageType = (a3 >> 8) == 4671814 ? ImageType.GIF : ImageType.UNKNOWN;
            }
        }
        return imageType;
    }
}
