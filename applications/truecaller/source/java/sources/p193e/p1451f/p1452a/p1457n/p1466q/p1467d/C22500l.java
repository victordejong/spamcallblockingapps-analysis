package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
/* renamed from: e.f.a.n.q.d.l */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/l.class */
public final class C22500l implements ImageHeaderParser {

    /* renamed from: a */
    public static final byte[] f62370a = "Exif����".getBytes(Charset.forName(StringConstant.UTF8));

    /* renamed from: b */
    public static final int[] f62371b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: e.f.a.n.q.d.l$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/l$a.class */
    public static final class C22501a implements AbstractC22503c {

        /* renamed from: a */
        public final ByteBuffer f62372a;

        public C22501a(ByteBuffer byteBuffer) {
            this.f62372a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l.AbstractC22503c
        /* renamed from: a */
        public int mo8195a() {
            return ((mo8194b() << 8) & 65280) | (mo8194b() & 255);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l.AbstractC22503c
        /* renamed from: b */
        public int mo8194b() {
            if (this.f62372a.remaining() < 1) {
                return -1;
            }
            return this.f62372a.get();
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l.AbstractC22503c
        /* renamed from: c */
        public int mo8193c(byte[] bArr, int i) {
            int min = Math.min(i, this.f62372a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f62372a.get(bArr, 0, min);
            return min;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l.AbstractC22503c
        public long skip(long j) {
            int min = (int) Math.min(this.f62372a.remaining(), j);
            ByteBuffer byteBuffer = this.f62372a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* renamed from: e.f.a.n.q.d.l$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/l$b.class */
    public static final class C22502b {

        /* renamed from: a */
        public final ByteBuffer f62373a;

        public C22502b(byte[] bArr, int i) {
            this.f62373a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: a */
        public short m8197a(int i) {
            return this.f62373a.remaining() - i >= 2 ? this.f62373a.getShort(i) : (short) -1;
        }

        /* renamed from: b */
        public int m8196b(int i) {
            return this.f62373a.remaining() - i >= 4 ? this.f62373a.getInt(i) : -1;
        }
    }

    /* renamed from: e.f.a.n.q.d.l$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/l$c.class */
    public interface AbstractC22503c {
        /* renamed from: a */
        int mo8195a() throws IOException;

        /* renamed from: b */
        int mo8194b() throws IOException;

        /* renamed from: c */
        int mo8193c(byte[] bArr, int i) throws IOException;

        long skip(long j) throws IOException;
    }

    /* renamed from: e.f.a.n.q.d.l$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/l$d.class */
    public static final class C22504d implements AbstractC22503c {

        /* renamed from: a */
        public final InputStream f62374a;

        public C22504d(InputStream inputStream) {
            this.f62374a = inputStream;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l.AbstractC22503c
        /* renamed from: a */
        public int mo8195a() throws IOException {
            return ((this.f62374a.read() << 8) & 65280) | (this.f62374a.read() & 255);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l.AbstractC22503c
        /* renamed from: b */
        public int mo8194b() throws IOException {
            return this.f62374a.read();
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l.AbstractC22503c
        /* renamed from: c */
        public int mo8193c(byte[] bArr, int i) throws IOException {
            int i2;
            int read;
            int i3 = i;
            while (true) {
                i2 = i3;
                if (i2 <= 0 || (read = this.f62374a.read(bArr, i - i2, i2)) == -1) {
                    break;
                }
                i3 = i2 - read;
            }
            return i - i2;
        }

        /* renamed from: d */
        public short m8192d() throws IOException {
            return (short) (this.f62374a.read() & 255);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v19 */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l.AbstractC22503c
        public long skip(long j) throws IOException {
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
                char skip = this.f62374a.skip(c);
                if (skip <= 0) {
                    if (this.f62374a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                c2 = c - skip;
            }
            return j - c;
        }
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public ImageHeaderParser.ImageType mo8178a(InputStream inputStream) throws IOException {
        return m8199d(new C22504d(inputStream));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: b */
    public int mo8177b(InputStream inputStream, AbstractC22301b abstractC22301b) throws IOException {
        int i;
        int i2;
        C22504d c22504d = new C22504d(inputStream);
        Objects.requireNonNull(abstractC22301b, "Argument must not be null");
        int mo8195a = c22504d.mo8195a();
        if (!((mo8195a & 65496) == 65496 || mo8195a == 19789 || mo8195a == 18761)) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            i = -1;
        } else {
            while (true) {
                if (c22504d.m8192d() == 255) {
                    short m8192d = c22504d.m8192d();
                    if (m8192d == 218) {
                        break;
                    } else if (m8192d != 217) {
                        int mo8195a2 = c22504d.mo8195a() - 2;
                        i2 = mo8195a2;
                        if (m8192d == 225) {
                            break;
                        }
                        long j = mo8195a2;
                        if (c22504d.skip(j) != j) {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                            break;
                        }
                    } else {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                        break;
                    }
                } else {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                    break;
                }
            }
            i2 = -1;
            if (i2 == -1) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                i = -1;
            } else {
                byte[] bArr = (byte[]) abstractC22301b.mo8337c(i2, byte[].class);
                try {
                    i = m8198e(c22504d, bArr, i2);
                } finally {
                    abstractC22301b.put(bArr);
                }
            }
        }
        return i;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: c */
    public ImageHeaderParser.ImageType mo8176c(ByteBuffer byteBuffer) throws IOException {
        return m8199d(new C22501a(byteBuffer));
    }

    /* renamed from: d */
    public final ImageHeaderParser.ImageType m8199d(AbstractC22503c abstractC22503c) throws IOException {
        int mo8195a = abstractC22503c.mo8195a();
        if (mo8195a == 65496) {
            return ImageHeaderParser.ImageType.JPEG;
        }
        int mo8195a2 = ((mo8195a << 16) & (-65536)) | (abstractC22503c.mo8195a() & 65535);
        if (mo8195a2 == -1991225785) {
            abstractC22503c.skip(21L);
            return abstractC22503c.mo8194b() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
        } else if ((mo8195a2 >> 8) == 4671814) {
            return ImageHeaderParser.ImageType.GIF;
        } else {
            if (mo8195a2 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            abstractC22503c.skip(4L);
            if ((((abstractC22503c.mo8195a() << 16) & (-65536)) | (abstractC22503c.mo8195a() & 65535)) != 1464156752) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int mo8195a3 = ((abstractC22503c.mo8195a() << 16) & (-65536)) | (abstractC22503c.mo8195a() & 65535);
            if ((mo8195a3 & (-256)) != 1448097792) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i = mo8195a3 & 255;
            if (i == 88) {
                abstractC22503c.skip(4L);
                return (abstractC22503c.mo8194b() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            } else if (i != 76) {
                return ImageHeaderParser.ImageType.WEBP;
            } else {
                abstractC22503c.skip(4L);
                return (abstractC22503c.mo8194b() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
        }
    }

    /* renamed from: e */
    public final int m8198e(AbstractC22503c abstractC22503c, byte[] bArr, int i) throws IOException {
        ByteOrder byteOrder;
        short s;
        if (abstractC22503c.mo8193c(bArr, i) != i) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            return -1;
        }
        boolean z = bArr != null && i > f62370a.length;
        boolean z2 = z;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = f62370a;
                z2 = z;
                if (i2 >= bArr2.length) {
                    break;
                } else if (bArr[i2] != bArr2[i2]) {
                    z2 = false;
                    break;
                } else {
                    i2++;
                }
            }
        }
        if (!z2) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            return -1;
        }
        C22502b c22502b = new C22502b(bArr, i);
        short m8197a = c22502b.m8197a(6);
        if (m8197a == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (m8197a != 19789) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        c22502b.f62373a.order(byteOrder);
        int m8196b = c22502b.m8196b(10) + 6;
        short m8197a2 = c22502b.m8197a(m8196b);
        int i3 = 0;
        while (true) {
            s = -1;
            if (i3 >= m8197a2) {
                break;
            }
            int i4 = (i3 * 12) + m8196b + 2;
            if (c22502b.m8197a(i4) == 274) {
                short m8197a3 = c22502b.m8197a(i4 + 2);
                if (m8197a3 >= 1 && m8197a3 <= 12) {
                    int m8196b2 = c22502b.m8196b(i4 + 4);
                    if (m8196b2 >= 0) {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                        int i5 = m8196b2 + f62371b[m8197a3];
                        if (i5 <= 4) {
                            int i6 = i4 + 8;
                            if (i6 >= 0 && i6 <= c22502b.f62373a.remaining()) {
                                if (i5 >= 0 && i5 + i6 <= c22502b.f62373a.remaining()) {
                                    s = c22502b.m8197a(i6);
                                    break;
                                }
                                Log.isLoggable("DfltImageHeaderParser", 3);
                            } else {
                                Log.isLoggable("DfltImageHeaderParser", 3);
                            }
                        } else {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                        }
                    } else {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                    }
                } else {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                }
            }
            i3++;
        }
        return s;
    }
}
