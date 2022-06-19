package p020b.p059l.p060a;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
/* renamed from: b.l.a.a */
/* loaded from: classes-dex2jar.jar:b/l/a/a.class */
public class C1744a {

    /* renamed from: A */
    private static SimpleDateFormat f6479A;

    /* renamed from: E */
    private static final C1748d[] f6483E;

    /* renamed from: F */
    private static final C1748d[] f6484F;

    /* renamed from: G */
    private static final C1748d[] f6485G;

    /* renamed from: H */
    private static final C1748d[] f6486H;

    /* renamed from: I */
    private static final C1748d[] f6487I;

    /* renamed from: K */
    private static final C1748d[] f6489K;

    /* renamed from: L */
    private static final C1748d[] f6490L;

    /* renamed from: M */
    private static final C1748d[] f6491M;

    /* renamed from: N */
    private static final C1748d[] f6492N;

    /* renamed from: O */
    static final C1748d[][] f6493O;

    /* renamed from: S */
    private static final HashMap<Integer, C1748d>[] f6497S;

    /* renamed from: T */
    private static final HashMap<String, C1748d>[] f6498T;

    /* renamed from: W */
    static final Charset f6501W;

    /* renamed from: X */
    static final byte[] f6502X;

    /* renamed from: Y */
    private static final byte[] f6503Y;

    /* renamed from: Z */
    private static final Pattern f6504Z;

    /* renamed from: a0 */
    private static final Pattern f6506a0;

    /* renamed from: b0 */
    private String f6532b0;

    /* renamed from: c0 */
    private FileDescriptor f6533c0;

    /* renamed from: d0 */
    private AssetManager.AssetInputStream f6534d0;

    /* renamed from: e0 */
    private int f6535e0;

    /* renamed from: f0 */
    private boolean f6536f0;

    /* renamed from: g0 */
    private final HashMap<String, C1747c>[] f6537g0;

    /* renamed from: h0 */
    private Set<Integer> f6538h0;

    /* renamed from: i0 */
    private ByteOrder f6539i0;

    /* renamed from: j0 */
    private boolean f6540j0;

    /* renamed from: k0 */
    private boolean f6541k0;

    /* renamed from: l0 */
    private boolean f6542l0;

    /* renamed from: m0 */
    private int f6543m0;

    /* renamed from: n0 */
    private int f6544n0;

    /* renamed from: o0 */
    private byte[] f6545o0;

    /* renamed from: p0 */
    private int f6546p0;

    /* renamed from: q0 */
    private int f6547q0;

    /* renamed from: r0 */
    private int f6548r0;

    /* renamed from: s0 */
    private int f6549s0;

    /* renamed from: t0 */
    private int f6550t0;

    /* renamed from: u0 */
    private int f6551u0;

    /* renamed from: v0 */
    private boolean f6552v0;

    /* renamed from: w0 */
    private boolean f6553w0;

    /* renamed from: a */
    private static final boolean f6505a = Log.isLoggable("ExifInterface", 3);

    /* renamed from: b */
    private static final List<Integer> f6507b = Arrays.asList(1, 6, 3, 8);

    /* renamed from: c */
    private static final List<Integer> f6508c = Arrays.asList(2, 7, 4, 5);

    /* renamed from: d */
    public static final int[] f6509d = {8, 8, 8};

    /* renamed from: e */
    public static final int[] f6510e = {4};

    /* renamed from: f */
    public static final int[] f6511f = {8};

    /* renamed from: g */
    static final byte[] f6512g = {-1, -40, -1};

    /* renamed from: h */
    private static final byte[] f6513h = {102, 116, 121, 112};

    /* renamed from: i */
    private static final byte[] f6514i = {109, 105, 102, 49};

    /* renamed from: j */
    private static final byte[] f6515j = {104, 101, 105, 99};

    /* renamed from: k */
    private static final byte[] f6516k = {79, 76, 89, 77, 80, 0};

    /* renamed from: l */
    private static final byte[] f6517l = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* renamed from: m */
    private static final byte[] f6518m = {-119, 80, 78, 71, 13, 10, 26, 10};

    /* renamed from: n */
    private static final byte[] f6519n = {101, 88, 73, 102};

    /* renamed from: o */
    private static final byte[] f6520o = {73, 72, 68, 82};

    /* renamed from: p */
    private static final byte[] f6521p = {73, 69, 78, 68};

    /* renamed from: q */
    private static final byte[] f6522q = {82, 73, 70, 70};

    /* renamed from: r */
    private static final byte[] f6523r = {87, 69, 66, 80};

    /* renamed from: s */
    private static final byte[] f6524s = {69, 88, 73, 70};

    /* renamed from: t */
    private static final byte[] f6525t = {-99, 1, 42};

    /* renamed from: u */
    private static final byte[] f6526u = "VP8X".getBytes(Charset.defaultCharset());

    /* renamed from: v */
    private static final byte[] f6527v = "VP8L".getBytes(Charset.defaultCharset());

    /* renamed from: w */
    private static final byte[] f6528w = "VP8 ".getBytes(Charset.defaultCharset());

    /* renamed from: x */
    private static final byte[] f6529x = "ANIM".getBytes(Charset.defaultCharset());

    /* renamed from: y */
    private static final byte[] f6530y = "ANMF".getBytes(Charset.defaultCharset());

    /* renamed from: z */
    private static final byte[] f6531z = "XMP ".getBytes(Charset.defaultCharset());

    /* renamed from: B */
    static final String[] f6480B = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};

    /* renamed from: C */
    static final int[] f6481C = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};

    /* renamed from: D */
    static final byte[] f6482D = {65, 83, 67, 73, 73, 0, 0, 0};

    /* renamed from: J */
    private static final C1748d f6488J = new C1748d("StripOffsets", 273, 3);

    /* renamed from: P */
    private static final C1748d[] f6494P = {new C1748d("SubIFDPointer", 330, 4), new C1748d("ExifIFDPointer", 34665, 4), new C1748d("GPSInfoIFDPointer", 34853, 4), new C1748d("InteroperabilityIFDPointer", 40965, 4), new C1748d("CameraSettingsIFDPointer", 8224, 1), new C1748d("ImageProcessingIFDPointer", 8256, 1)};

    /* renamed from: Q */
    private static final C1748d f6495Q = new C1748d("JPEGInterchangeFormat", 513, 4);

    /* renamed from: R */
    private static final C1748d f6496R = new C1748d("JPEGInterchangeFormatLength", 514, 4);

    /* renamed from: U */
    private static final HashSet<String> f6499U = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));

    /* renamed from: V */
    private static final HashMap<Integer, Integer> f6500V = new HashMap<>();

    /* renamed from: b.l.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$a.class */
    public class C1745a extends MediaDataSource {

        /* renamed from: d */
        long f6554d;

        /* renamed from: e */
        final /* synthetic */ C1746b f6555e;

        C1745a(C1746b c1746b) {
            C1744a.this = r4;
            this.f6555e = c1746b;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // android.media.MediaDataSource
        public long getSize() {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j, byte[] bArr, int i, int i2) {
            if (i2 == 0) {
                return 0;
            }
            if (j < 0) {
                return -1;
            }
            try {
                long j2 = this.f6554d;
                if (j2 != j) {
                    if (j2 >= 0 && j >= j2 + this.f6555e.available()) {
                        return -1;
                    }
                    this.f6555e.m28984g(j);
                    this.f6554d = j;
                }
                int i3 = i2;
                if (i2 > this.f6555e.available()) {
                    i3 = this.f6555e.available();
                }
                int read = this.f6555e.read(bArr, i, i3);
                if (read >= 0) {
                    this.f6554d += read;
                    return read;
                }
            } catch (IOException e) {
            }
            this.f6554d = -1L;
            return -1;
        }
    }

    /* renamed from: b.l.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$b.class */
    public static class C1746b extends InputStream implements DataInput {

        /* renamed from: d */
        private static final ByteOrder f6557d = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: e */
        private static final ByteOrder f6558e = ByteOrder.BIG_ENDIAN;

        /* renamed from: f */
        private DataInputStream f6559f;

        /* renamed from: g */
        private ByteOrder f6560g;

        /* renamed from: h */
        final int f6561h;

        /* renamed from: i */
        int f6562i;

        public C1746b(InputStream inputStream) {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        C1746b(InputStream inputStream, ByteOrder byteOrder) {
            this.f6560g = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f6559f = dataInputStream;
            int available = dataInputStream.available();
            this.f6561h = available;
            this.f6562i = 0;
            this.f6559f.mark(available);
            this.f6560g = byteOrder;
        }

        public C1746b(byte[] bArr) {
            this(new ByteArrayInputStream(bArr));
        }

        /* renamed from: a */
        public int m28987a() {
            return this.f6561h;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f6559f.available();
        }

        /* renamed from: e */
        public int m28986e() {
            return this.f6562i;
        }

        /* renamed from: f */
        public long m28985f() {
            return readInt() & 4294967295L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* renamed from: g */
        public void m28984g(long j) {
            char c;
            int i = this.f6562i;
            if (i > j) {
                this.f6562i = 0;
                this.f6559f.reset();
                this.f6559f.mark(this.f6561h);
                c = j;
            } else {
                c = j - i;
            }
            int i2 = c;
            if (skipBytes(i2) == i2) {
                return;
            }
            throw new IOException("Couldn't seek up to the byteCount");
        }

        /* renamed from: k */
        public void m28983k(ByteOrder byteOrder) {
            this.f6560g = byteOrder;
        }

        @Override // java.io.InputStream
        public int read() {
            this.f6562i++;
            return this.f6559f.read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = this.f6559f.read(bArr, i, i2);
            this.f6562i += read;
            return read;
        }

        @Override // java.io.DataInput
        public boolean readBoolean() {
            this.f6562i++;
            return this.f6559f.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() {
            int i = this.f6562i + 1;
            this.f6562i = i;
            if (i <= this.f6561h) {
                int read = this.f6559f.read();
                if (read < 0) {
                    throw new EOFException();
                }
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() {
            this.f6562i += 2;
            return this.f6559f.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) {
            int length = this.f6562i + bArr.length;
            this.f6562i = length;
            if (length <= this.f6561h) {
                if (this.f6559f.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) {
            int i3 = this.f6562i + i2;
            this.f6562i = i3;
            if (i3 <= this.f6561h) {
                if (this.f6559f.read(bArr, i, i2) != i2) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int readInt() {
            int i = this.f6562i + 4;
            this.f6562i = i;
            if (i <= this.f6561h) {
                int read = this.f6559f.read();
                int read2 = this.f6559f.read();
                int read3 = this.f6559f.read();
                int read4 = this.f6559f.read();
                if ((read | read2 | read3 | read4) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f6560g;
                if (byteOrder == f6557d) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f6558e) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                throw new IOException("Invalid byte order: " + this.f6560g);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() {
            int i = this.f6562i + 8;
            this.f6562i = i;
            if (i <= this.f6561h) {
                int read = this.f6559f.read();
                int read2 = this.f6559f.read();
                int read3 = this.f6559f.read();
                int read4 = this.f6559f.read();
                int read5 = this.f6559f.read();
                int read6 = this.f6559f.read();
                int read7 = this.f6559f.read();
                int read8 = this.f6559f.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f6560g;
                if (byteOrder == f6557d) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f6558e) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                throw new IOException("Invalid byte order: " + this.f6560g);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() {
            int i = this.f6562i + 2;
            this.f6562i = i;
            if (i <= this.f6561h) {
                int read = this.f6559f.read();
                int read2 = this.f6559f.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f6560g;
                if (byteOrder == f6557d) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == f6558e) {
                    return (short) ((read << 8) + read2);
                }
                throw new IOException("Invalid byte order: " + this.f6560g);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() {
            this.f6562i += 2;
            return this.f6559f.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() {
            this.f6562i++;
            return this.f6559f.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() {
            int i = this.f6562i + 2;
            this.f6562i = i;
            if (i <= this.f6561h) {
                int read = this.f6559f.read();
                int read2 = this.f6559f.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f6560g;
                if (byteOrder == f6557d) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == f6558e) {
                    return (read << 8) + read2;
                }
                throw new IOException("Invalid byte order: " + this.f6560g);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int skipBytes(int i) {
            int min = Math.min(i, this.f6561h - this.f6562i);
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= min) {
                    this.f6562i += i3;
                    return i3;
                }
                i2 = i3 + this.f6559f.skipBytes(min - i3);
            }
        }
    }

    /* renamed from: b.l.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$c.class */
    public static class C1747c {

        /* renamed from: a */
        public final int f6563a;

        /* renamed from: b */
        public final int f6564b;

        /* renamed from: c */
        public final long f6565c;

        /* renamed from: d */
        public final byte[] f6566d;

        C1747c(int i, int i2, long j, byte[] bArr) {
            this.f6563a = i;
            this.f6564b = i2;
            this.f6565c = j;
            this.f6566d = bArr;
        }

        C1747c(int i, int i2, byte[] bArr) {
            this(i, i2, -1L, bArr);
        }

        /* renamed from: a */
        public static C1747c m28982a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(C1744a.f6501W);
            return new C1747c(2, bytes.length, bytes);
        }

        /* renamed from: b */
        public static C1747c m28981b(long j, ByteOrder byteOrder) {
            return m28980c(new long[]{j}, byteOrder);
        }

        /* renamed from: c */
        public static C1747c m28980c(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1744a.f6481C[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j : jArr) {
                wrap.putInt((int) j);
            }
            return new C1747c(4, jArr.length, wrap.array());
        }

        /* renamed from: d */
        public static C1747c m28979d(C1749e c1749e, ByteOrder byteOrder) {
            return m28978e(new C1749e[]{c1749e}, byteOrder);
        }

        /* renamed from: e */
        public static C1747c m28978e(C1749e[] c1749eArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1744a.f6481C[5] * c1749eArr.length]);
            wrap.order(byteOrder);
            for (C1749e c1749e : c1749eArr) {
                wrap.putInt((int) c1749e.f6571a);
                wrap.putInt((int) c1749e.f6572b);
            }
            return new C1747c(5, c1749eArr.length, wrap.array());
        }

        /* renamed from: f */
        public static C1747c m28977f(int i, ByteOrder byteOrder) {
            return m28976g(new int[]{i}, byteOrder);
        }

        /* renamed from: g */
        public static C1747c m28976g(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1744a.f6481C[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i : iArr) {
                wrap.putShort((short) i);
            }
            return new C1747c(3, iArr.length, wrap.array());
        }

        /* renamed from: h */
        public double m28975h(ByteOrder byteOrder) {
            Object m28972k = m28972k(byteOrder);
            if (m28972k != null) {
                if (m28972k instanceof String) {
                    return Double.parseDouble((String) m28972k);
                }
                if (m28972k instanceof long[]) {
                    long[] jArr = (long[]) m28972k;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return jArr[0];
                } else if (m28972k instanceof int[]) {
                    int[] iArr = (int[]) m28972k;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                } else if (m28972k instanceof double[]) {
                    double[] dArr = (double[]) m28972k;
                    if (dArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return dArr[0];
                } else if (!(m28972k instanceof C1749e[])) {
                    throw new NumberFormatException("Couldn't find a double value");
                } else {
                    C1749e[] c1749eArr = (C1749e[]) m28972k;
                    if (c1749eArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return c1749eArr[0].m28970a();
                }
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        /* renamed from: i */
        public int m28974i(ByteOrder byteOrder) {
            Object m28972k = m28972k(byteOrder);
            if (m28972k != null) {
                if (m28972k instanceof String) {
                    return Integer.parseInt((String) m28972k);
                }
                if (m28972k instanceof long[]) {
                    long[] jArr = (long[]) m28972k;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return (int) jArr[0];
                } else if (!(m28972k instanceof int[])) {
                    throw new NumberFormatException("Couldn't find a integer value");
                } else {
                    int[] iArr = (int[]) m28972k;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                }
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        /* renamed from: j */
        public String m28973j(ByteOrder byteOrder) {
            Object m28972k = m28972k(byteOrder);
            if (m28972k == null) {
                return null;
            }
            if (m28972k instanceof String) {
                return (String) m28972k;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (m28972k instanceof long[]) {
                long[] jArr = (long[]) m28972k;
                while (i < jArr.length) {
                    sb.append(jArr[i]);
                    int i2 = i + 1;
                    i = i2;
                    if (i2 != jArr.length) {
                        sb.append(",");
                        i = i2;
                    }
                }
                return sb.toString();
            } else if (m28972k instanceof int[]) {
                int[] iArr = (int[]) m28972k;
                int i3 = 0;
                while (i3 < iArr.length) {
                    sb.append(iArr[i3]);
                    int i4 = i3 + 1;
                    i3 = i4;
                    if (i4 != iArr.length) {
                        sb.append(",");
                        i3 = i4;
                    }
                }
                return sb.toString();
            } else if (m28972k instanceof double[]) {
                double[] dArr = (double[]) m28972k;
                int i5 = 0;
                while (i5 < dArr.length) {
                    sb.append(dArr[i5]);
                    int i6 = i5 + 1;
                    i5 = i6;
                    if (i6 != dArr.length) {
                        sb.append(",");
                        i5 = i6;
                    }
                }
                return sb.toString();
            } else if (!(m28972k instanceof C1749e[])) {
                return null;
            } else {
                C1749e[] c1749eArr = (C1749e[]) m28972k;
                int i7 = 0;
                while (i7 < c1749eArr.length) {
                    sb.append(c1749eArr[i7].f6571a);
                    sb.append('/');
                    sb.append(c1749eArr[i7].f6572b);
                    int i8 = i7 + 1;
                    i7 = i8;
                    if (i8 != c1749eArr.length) {
                        sb.append(",");
                        i7 = i8;
                    }
                }
                return sb.toString();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:240:0x03dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        java.lang.Object m28972k(java.nio.ByteOrder r10) {
            /*
                Method dump skipped, instructions count: 1008
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p020b.p059l.p060a.C1744a.C1747c.m28972k(java.nio.ByteOrder):java.lang.Object");
        }

        public String toString() {
            return "(" + C1744a.f6480B[this.f6563a] + ", data length:" + this.f6566d.length + ")";
        }
    }

    /* renamed from: b.l.a.a$d */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$d.class */
    public static class C1748d {

        /* renamed from: a */
        public final int f6567a;

        /* renamed from: b */
        public final String f6568b;

        /* renamed from: c */
        public final int f6569c;

        /* renamed from: d */
        public final int f6570d;

        C1748d(String str, int i, int i2) {
            this.f6568b = str;
            this.f6567a = i;
            this.f6569c = i2;
            this.f6570d = -1;
        }

        C1748d(String str, int i, int i2, int i3) {
            this.f6568b = str;
            this.f6567a = i;
            this.f6569c = i2;
            this.f6570d = i3;
        }

        /* renamed from: a */
        boolean m28971a(int i) {
            int i2;
            int i3 = this.f6569c;
            if (i3 == 7 || i == 7 || i3 == i || (i2 = this.f6570d) == i) {
                return true;
            }
            if ((i3 == 4 || i2 == 4) && i == 3) {
                return true;
            }
            if ((i3 == 9 || i2 == 9) && i == 8) {
                return true;
            }
            return (i3 == 12 || i2 == 12) && i == 11;
        }
    }

    /* renamed from: b.l.a.a$e */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$e.class */
    public static class C1749e {

        /* renamed from: a */
        public final long f6571a;

        /* renamed from: b */
        public final long f6572b;

        C1749e(long j, long j2) {
            if (j2 == 0) {
                this.f6571a = 0L;
                this.f6572b = 1L;
                return;
            }
            this.f6571a = j;
            this.f6572b = j2;
        }

        /* renamed from: a */
        public double m28970a() {
            return this.f6571a / this.f6572b;
        }

        public String toString() {
            return this.f6571a + "/" + this.f6572b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v294, types: [b.l.a.a$d[], b.l.a.a$d[][]] */
    static {
        C1748d[] c1748dArr;
        C1748d[] c1748dArr2 = {new C1748d("NewSubfileType", 254, 4), new C1748d("SubfileType", 255, 4), new C1748d("ImageWidth", 256, 3, 4), new C1748d("ImageLength", 257, 3, 4), new C1748d("BitsPerSample", 258, 3), new C1748d("Compression", 259, 3), new C1748d("PhotometricInterpretation", 262, 3), new C1748d("ImageDescription", 270, 2), new C1748d("Make", 271, 2), new C1748d("Model", 272, 2), new C1748d("StripOffsets", 273, 3, 4), new C1748d("Orientation", 274, 3), new C1748d("SamplesPerPixel", 277, 3), new C1748d("RowsPerStrip", 278, 3, 4), new C1748d("StripByteCounts", 279, 3, 4), new C1748d("XResolution", 282, 5), new C1748d("YResolution", 283, 5), new C1748d("PlanarConfiguration", 284, 3), new C1748d("ResolutionUnit", 296, 3), new C1748d("TransferFunction", 301, 3), new C1748d("Software", 305, 2), new C1748d("DateTime", 306, 2), new C1748d("Artist", 315, 2), new C1748d("WhitePoint", 318, 5), new C1748d("PrimaryChromaticities", 319, 5), new C1748d("SubIFDPointer", 330, 4), new C1748d("JPEGInterchangeFormat", 513, 4), new C1748d("JPEGInterchangeFormatLength", 514, 4), new C1748d("YCbCrCoefficients", 529, 5), new C1748d("YCbCrSubSampling", 530, 3), new C1748d("YCbCrPositioning", 531, 3), new C1748d("ReferenceBlackWhite", 532, 5), new C1748d("Copyright", 33432, 2), new C1748d("ExifIFDPointer", 34665, 4), new C1748d("GPSInfoIFDPointer", 34853, 4), new C1748d("SensorTopBorder", 4, 4), new C1748d("SensorLeftBorder", 5, 4), new C1748d("SensorBottomBorder", 6, 4), new C1748d("SensorRightBorder", 7, 4), new C1748d("ISO", 23, 3), new C1748d("JpgFromRaw", 46, 7), new C1748d("Xmp", 700, 1)};
        f6483E = c1748dArr2;
        C1748d[] c1748dArr3 = {new C1748d("ExposureTime", 33434, 5), new C1748d("FNumber", 33437, 5), new C1748d("ExposureProgram", 34850, 3), new C1748d("SpectralSensitivity", 34852, 2), new C1748d("PhotographicSensitivity", 34855, 3), new C1748d("OECF", 34856, 7), new C1748d("SensitivityType", 34864, 3), new C1748d("StandardOutputSensitivity", 34865, 4), new C1748d("RecommendedExposureIndex", 34866, 4), new C1748d("ISOSpeed", 34867, 4), new C1748d("ISOSpeedLatitudeyyy", 34868, 4), new C1748d("ISOSpeedLatitudezzz", 34869, 4), new C1748d("ExifVersion", 36864, 2), new C1748d("DateTimeOriginal", 36867, 2), new C1748d("DateTimeDigitized", 36868, 2), new C1748d("OffsetTime", 36880, 2), new C1748d("OffsetTimeOriginal", 36881, 2), new C1748d("OffsetTimeDigitized", 36882, 2), new C1748d("ComponentsConfiguration", 37121, 7), new C1748d("CompressedBitsPerPixel", 37122, 5), new C1748d("ShutterSpeedValue", 37377, 10), new C1748d("ApertureValue", 37378, 5), new C1748d("BrightnessValue", 37379, 10), new C1748d("ExposureBiasValue", 37380, 10), new C1748d("MaxApertureValue", 37381, 5), new C1748d("SubjectDistance", 37382, 5), new C1748d("MeteringMode", 37383, 3), new C1748d("LightSource", 37384, 3), new C1748d("Flash", 37385, 3), new C1748d("FocalLength", 37386, 5), new C1748d("SubjectArea", 37396, 3), new C1748d("MakerNote", 37500, 7), new C1748d("UserComment", 37510, 7), new C1748d("SubSecTime", 37520, 2), new C1748d("SubSecTimeOriginal", 37521, 2), new C1748d("SubSecTimeDigitized", 37522, 2), new C1748d("FlashpixVersion", 40960, 7), new C1748d("ColorSpace", 40961, 3), new C1748d("PixelXDimension", 40962, 3, 4), new C1748d("PixelYDimension", 40963, 3, 4), new C1748d("RelatedSoundFile", 40964, 2), new C1748d("InteroperabilityIFDPointer", 40965, 4), new C1748d("FlashEnergy", 41483, 5), new C1748d("SpatialFrequencyResponse", 41484, 7), new C1748d("FocalPlaneXResolution", 41486, 5), new C1748d("FocalPlaneYResolution", 41487, 5), new C1748d("FocalPlaneResolutionUnit", 41488, 3), new C1748d("SubjectLocation", 41492, 3), new C1748d("ExposureIndex", 41493, 5), new C1748d("SensingMethod", 41495, 3), new C1748d("FileSource", 41728, 7), new C1748d("SceneType", 41729, 7), new C1748d("CFAPattern", 41730, 7), new C1748d("CustomRendered", 41985, 3), new C1748d("ExposureMode", 41986, 3), new C1748d("WhiteBalance", 41987, 3), new C1748d("DigitalZoomRatio", 41988, 5), new C1748d("FocalLengthIn35mmFilm", 41989, 3), new C1748d("SceneCaptureType", 41990, 3), new C1748d("GainControl", 41991, 3), new C1748d("Contrast", 41992, 3), new C1748d("Saturation", 41993, 3), new C1748d("Sharpness", 41994, 3), new C1748d("DeviceSettingDescription", 41995, 7), new C1748d("SubjectDistanceRange", 41996, 3), new C1748d("ImageUniqueID", 42016, 2), new C1748d("CameraOwnerName", 42032, 2), new C1748d("BodySerialNumber", 42033, 2), new C1748d("LensSpecification", 42034, 5), new C1748d("LensMake", 42035, 2), new C1748d("LensModel", 42036, 2), new C1748d("Gamma", 42240, 5), new C1748d("DNGVersion", 50706, 1), new C1748d("DefaultCropSize", 50720, 3, 4)};
        f6484F = c1748dArr3;
        C1748d[] c1748dArr4 = {new C1748d("GPSVersionID", 0, 1), new C1748d("GPSLatitudeRef", 1, 2), new C1748d("GPSLatitude", 2, 5), new C1748d("GPSLongitudeRef", 3, 2), new C1748d("GPSLongitude", 4, 5), new C1748d("GPSAltitudeRef", 5, 1), new C1748d("GPSAltitude", 6, 5), new C1748d("GPSTimeStamp", 7, 5), new C1748d("GPSSatellites", 8, 2), new C1748d("GPSStatus", 9, 2), new C1748d("GPSMeasureMode", 10, 2), new C1748d("GPSDOP", 11, 5), new C1748d("GPSSpeedRef", 12, 2), new C1748d("GPSSpeed", 13, 5), new C1748d("GPSTrackRef", 14, 2), new C1748d("GPSTrack", 15, 5), new C1748d("GPSImgDirectionRef", 16, 2), new C1748d("GPSImgDirection", 17, 5), new C1748d("GPSMapDatum", 18, 2), new C1748d("GPSDestLatitudeRef", 19, 2), new C1748d("GPSDestLatitude", 20, 5), new C1748d("GPSDestLongitudeRef", 21, 2), new C1748d("GPSDestLongitude", 22, 5), new C1748d("GPSDestBearingRef", 23, 2), new C1748d("GPSDestBearing", 24, 5), new C1748d("GPSDestDistanceRef", 25, 2), new C1748d("GPSDestDistance", 26, 5), new C1748d("GPSProcessingMethod", 27, 7), new C1748d("GPSAreaInformation", 28, 7), new C1748d("GPSDateStamp", 29, 2), new C1748d("GPSDifferential", 30, 3), new C1748d("GPSHPositioningError", 31, 5)};
        f6485G = c1748dArr4;
        C1748d[] c1748dArr5 = {new C1748d("InteroperabilityIndex", 1, 2)};
        f6486H = c1748dArr5;
        C1748d[] c1748dArr6 = {new C1748d("NewSubfileType", 254, 4), new C1748d("SubfileType", 255, 4), new C1748d("ThumbnailImageWidth", 256, 3, 4), new C1748d("ThumbnailImageLength", 257, 3, 4), new C1748d("BitsPerSample", 258, 3), new C1748d("Compression", 259, 3), new C1748d("PhotometricInterpretation", 262, 3), new C1748d("ImageDescription", 270, 2), new C1748d("Make", 271, 2), new C1748d("Model", 272, 2), new C1748d("StripOffsets", 273, 3, 4), new C1748d("ThumbnailOrientation", 274, 3), new C1748d("SamplesPerPixel", 277, 3), new C1748d("RowsPerStrip", 278, 3, 4), new C1748d("StripByteCounts", 279, 3, 4), new C1748d("XResolution", 282, 5), new C1748d("YResolution", 283, 5), new C1748d("PlanarConfiguration", 284, 3), new C1748d("ResolutionUnit", 296, 3), new C1748d("TransferFunction", 301, 3), new C1748d("Software", 305, 2), new C1748d("DateTime", 306, 2), new C1748d("Artist", 315, 2), new C1748d("WhitePoint", 318, 5), new C1748d("PrimaryChromaticities", 319, 5), new C1748d("SubIFDPointer", 330, 4), new C1748d("JPEGInterchangeFormat", 513, 4), new C1748d("JPEGInterchangeFormatLength", 514, 4), new C1748d("YCbCrCoefficients", 529, 5), new C1748d("YCbCrSubSampling", 530, 3), new C1748d("YCbCrPositioning", 531, 3), new C1748d("ReferenceBlackWhite", 532, 5), new C1748d("Copyright", 33432, 2), new C1748d("ExifIFDPointer", 34665, 4), new C1748d("GPSInfoIFDPointer", 34853, 4), new C1748d("DNGVersion", 50706, 1), new C1748d("DefaultCropSize", 50720, 3, 4)};
        f6487I = c1748dArr6;
        C1748d[] c1748dArr7 = {new C1748d("ThumbnailImage", 256, 7), new C1748d("CameraSettingsIFDPointer", 8224, 4), new C1748d("ImageProcessingIFDPointer", 8256, 4)};
        f6489K = c1748dArr7;
        C1748d[] c1748dArr8 = {new C1748d("PreviewImageStart", 257, 4), new C1748d("PreviewImageLength", 258, 4)};
        f6490L = c1748dArr8;
        C1748d[] c1748dArr9 = {new C1748d("AspectFrame", 4371, 3)};
        f6491M = c1748dArr9;
        C1748d[] c1748dArr10 = {new C1748d("ColorSpace", 55, 3)};
        f6492N = c1748dArr10;
        ?? r0 = {c1748dArr2, c1748dArr3, c1748dArr4, c1748dArr5, c1748dArr6, c1748dArr2, c1748dArr7, c1748dArr8, c1748dArr9, c1748dArr10};
        f6493O = r0;
        f6497S = new HashMap[r0.length];
        f6498T = new HashMap[r0.length];
        Charset forName = Charset.forName("US-ASCII");
        f6501W = forName;
        f6502X = "Exif����".getBytes(forName);
        f6503Y = "http://ns.adobe.com/xap/1.0/��".getBytes(forName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        f6479A = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            C1748d[][] c1748dArr11 = f6493O;
            if (i >= c1748dArr11.length) {
                HashMap<Integer, Integer> hashMap = f6500V;
                C1748d[] c1748dArr12 = f6494P;
                hashMap.put(Integer.valueOf(c1748dArr12[0].f6567a), 5);
                hashMap.put(Integer.valueOf(c1748dArr12[1].f6567a), 1);
                hashMap.put(Integer.valueOf(c1748dArr12[2].f6567a), 2);
                hashMap.put(Integer.valueOf(c1748dArr12[3].f6567a), 3);
                hashMap.put(Integer.valueOf(c1748dArr12[4].f6567a), 7);
                hashMap.put(Integer.valueOf(c1748dArr12[5].f6567a), 8);
                f6504Z = Pattern.compile(".*[1-9].*");
                f6506a0 = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            f6497S[i] = new HashMap<>();
            f6498T[i] = new HashMap<>();
            for (C1748d c1748d : c1748dArr11[i]) {
                f6497S[i].put(Integer.valueOf(c1748d.f6567a), c1748d);
                f6498T[i].put(c1748d.f6568b, c1748d);
            }
            i++;
        }
    }

    public C1744a(InputStream inputStream) {
        this(inputStream, false);
    }

    private C1744a(InputStream inputStream, boolean z) {
        BufferedInputStream bufferedInputStream;
        C1748d[][] c1748dArr = f6493O;
        this.f6537g0 = new HashMap[c1748dArr.length];
        this.f6538h0 = new HashSet(c1748dArr.length);
        this.f6539i0 = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(inputStream, "inputStream cannot be null");
        this.f6532b0 = null;
        if (z) {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream, 5000);
            if (!m28995s(bufferedInputStream2)) {
                Log.w("ExifInterface", "Given data does not follow the structure of an Exif-only data.");
                return;
            }
            this.f6536f0 = true;
            this.f6534d0 = null;
            this.f6533c0 = null;
            bufferedInputStream = bufferedInputStream2;
        } else if (inputStream instanceof AssetManager.AssetInputStream) {
            this.f6534d0 = (AssetManager.AssetInputStream) inputStream;
            this.f6533c0 = null;
            bufferedInputStream = inputStream;
        } else {
            if (inputStream instanceof FileInputStream) {
                FileInputStream fileInputStream = (FileInputStream) inputStream;
                if (m28988z(fileInputStream.getFD())) {
                    this.f6534d0 = null;
                    this.f6533c0 = fileInputStream.getFD();
                    bufferedInputStream = inputStream;
                }
            }
            this.f6534d0 = null;
            this.f6533c0 = null;
            bufferedInputStream = inputStream;
        }
        m29025D(bufferedInputStream);
    }

    /* renamed from: A */
    private boolean m29028A(HashMap hashMap) {
        C1747c c1747c;
        C1747c c1747c2 = (C1747c) hashMap.get("BitsPerSample");
        if (c1747c2 != null) {
            int[] iArr = (int[]) c1747c2.m28972k(this.f6539i0);
            int[] iArr2 = f6509d;
            if (Arrays.equals(iArr2, iArr)) {
                return true;
            }
            if (this.f6535e0 == 3 && (c1747c = (C1747c) hashMap.get("PhotometricInterpretation")) != null) {
                int m28974i = c1747c.m28974i(this.f6539i0);
                if (m28974i == 1 && Arrays.equals(iArr, f6511f)) {
                    return true;
                }
                if (m28974i == 6 && Arrays.equals(iArr, iArr2)) {
                    return true;
                }
            }
        }
        if (f6505a) {
            Log.d("ExifInterface", "Unsupported data type value");
            return false;
        }
        return false;
    }

    /* renamed from: B */
    private boolean m29027B(HashMap hashMap) {
        C1747c c1747c = (C1747c) hashMap.get("ImageLength");
        C1747c c1747c2 = (C1747c) hashMap.get("ImageWidth");
        if (c1747c == null || c1747c2 == null) {
            return false;
        }
        return c1747c.m28974i(this.f6539i0) <= 512 && c1747c2.m28974i(this.f6539i0) <= 512;
    }

    /* renamed from: C */
    private boolean m29026C(byte[] bArr) {
        int i = 0;
        while (true) {
            byte[] bArr2 = f6522q;
            if (i >= bArr2.length) {
                int i2 = 0;
                while (true) {
                    byte[] bArr3 = f6523r;
                    if (i2 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[f6522q.length + i2 + 4] != bArr3[i2]) {
                        return false;
                    }
                    i2++;
                }
            } else if (bArr[i] != bArr2[i]) {
                return false;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: D */
    private void m29025D(InputStream inputStream) {
        Objects.requireNonNull(inputStream, "inputstream shouldn't be null");
        for (int i = 0; i < f6493O.length; i++) {
            try {
                try {
                    this.f6537g0[i] = new HashMap<>();
                } catch (IOException e) {
                    this.f6552v0 = false;
                    boolean z = f6505a;
                    if (z) {
                        Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                    }
                    m29013a();
                    if (!z) {
                        return;
                    }
                }
            } catch (Throwable th) {
                m29013a();
                if (f6505a) {
                    m29023F();
                }
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = inputStream;
        if (!this.f6536f0) {
            bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.f6535e0 = m29005i(bufferedInputStream);
        }
        C1746b c1746b = new C1746b(bufferedInputStream);
        if (!this.f6536f0) {
            switch (this.f6535e0) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                case 8:
                case 11:
                    m29001m(c1746b);
                    break;
                case 4:
                    m29006h(c1746b, 0, 0);
                    break;
                case 7:
                    m29004j(c1746b);
                    break;
                case 9:
                    m29002l(c1746b);
                    break;
                case 10:
                    m29000n(c1746b);
                    break;
                case 12:
                    m29007g(c1746b);
                    break;
                case 13:
                    m29003k(c1746b);
                    break;
                case 14:
                    m28998p(c1746b);
                    break;
            }
        } else {
            m28999o(c1746b);
        }
        m29018K(c1746b);
        this.f6552v0 = true;
        m29013a();
        if (!f6505a) {
            return;
        }
        m29023F();
    }

    /* renamed from: E */
    private void m29024E(C1746b c1746b, int i) {
        ByteOrder m29022G = m29022G(c1746b);
        this.f6539i0 = m29022G;
        c1746b.m28983k(m29022G);
        int readUnsignedShort = c1746b.readUnsignedShort();
        int i2 = this.f6535e0;
        if (i2 != 7 && i2 != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = c1746b.readInt();
        if (readInt < 8 || readInt >= i) {
            throw new IOException("Invalid first Ifd offset: " + readInt);
        }
        int i3 = readInt - 8;
        if (i3 <= 0 || c1746b.skipBytes(i3) == i3) {
            return;
        }
        throw new IOException("Couldn't jump to first Ifd: " + i3);
    }

    /* renamed from: F */
    private void m29023F() {
        for (int i = 0; i < this.f6537g0.length; i++) {
            Log.d("ExifInterface", "The size of tag group[" + i + "]: " + this.f6537g0[i].size());
            for (Map.Entry<String, C1747c> entry : this.f6537g0[i].entrySet()) {
                C1747c value = entry.getValue();
                Log.d("ExifInterface", "tagName: " + entry.getKey() + ", tagType: " + value.toString() + ", tagValue: '" + value.m28973j(this.f6539i0) + "'");
            }
        }
    }

    /* renamed from: G */
    private ByteOrder m29022G(C1746b c1746b) {
        short readShort = c1746b.readShort();
        if (readShort == 18761) {
            if (f6505a) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        } else if (readShort == 19789) {
            if (f6505a) {
                Log.d("ExifInterface", "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        } else {
            throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
        }
    }

    /* renamed from: H */
    private void m29021H(byte[] bArr, int i) {
        C1746b c1746b = new C1746b(bArr);
        m29024E(c1746b, bArr.length);
        m29020I(c1746b, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x024d  */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v167, types: [long] */
    /* JADX WARN: Type inference failed for: r0v270, types: [long] */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m29020I(p020b.p059l.p060a.C1744a.C1746b r9, int r10) {
        /*
            Method dump skipped, instructions count: 1692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p059l.p060a.C1744a.m29020I(b.l.a.a$b, int):void");
    }

    /* renamed from: J */
    private void m29019J(C1746b c1746b, int i) {
        C1747c c1747c;
        C1747c c1747c2 = this.f6537g0[i].get("ImageLength");
        C1747c c1747c3 = this.f6537g0[i].get("ImageWidth");
        if ((c1747c2 == null || c1747c3 == null) && (c1747c = this.f6537g0[i].get("JPEGInterchangeFormat")) != null) {
            m29006h(c1746b, c1747c.m28974i(this.f6539i0), i);
        }
    }

    /* renamed from: K */
    private void m29018K(C1746b c1746b) {
        HashMap<String, C1747c> hashMap = this.f6537g0[4];
        C1747c c1747c = hashMap.get("Compression");
        if (c1747c == null) {
            this.f6546p0 = 6;
            m28997q(c1746b, hashMap);
            return;
        }
        int m28974i = c1747c.m28974i(this.f6539i0);
        this.f6546p0 = m28974i;
        if (m28974i != 1) {
            if (m28974i == 6) {
                m28997q(c1746b, hashMap);
                return;
            } else if (m28974i != 7) {
                return;
            }
        }
        if (!m29028A(hashMap)) {
            return;
        }
        m28996r(c1746b, hashMap);
    }

    /* renamed from: L */
    private static boolean m29017L(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: M */
    private void m29016M(int i, int i2) {
        if (this.f6537g0[i].isEmpty() || this.f6537g0[i2].isEmpty()) {
            if (!f6505a) {
                return;
            }
            Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
            return;
        }
        C1747c c1747c = this.f6537g0[i].get("ImageLength");
        C1747c c1747c2 = this.f6537g0[i].get("ImageWidth");
        C1747c c1747c3 = this.f6537g0[i2].get("ImageLength");
        C1747c c1747c4 = this.f6537g0[i2].get("ImageWidth");
        if (c1747c == null || c1747c2 == null) {
            if (!f6505a) {
                return;
            }
            Log.d("ExifInterface", "First image does not contain valid size information");
        } else if (c1747c3 == null || c1747c4 == null) {
            if (!f6505a) {
                return;
            }
            Log.d("ExifInterface", "Second image does not contain valid size information");
        } else {
            int m28974i = c1747c.m28974i(this.f6539i0);
            int m28974i2 = c1747c2.m28974i(this.f6539i0);
            int m28974i3 = c1747c3.m28974i(this.f6539i0);
            int m28974i4 = c1747c4.m28974i(this.f6539i0);
            if (m28974i >= m28974i3 || m28974i2 >= m28974i4) {
                return;
            }
            HashMap<String, C1747c>[] hashMapArr = this.f6537g0;
            HashMap<String, C1747c> hashMap = hashMapArr[i];
            hashMapArr[i] = hashMapArr[i2];
            hashMapArr[i2] = hashMap;
        }
    }

    /* renamed from: N */
    private void m29015N(C1746b c1746b, int i) {
        C1747c c1747c;
        C1747c c1747c2;
        C1747c c1747c3 = this.f6537g0[i].get("DefaultCropSize");
        C1747c c1747c4 = this.f6537g0[i].get("SensorTopBorder");
        C1747c c1747c5 = this.f6537g0[i].get("SensorLeftBorder");
        C1747c c1747c6 = this.f6537g0[i].get("SensorBottomBorder");
        C1747c c1747c7 = this.f6537g0[i].get("SensorRightBorder");
        if (c1747c3 == null) {
            if (c1747c4 == null || c1747c5 == null || c1747c6 == null || c1747c7 == null) {
                m29019J(c1746b, i);
                return;
            }
            int m28974i = c1747c4.m28974i(this.f6539i0);
            int m28974i2 = c1747c6.m28974i(this.f6539i0);
            int m28974i3 = c1747c7.m28974i(this.f6539i0);
            int m28974i4 = c1747c5.m28974i(this.f6539i0);
            if (m28974i2 <= m28974i || m28974i3 <= m28974i4) {
                return;
            }
            C1747c m28977f = C1747c.m28977f(m28974i2 - m28974i, this.f6539i0);
            C1747c m28977f2 = C1747c.m28977f(m28974i3 - m28974i4, this.f6539i0);
            this.f6537g0[i].put("ImageLength", m28977f);
            this.f6537g0[i].put("ImageWidth", m28977f2);
            return;
        }
        if (c1747c3.f6563a == 5) {
            C1749e[] c1749eArr = (C1749e[]) c1747c3.m28972k(this.f6539i0);
            if (c1749eArr == null || c1749eArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(c1749eArr));
                return;
            }
            c1747c = C1747c.m28979d(c1749eArr[0], this.f6539i0);
            c1747c2 = C1747c.m28979d(c1749eArr[1], this.f6539i0);
        } else {
            int[] iArr = (int[]) c1747c3.m28972k(this.f6539i0);
            if (iArr == null || iArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
            c1747c = C1747c.m28977f(iArr[0], this.f6539i0);
            c1747c2 = C1747c.m28977f(iArr[1], this.f6539i0);
        }
        this.f6537g0[i].put("ImageWidth", c1747c);
        this.f6537g0[i].put("ImageLength", c1747c2);
    }

    /* renamed from: O */
    private void m29014O() {
        m29016M(0, 5);
        m29016M(0, 4);
        m29016M(5, 4);
        C1747c c1747c = this.f6537g0[1].get("PixelXDimension");
        C1747c c1747c2 = this.f6537g0[1].get("PixelYDimension");
        if (c1747c != null && c1747c2 != null) {
            this.f6537g0[0].put("ImageWidth", c1747c);
            this.f6537g0[0].put("ImageLength", c1747c2);
        }
        if (this.f6537g0[4].isEmpty() && m29027B(this.f6537g0[5])) {
            HashMap<String, C1747c>[] hashMapArr = this.f6537g0;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        if (!m29027B(this.f6537g0[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
    }

    /* renamed from: a */
    private void m29013a() {
        String m29010d = m29010d("DateTimeOriginal");
        if (m29010d != null && m29010d("DateTime") == null) {
            this.f6537g0[0].put("DateTime", C1747c.m28982a(m29010d));
        }
        if (m29010d("ImageWidth") == null) {
            this.f6537g0[0].put("ImageWidth", C1747c.m28981b(0L, this.f6539i0));
        }
        if (m29010d("ImageLength") == null) {
            this.f6537g0[0].put("ImageLength", C1747c.m28981b(0L, this.f6539i0));
        }
        if (m29010d("Orientation") == null) {
            this.f6537g0[0].put("Orientation", C1747c.m28981b(0L, this.f6539i0));
        }
        if (m29010d("LightSource") == null) {
            this.f6537g0[1].put("LightSource", C1747c.m28981b(0L, this.f6539i0));
        }
    }

    /* renamed from: b */
    private static String m29012b(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            sb.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return sb.toString();
    }

    /* renamed from: c */
    private static long[] m29011c(Object obj) {
        if (!(obj instanceof int[])) {
            if (!(obj instanceof long[])) {
                return null;
            }
            return (long[]) obj;
        }
        int[] iArr = (int[]) obj;
        long[] jArr = new long[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            jArr[i] = iArr[i];
        }
        return jArr;
    }

    /* renamed from: f */
    private C1747c m29008f(String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        String str2 = str;
        if ("ISOSpeedRatings".equals(str)) {
            if (f6505a) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str2 = "PhotographicSensitivity";
        }
        for (int i = 0; i < f6493O.length; i++) {
            C1747c c1747c = this.f6537g0[i].get(str2);
            if (c1747c != null) {
                return c1747c;
            }
        }
        return null;
    }

    /* renamed from: g */
    private void m29007g(C1746b c1746b) {
        String str;
        String str2;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                mediaMetadataRetriever.setDataSource(new C1745a(c1746b));
            } else {
                FileDescriptor fileDescriptor = this.f6533c0;
                if (fileDescriptor != null) {
                    mediaMetadataRetriever.setDataSource(fileDescriptor);
                } else {
                    String str3 = this.f6532b0;
                    if (str3 == null) {
                        return;
                    }
                    mediaMetadataRetriever.setDataSource(str3);
                }
            }
            String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
            String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
            String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
            String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
            String str4 = null;
            if ("yes".equals(extractMetadata3)) {
                str4 = mediaMetadataRetriever.extractMetadata(29);
                str2 = mediaMetadataRetriever.extractMetadata(30);
                str = mediaMetadataRetriever.extractMetadata(31);
            } else if ("yes".equals(extractMetadata4)) {
                str4 = mediaMetadataRetriever.extractMetadata(18);
                str2 = mediaMetadataRetriever.extractMetadata(19);
                str = mediaMetadataRetriever.extractMetadata(24);
            } else {
                str2 = null;
                str = null;
            }
            if (str4 != null) {
                this.f6537g0[0].put("ImageWidth", C1747c.m28977f(Integer.parseInt(str4), this.f6539i0));
            }
            if (str2 != null) {
                this.f6537g0[0].put("ImageLength", C1747c.m28977f(Integer.parseInt(str2), this.f6539i0));
            }
            if (str != null) {
                int i = 1;
                int parseInt = Integer.parseInt(str);
                if (parseInt == 90) {
                    i = 6;
                } else if (parseInt == 180) {
                    i = 3;
                } else if (parseInt == 270) {
                    i = 8;
                }
                this.f6537g0[0].put("Orientation", C1747c.m28977f(i, this.f6539i0));
            }
            if (extractMetadata != null && extractMetadata2 != null) {
                int parseInt2 = Integer.parseInt(extractMetadata);
                int parseInt3 = Integer.parseInt(extractMetadata2);
                if (parseInt3 <= 6) {
                    throw new IOException("Invalid exif length");
                }
                c1746b.m28984g(parseInt2);
                byte[] bArr = new byte[6];
                if (c1746b.read(bArr) != 6) {
                    throw new IOException("Can't read identifier");
                }
                int i2 = parseInt3 - 6;
                if (!Arrays.equals(bArr, f6502X)) {
                    throw new IOException("Invalid identifier");
                }
                byte[] bArr2 = new byte[i2];
                if (c1746b.read(bArr2) != i2) {
                    throw new IOException("Can't read exif");
                }
                this.f6547q0 = parseInt2 + 6;
                m29021H(bArr2, 0);
            }
            if (f6505a) {
                Log.d("ExifInterface", "Heif meta: " + str4 + "x" + str2 + ", rotation " + str);
            }
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x030a, code lost:
        r11.m28983k(r10.f6539i0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0312, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0196 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02f4 A[SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m29006h(p020b.p059l.p060a.C1744a.C1746b r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 913
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p059l.p060a.C1744a.m29006h(b.l.a.a$b, int, int):void");
    }

    /* renamed from: i */
    private int m29005i(BufferedInputStream bufferedInputStream) {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (m28993u(bArr)) {
            return 4;
        }
        if (m28990x(bArr)) {
            return 9;
        }
        if (m28994t(bArr)) {
            return 12;
        }
        if (m28992v(bArr)) {
            return 7;
        }
        if (m28989y(bArr)) {
            return 10;
        }
        if (m28991w(bArr)) {
            return 13;
        }
        return m29026C(bArr) ? 14 : 0;
    }

    /* renamed from: j */
    private void m29004j(C1746b c1746b) {
        m29001m(c1746b);
        C1747c c1747c = this.f6537g0[1].get("MakerNote");
        if (c1747c != null) {
            C1746b c1746b2 = new C1746b(c1747c.f6566d);
            c1746b2.m28983k(this.f6539i0);
            byte[] bArr = f6516k;
            byte[] bArr2 = new byte[bArr.length];
            c1746b2.readFully(bArr2);
            c1746b2.m28984g(0L);
            byte[] bArr3 = f6517l;
            byte[] bArr4 = new byte[bArr3.length];
            c1746b2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                c1746b2.m28984g(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                c1746b2.m28984g(12L);
            }
            m29020I(c1746b2, 6);
            C1747c c1747c2 = this.f6537g0[7].get("PreviewImageStart");
            C1747c c1747c3 = this.f6537g0[7].get("PreviewImageLength");
            if (c1747c2 != null && c1747c3 != null) {
                this.f6537g0[5].put("JPEGInterchangeFormat", c1747c2);
                this.f6537g0[5].put("JPEGInterchangeFormatLength", c1747c3);
            }
            C1747c c1747c4 = this.f6537g0[8].get("AspectFrame");
            if (c1747c4 == null) {
                return;
            }
            int[] iArr = (int[]) c1747c4.m28972k(this.f6539i0);
            if (iArr == null || iArr.length != 4) {
                Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
            } else if (iArr[2] <= iArr[0] || iArr[3] <= iArr[1]) {
            } else {
                int i = (iArr[2] - iArr[0]) + 1;
                int i2 = (iArr[3] - iArr[1]) + 1;
                int i3 = i;
                int i4 = i2;
                if (i < i2) {
                    int i5 = i + i2;
                    i4 = i5 - i2;
                    i3 = i5 - i4;
                }
                C1747c m28977f = C1747c.m28977f(i3, this.f6539i0);
                C1747c m28977f2 = C1747c.m28977f(i4, this.f6539i0);
                this.f6537g0[0].put("ImageWidth", m28977f);
                this.f6537g0[0].put("ImageLength", m28977f2);
            }
        }
    }

    /* renamed from: k */
    private void m29003k(C1746b c1746b) {
        if (f6505a) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + c1746b);
        }
        c1746b.m28983k(ByteOrder.BIG_ENDIAN);
        byte[] bArr = f6518m;
        c1746b.skipBytes(bArr.length);
        int length = bArr.length;
        int i = 0;
        while (true) {
            try {
                int i2 = length + i;
                int readInt = c1746b.readInt();
                byte[] bArr2 = new byte[4];
                if (c1746b.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i3 = i2 + 4 + 4;
                if (i3 == 16 && !Arrays.equals(bArr2, f6520o)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f6521p)) {
                    return;
                }
                if (Arrays.equals(bArr2, f6519n)) {
                    byte[] bArr3 = new byte[readInt];
                    if (c1746b.read(bArr3) != readInt) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + m29012b(bArr2));
                    }
                    int readInt2 = c1746b.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == readInt2) {
                        this.f6547q0 = i3;
                        m29021H(bArr3, 0);
                        m29014O();
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                }
                int i4 = readInt + 4;
                c1746b.skipBytes(i4);
                length = i3;
                i = i4;
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    /* renamed from: l */
    private void m29002l(C1746b c1746b) {
        c1746b.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        c1746b.read(bArr);
        c1746b.skipBytes(4);
        c1746b.read(bArr2);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        m29006h(c1746b, i, 5);
        c1746b.m28984g(i2);
        c1746b.m28983k(ByteOrder.BIG_ENDIAN);
        int readInt = c1746b.readInt();
        if (f6505a) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + readInt);
        }
        for (int i3 = 0; i3 < readInt; i3++) {
            int readUnsignedShort = c1746b.readUnsignedShort();
            int readUnsignedShort2 = c1746b.readUnsignedShort();
            if (readUnsignedShort == f6488J.f6567a) {
                short readShort = c1746b.readShort();
                short readShort2 = c1746b.readShort();
                C1747c m28977f = C1747c.m28977f(readShort, this.f6539i0);
                C1747c m28977f2 = C1747c.m28977f(readShort2, this.f6539i0);
                this.f6537g0[0].put("ImageLength", m28977f);
                this.f6537g0[0].put("ImageWidth", m28977f2);
                if (!f6505a) {
                    return;
                }
                Log.d("ExifInterface", "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2));
                return;
            }
            c1746b.skipBytes(readUnsignedShort2);
        }
    }

    /* renamed from: m */
    private void m29001m(C1746b c1746b) {
        C1747c c1747c;
        m29024E(c1746b, c1746b.available());
        m29020I(c1746b, 0);
        m29015N(c1746b, 0);
        m29015N(c1746b, 5);
        m29015N(c1746b, 4);
        m29014O();
        if (this.f6535e0 != 8 || (c1747c = this.f6537g0[1].get("MakerNote")) == null) {
            return;
        }
        C1746b c1746b2 = new C1746b(c1747c.f6566d);
        c1746b2.m28983k(this.f6539i0);
        c1746b2.m28984g(6L);
        m29020I(c1746b2, 9);
        C1747c c1747c2 = this.f6537g0[9].get("ColorSpace");
        if (c1747c2 == null) {
            return;
        }
        this.f6537g0[1].put("ColorSpace", c1747c2);
    }

    /* renamed from: n */
    private void m29000n(C1746b c1746b) {
        m29001m(c1746b);
        if (this.f6537g0[0].get("JpgFromRaw") != null) {
            m29006h(c1746b, this.f6551u0, 5);
        }
        C1747c c1747c = this.f6537g0[0].get("ISO");
        C1747c c1747c2 = this.f6537g0[1].get("PhotographicSensitivity");
        if (c1747c == null || c1747c2 != null) {
            return;
        }
        this.f6537g0[1].put("PhotographicSensitivity", c1747c);
    }

    /* renamed from: o */
    private void m28999o(C1746b c1746b) {
        byte[] bArr = f6502X;
        c1746b.skipBytes(bArr.length);
        byte[] bArr2 = new byte[c1746b.available()];
        c1746b.readFully(bArr2);
        this.f6547q0 = bArr.length;
        m29021H(bArr2, 0);
    }

    /* renamed from: p */
    private void m28998p(C1746b c1746b) {
        if (f6505a) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + c1746b);
        }
        c1746b.m28983k(ByteOrder.LITTLE_ENDIAN);
        c1746b.skipBytes(f6522q.length);
        int readInt = c1746b.readInt() + 8;
        int skipBytes = c1746b.skipBytes(f6523r.length);
        int i = 8;
        while (true) {
            try {
                int i2 = skipBytes + i;
                byte[] bArr = new byte[4];
                if (c1746b.read(bArr) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int readInt2 = c1746b.readInt();
                int i3 = i2 + 4 + 4;
                if (Arrays.equals(f6524s, bArr)) {
                    byte[] bArr2 = new byte[readInt2];
                    if (c1746b.read(bArr2) == readInt2) {
                        this.f6547q0 = i3;
                        m29021H(bArr2, 0);
                        this.f6547q0 = i3;
                        return;
                    }
                    throw new IOException("Failed to read given length for given PNG chunk type: " + m29012b(bArr));
                }
                int i4 = readInt2;
                if (readInt2 % 2 == 1) {
                    i4 = readInt2 + 1;
                }
                int i5 = i3 + i4;
                if (i5 == readInt) {
                    return;
                }
                if (i5 > readInt) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                int skipBytes2 = c1746b.skipBytes(i4);
                if (skipBytes2 != i4) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                skipBytes = i3;
                i = skipBytes2;
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    /* renamed from: q */
    private void m28997q(C1746b c1746b, HashMap hashMap) {
        C1747c c1747c = (C1747c) hashMap.get("JPEGInterchangeFormat");
        C1747c c1747c2 = (C1747c) hashMap.get("JPEGInterchangeFormatLength");
        if (c1747c == null || c1747c2 == null) {
            return;
        }
        int m28974i = c1747c.m28974i(this.f6539i0);
        int m28974i2 = c1747c2.m28974i(this.f6539i0);
        int i = m28974i;
        if (this.f6535e0 == 7) {
            i = m28974i + this.f6548r0;
        }
        int min = Math.min(m28974i2, c1746b.m28987a() - i);
        if (i > 0 && min > 0) {
            this.f6540j0 = true;
            int i2 = this.f6547q0 + i;
            this.f6543m0 = i2;
            this.f6544n0 = min;
            if (this.f6532b0 == null && this.f6534d0 == null && this.f6533c0 == null) {
                byte[] bArr = new byte[min];
                c1746b.m28984g(i2);
                c1746b.readFully(bArr);
                this.f6545o0 = bArr;
            }
        }
        if (!f6505a) {
            return;
        }
        Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + i + ", length: " + min);
    }

    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: r */
    private void m28996r(C1746b c1746b, HashMap hashMap) {
        C1747c c1747c = (C1747c) hashMap.get("StripOffsets");
        C1747c c1747c2 = (C1747c) hashMap.get("StripByteCounts");
        if (c1747c == null || c1747c2 == null) {
            return;
        }
        long[] m29011c = m29011c(c1747c.m28972k(this.f6539i0));
        long[] m29011c2 = m29011c(c1747c2.m28972k(this.f6539i0));
        if (m29011c == null || m29011c.length == 0) {
            Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
        } else if (m29011c2 == null || m29011c2.length == 0) {
            Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
        } else if (m29011c.length != m29011c2.length) {
            Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
        } else {
            char c = 0;
            for (long j : m29011c2) {
                c += j;
            }
            int i = c;
            byte[] bArr = new byte[i];
            this.f6542l0 = true;
            this.f6541k0 = true;
            this.f6540j0 = true;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < m29011c.length; i4++) {
                int i5 = (int) m29011c[i4];
                int i6 = (int) m29011c2[i4];
                if (i4 < m29011c.length - 1 && i5 + i6 != m29011c[i4 + 1]) {
                    this.f6542l0 = false;
                }
                int i7 = i5 - i2;
                if (i7 < 0) {
                    Log.d("ExifInterface", "Invalid strip offset value");
                }
                c1746b.m28984g(i7);
                byte[] bArr2 = new byte[i6];
                c1746b.read(bArr2);
                i2 = i2 + i7 + i6;
                System.arraycopy(bArr2, 0, bArr, i3, i6);
                i3 += i6;
            }
            this.f6545o0 = bArr;
            if (!this.f6542l0) {
                return;
            }
            this.f6543m0 = ((int) m29011c[0]) + this.f6547q0;
            this.f6544n0 = i;
        }
    }

    /* renamed from: s */
    private static boolean m28995s(BufferedInputStream bufferedInputStream) {
        byte[] bArr = f6502X;
        bufferedInputStream.mark(bArr.length);
        byte[] bArr2 = new byte[bArr.length];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i = 0;
        while (true) {
            byte[] bArr3 = f6502X;
            if (i < bArr3.length) {
                if (bArr2[i] != bArr3[i]) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* renamed from: t */
    private boolean m28994t(byte[] bArr) {
        Throwable th;
        Exception e;
        C1746b c1746b;
        C1746b c1746b2;
        boolean z;
        boolean z2;
        C1746b c1746b3 = null;
        try {
            try {
                c1746b2 = new C1746b(bArr);
            } catch (Exception e2) {
                e = e2;
                c1746b = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            char readInt = c1746b2.readInt();
            byte[] bArr2 = new byte[4];
            c1746b2.read(bArr2);
            if (!Arrays.equals(bArr2, f6513h)) {
                c1746b2.close();
                return false;
            }
            char c = 16;
            if (readInt == 1) {
                ?? readLong = c1746b2.readLong();
                readInt = readLong;
                if (readLong < 16) {
                    c1746b2.close();
                    return false;
                }
            } else {
                c = '\b';
            }
            char c2 = readInt;
            if (readInt > bArr.length) {
                c2 = bArr.length;
            }
            long j = c2 - c;
            if (j < 8) {
                c1746b2.close();
                return false;
            }
            byte[] bArr3 = new byte[4];
            char c3 = 0;
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                boolean z5 = z4;
                if (c3 >= j / 4) {
                    c1746b2.close();
                    return false;
                } else if (c1746b2.read(bArr3) != 4) {
                    c1746b2.close();
                    return false;
                } else {
                    if (c3 == 1) {
                        z = z5;
                    } else {
                        if (Arrays.equals(bArr3, f6514i)) {
                            z2 = true;
                        } else {
                            z2 = z3;
                            if (Arrays.equals(bArr3, f6515j)) {
                                z5 = true;
                                z2 = z3;
                            }
                        }
                        z3 = z2;
                        z = z5;
                        if (z2) {
                            z3 = z2;
                            z = z5;
                            if (z5) {
                                c1746b2.close();
                                return true;
                            }
                        } else {
                            continue;
                        }
                    }
                    c3++;
                    z4 = z;
                }
            }
        } catch (Exception e3) {
            c1746b = c1746b2;
            e = e3;
            if (f6505a) {
                c1746b3 = c1746b;
                Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
            }
            if (c1746b == null) {
                return false;
            }
            c1746b.close();
            return false;
        } catch (Throwable th3) {
            th = th3;
            c1746b3 = c1746b2;
            if (c1746b3 != null) {
                c1746b3.close();
            }
            throw th;
        }
    }

    /* renamed from: u */
    private static boolean m28993u(byte[] bArr) {
        int i = 0;
        while (true) {
            byte[] bArr2 = f6512g;
            if (i < bArr2.length) {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }

    /* renamed from: v */
    private boolean m28992v(byte[] bArr) {
        C1746b c1746b;
        C1746b c1746b2;
        Throwable th;
        boolean z = false;
        try {
            c1746b2 = new C1746b(bArr);
        } catch (Exception e) {
            c1746b = null;
        } catch (Throwable th2) {
            th = th2;
            c1746b2 = null;
        }
        try {
            ByteOrder m29022G = m29022G(c1746b2);
            this.f6539i0 = m29022G;
            c1746b2.m28983k(m29022G);
            short readShort = c1746b2.readShort();
            if (readShort == 20306 || readShort == 21330) {
                z = true;
            }
            c1746b2.close();
            return z;
        } catch (Exception e2) {
            c1746b = c1746b2;
            if (c1746b == null) {
                return false;
            }
            c1746b.close();
            return false;
        } catch (Throwable th3) {
            th = th3;
            if (c1746b2 != null) {
                c1746b2.close();
            }
            throw th;
        }
    }

    /* renamed from: w */
    private boolean m28991w(byte[] bArr) {
        int i = 0;
        while (true) {
            byte[] bArr2 = f6518m;
            if (i < bArr2.length) {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }

    /* renamed from: x */
    private boolean m28990x(byte[] bArr) {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i = 0; i < bytes.length; i++) {
            if (bArr[i] != bytes[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: y */
    private boolean m28989y(byte[] bArr) {
        C1746b c1746b;
        Throwable th;
        boolean z = false;
        try {
            c1746b = new C1746b(bArr);
            try {
                ByteOrder m29022G = m29022G(c1746b);
                this.f6539i0 = m29022G;
                c1746b.m28983k(m29022G);
                if (c1746b.readShort() == 85) {
                    z = true;
                }
                c1746b.close();
                return z;
            } catch (Exception e) {
                if (c1746b == null) {
                    return false;
                }
                c1746b.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                if (c1746b != null) {
                    c1746b.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            c1746b = null;
        } catch (Throwable th3) {
            th = th3;
            c1746b = null;
        }
    }

    /* renamed from: z */
    private static boolean m28988z(FileDescriptor fileDescriptor) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
                return true;
            } catch (Exception e) {
                if (!f6505a) {
                    return false;
                }
                Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                return false;
            }
        }
        return false;
    }

    /* renamed from: d */
    public String m29010d(String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        C1747c m29008f = m29008f(str);
        if (m29008f != null) {
            if (!f6499U.contains(str)) {
                return m29008f.m28973j(this.f6539i0);
            }
            if (!str.equals("GPSTimeStamp")) {
                try {
                    return Double.toString(m29008f.m28975h(this.f6539i0));
                } catch (NumberFormatException e) {
                    return null;
                }
            }
            int i = m29008f.f6563a;
            if (i != 5 && i != 10) {
                Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + m29008f.f6563a);
                return null;
            }
            C1749e[] c1749eArr = (C1749e[]) m29008f.m28972k(this.f6539i0);
            if (c1749eArr != null && c1749eArr.length == 3) {
                return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) c1749eArr[0].f6571a) / ((float) c1749eArr[0].f6572b))), Integer.valueOf((int) (((float) c1749eArr[1].f6571a) / ((float) c1749eArr[1].f6572b))), Integer.valueOf((int) (((float) c1749eArr[2].f6571a) / ((float) c1749eArr[2].f6572b))));
            }
            Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(c1749eArr));
            return null;
        }
        return null;
    }

    /* renamed from: e */
    public int m29009e(String str, int i) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        C1747c m29008f = m29008f(str);
        if (m29008f == null) {
            return i;
        }
        try {
            return m29008f.m28974i(this.f6539i0);
        } catch (NumberFormatException e) {
            return i;
        }
    }
}
