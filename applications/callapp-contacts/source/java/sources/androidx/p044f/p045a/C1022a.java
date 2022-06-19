package androidx.p044f.p045a;

import android.content.res.AssetManager;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.explorestack.iab.vast.VastError;
import io.objectbox.model.PropertyFlags;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
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
/* renamed from: androidx.f.a.a */
/* loaded from: classes-dex2jar.jar:androidx/f/a/a.class */
public final class C1022a {

    /* renamed from: G */
    private static SimpleDateFormat f4055G;

    /* renamed from: H */
    private static final C1026c[] f4056H;

    /* renamed from: I */
    private static final C1026c[] f4057I;

    /* renamed from: J */
    private static final C1026c[] f4058J;

    /* renamed from: K */
    private static final C1026c[] f4059K;

    /* renamed from: L */
    private static final C1026c[] f4060L;

    /* renamed from: N */
    private static final C1026c[] f4062N;

    /* renamed from: O */
    private static final C1026c[] f4063O;

    /* renamed from: P */
    private static final C1026c[] f4064P;

    /* renamed from: Q */
    private static final C1026c[] f4065Q;

    /* renamed from: U */
    private static final HashMap<Integer, C1026c>[] f4069U;

    /* renamed from: V */
    private static final HashMap<String, C1026c>[] f4070V;

    /* renamed from: Y */
    private static final byte[] f4073Y;

    /* renamed from: av */
    private static final Pattern f4075av;

    /* renamed from: aw */
    private static final Pattern f4076aw;

    /* renamed from: h */
    static final C1026c[][] f4083h;

    /* renamed from: i */
    static final Charset f4084i;

    /* renamed from: j */
    static final byte[] f4085j;

    /* renamed from: Z */
    private String f4102Z;

    /* renamed from: aa */
    private FileDescriptor f4103aa;

    /* renamed from: ab */
    private AssetManager.AssetInputStream f4104ab;

    /* renamed from: ac */
    private int f4105ac;

    /* renamed from: ad */
    private boolean f4106ad;

    /* renamed from: ae */
    private final HashMap<String, C1025b>[] f4107ae;

    /* renamed from: af */
    private Set<Integer> f4108af;

    /* renamed from: ag */
    private ByteOrder f4109ag;

    /* renamed from: ah */
    private boolean f4110ah;

    /* renamed from: ai */
    private boolean f4111ai;

    /* renamed from: aj */
    private boolean f4112aj;

    /* renamed from: ak */
    private int f4113ak;

    /* renamed from: al */
    private int f4114al;

    /* renamed from: am */
    private byte[] f4115am;

    /* renamed from: an */
    private int f4116an;

    /* renamed from: ao */
    private int f4117ao;

    /* renamed from: ap */
    private int f4118ap;

    /* renamed from: aq */
    private int f4119aq;

    /* renamed from: ar */
    private int f4120ar;

    /* renamed from: as */
    private int f4121as;

    /* renamed from: at */
    private boolean f4122at;

    /* renamed from: au */
    private boolean f4123au;

    /* renamed from: k */
    private static final boolean f4086k = Log.isLoggable("ExifInterface", 3);

    /* renamed from: l */
    private static final List<Integer> f4087l = Arrays.asList(1, 6, 3, 8);

    /* renamed from: m */
    private static final List<Integer> f4088m = Arrays.asList(2, 7, 4, 5);

    /* renamed from: a */
    public static final int[] f4074a = {8, 8, 8};

    /* renamed from: b */
    public static final int[] f4077b = {4};

    /* renamed from: c */
    public static final int[] f4078c = {8};

    /* renamed from: d */
    static final byte[] f4079d = {-1, -40, -1};

    /* renamed from: n */
    private static final byte[] f4089n = {102, 116, 121, 112};

    /* renamed from: o */
    private static final byte[] f4090o = {109, 105, 102, 49};

    /* renamed from: p */
    private static final byte[] f4091p = {104, 101, 105, 99};

    /* renamed from: q */
    private static final byte[] f4092q = {79, 76, 89, 77, 80, 0};

    /* renamed from: r */
    private static final byte[] f4093r = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* renamed from: s */
    private static final byte[] f4094s = {-119, 80, 78, 71, 13, 10, 26, 10};

    /* renamed from: t */
    private static final byte[] f4095t = {101, 88, 73, 102};

    /* renamed from: u */
    private static final byte[] f4096u = {73, 72, 68, 82};

    /* renamed from: v */
    private static final byte[] f4097v = {73, 69, 78, 68};

    /* renamed from: w */
    private static final byte[] f4098w = {82, 73, 70, 70};

    /* renamed from: x */
    private static final byte[] f4099x = {87, 69, 66, 80};

    /* renamed from: y */
    private static final byte[] f4100y = {69, 88, 73, 70};

    /* renamed from: z */
    private static final byte[] f4101z = {-99, 1, 42};

    /* renamed from: A */
    private static final byte[] f4049A = "VP8X".getBytes(Charset.defaultCharset());

    /* renamed from: B */
    private static final byte[] f4050B = "VP8L".getBytes(Charset.defaultCharset());

    /* renamed from: C */
    private static final byte[] f4051C = "VP8 ".getBytes(Charset.defaultCharset());

    /* renamed from: D */
    private static final byte[] f4052D = "ANIM".getBytes(Charset.defaultCharset());

    /* renamed from: E */
    private static final byte[] f4053E = "ANMF".getBytes(Charset.defaultCharset());

    /* renamed from: F */
    private static final byte[] f4054F = "XMP ".getBytes(Charset.defaultCharset());

    /* renamed from: e */
    static final String[] f4080e = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};

    /* renamed from: f */
    static final int[] f4081f = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};

    /* renamed from: g */
    static final byte[] f4082g = {65, 83, 67, 73, 73, 0, 0, 0};

    /* renamed from: M */
    private static final C1026c f4061M = new C1026c("StripOffsets", 273, 3);

    /* renamed from: R */
    private static final C1026c[] f4066R = {new C1026c("SubIFDPointer", 330, 4), new C1026c("ExifIFDPointer", 34665, 4), new C1026c("GPSInfoIFDPointer", 34853, 4), new C1026c("InteroperabilityIFDPointer", 40965, 4), new C1026c("CameraSettingsIFDPointer", 8224, 1), new C1026c("ImageProcessingIFDPointer", 8256, 1)};

    /* renamed from: S */
    private static final C1026c f4067S = new C1026c("JPEGInterchangeFormat", 513, 4);

    /* renamed from: T */
    private static final C1026c f4068T = new C1026c("JPEGInterchangeFormatLength", 514, 4);

    /* renamed from: W */
    private static final HashSet<String> f4071W = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));

    /* renamed from: X */
    private static final HashMap<Integer, Integer> f4072X = new HashMap<>();

    /* renamed from: androidx.f.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a$a.class */
    public static final class C1024a extends InputStream implements DataInput {

        /* renamed from: d */
        private static final ByteOrder f4127d = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: e */
        private static final ByteOrder f4128e = ByteOrder.BIG_ENDIAN;

        /* renamed from: a */
        ByteOrder f4129a;

        /* renamed from: b */
        final int f4130b;

        /* renamed from: c */
        int f4131c;

        /* renamed from: f */
        private DataInputStream f4132f;

        public C1024a(InputStream inputStream) throws IOException {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        C1024a(InputStream inputStream, ByteOrder byteOrder) throws IOException {
            this.f4129a = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f4132f = dataInputStream;
            int available = dataInputStream.available();
            this.f4130b = available;
            this.f4131c = 0;
            this.f4132f.mark(available);
            this.f4129a = byteOrder;
        }

        public C1024a(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }

        /* renamed from: a */
        public final long m43784a() throws IOException {
            return readInt() & 4294967295L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* renamed from: a */
        public final void m43783a(long j) throws IOException {
            char c;
            int i = this.f4131c;
            if (i > j) {
                this.f4131c = 0;
                this.f4132f.reset();
                this.f4132f.mark(this.f4130b);
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

        @Override // java.io.InputStream
        public final int available() throws IOException {
            return this.f4132f.available();
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            this.f4131c++;
            return this.f4132f.read();
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.f4132f.read(bArr, i, i2);
            this.f4131c += read;
            return read;
        }

        @Override // java.io.DataInput
        public final boolean readBoolean() throws IOException {
            this.f4131c++;
            return this.f4132f.readBoolean();
        }

        @Override // java.io.DataInput
        public final byte readByte() throws IOException {
            int i = this.f4131c + 1;
            this.f4131c = i;
            if (i <= this.f4130b) {
                int read = this.f4132f.read();
                if (read < 0) {
                    throw new EOFException();
                }
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final char readChar() throws IOException {
            this.f4131c += 2;
            return this.f4132f.readChar();
        }

        @Override // java.io.DataInput
        public final double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public final float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr) throws IOException {
            int length = this.f4131c + bArr.length;
            this.f4131c = length;
            if (length <= this.f4130b) {
                if (this.f4132f.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.f4131c + i2;
            this.f4131c = i3;
            if (i3 <= this.f4130b) {
                if (this.f4132f.read(bArr, i, i2) != i2) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final int readInt() throws IOException {
            int i = this.f4131c + 4;
            this.f4131c = i;
            if (i <= this.f4130b) {
                int read = this.f4132f.read();
                int read2 = this.f4132f.read();
                int read3 = this.f4132f.read();
                int read4 = this.f4132f.read();
                if ((read | read2 | read3 | read4) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f4129a;
                if (byteOrder == f4127d) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f4128e) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                throw new IOException("Invalid byte order: " + this.f4129a);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readLine() throws IOException {
            return null;
        }

        @Override // java.io.DataInput
        public final long readLong() throws IOException {
            int i = this.f4131c + 8;
            this.f4131c = i;
            if (i <= this.f4130b) {
                int read = this.f4132f.read();
                int read2 = this.f4132f.read();
                int read3 = this.f4132f.read();
                int read4 = this.f4132f.read();
                int read5 = this.f4132f.read();
                int read6 = this.f4132f.read();
                int read7 = this.f4132f.read();
                int read8 = this.f4132f.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f4129a;
                if (byteOrder == f4127d) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f4128e) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                throw new IOException("Invalid byte order: " + this.f4129a);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final short readShort() throws IOException {
            int i = this.f4131c + 2;
            this.f4131c = i;
            if (i <= this.f4130b) {
                int read = this.f4132f.read();
                int read2 = this.f4132f.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f4129a;
                if (byteOrder == f4127d) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == f4128e) {
                    return (short) ((read << 8) + read2);
                }
                throw new IOException("Invalid byte order: " + this.f4129a);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readUTF() throws IOException {
            this.f4131c += 2;
            return this.f4132f.readUTF();
        }

        @Override // java.io.DataInput
        public final int readUnsignedByte() throws IOException {
            this.f4131c++;
            return this.f4132f.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public final int readUnsignedShort() throws IOException {
            int i = this.f4131c + 2;
            this.f4131c = i;
            if (i <= this.f4130b) {
                int read = this.f4132f.read();
                int read2 = this.f4132f.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f4129a;
                if (byteOrder == f4127d) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == f4128e) {
                    return (read << 8) + read2;
                }
                throw new IOException("Invalid byte order: " + this.f4129a);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final int skipBytes(int i) throws IOException {
            int min = Math.min(i, this.f4130b - this.f4131c);
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= min) {
                    this.f4131c += i3;
                    return i3;
                }
                i2 = i3 + this.f4132f.skipBytes(min - i3);
            }
        }
    }

    /* renamed from: androidx.f.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a$b.class */
    public static final class C1025b {

        /* renamed from: a */
        public final int f4133a;

        /* renamed from: b */
        public final int f4134b;

        /* renamed from: c */
        public final long f4135c;

        /* renamed from: d */
        public final byte[] f4136d;

        C1025b(int i, int i2, long j, byte[] bArr) {
            this.f4133a = i;
            this.f4134b = i2;
            this.f4135c = j;
            this.f4136d = bArr;
        }

        C1025b(int i, int i2, byte[] bArr) {
            this(i, i2, -1L, bArr);
        }

        /* renamed from: a */
        public static C1025b m43782a(int i, ByteOrder byteOrder) {
            return m43777a(new int[]{i}, byteOrder);
        }

        /* renamed from: a */
        public static C1025b m43781a(long j, ByteOrder byteOrder) {
            return m43776a(new long[]{j}, byteOrder);
        }

        /* renamed from: a */
        public static C1025b m43780a(C1027d c1027d, ByteOrder byteOrder) {
            return m43775a(new C1027d[]{c1027d}, byteOrder);
        }

        /* renamed from: a */
        public static C1025b m43779a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(C1022a.f4084i);
            return new C1025b(2, bytes.length, bytes);
        }

        /* renamed from: a */
        private static C1025b m43777a(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1022a.f4081f[3] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i <= 0; i++) {
                wrap.putShort((short) iArr[0]);
            }
            return new C1025b(3, 1, wrap.array());
        }

        /* renamed from: a */
        private static C1025b m43776a(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1022a.f4081f[4] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i <= 0; i++) {
                wrap.putInt((int) jArr[0]);
            }
            return new C1025b(4, 1, wrap.array());
        }

        /* renamed from: a */
        private static C1025b m43775a(C1027d[] c1027dArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1022a.f4081f[5] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i <= 0; i++) {
                C1027d c1027d = c1027dArr[0];
                wrap.putInt((int) c1027d.f4141a);
                wrap.putInt((int) c1027d.f4142b);
            }
            return new C1025b(5, 1, wrap.array());
        }

        /* JADX WARN: Removed duplicated region for block: B:245:0x03d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final java.lang.Object m43778a(java.nio.ByteOrder r10) {
            /*
                Method dump skipped, instructions count: 1002
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.p044f.p045a.C1022a.C1025b.m43778a(java.nio.ByteOrder):java.lang.Object");
        }

        /* renamed from: b */
        public final int m43774b(ByteOrder byteOrder) {
            Object m43778a = m43778a(byteOrder);
            if (m43778a != null) {
                if (m43778a instanceof String) {
                    return Integer.parseInt((String) m43778a);
                }
                if (m43778a instanceof long[]) {
                    long[] jArr = (long[]) m43778a;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return (int) jArr[0];
                } else if (!(m43778a instanceof int[])) {
                    throw new NumberFormatException("Couldn't find a integer value");
                } else {
                    int[] iArr = (int[]) m43778a;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                }
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        /* renamed from: c */
        public final String m43773c(ByteOrder byteOrder) {
            Object m43778a = m43778a(byteOrder);
            if (m43778a == null) {
                return null;
            }
            if (m43778a instanceof String) {
                return (String) m43778a;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (m43778a instanceof long[]) {
                long[] jArr = (long[]) m43778a;
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
            } else if (m43778a instanceof int[]) {
                int[] iArr = (int[]) m43778a;
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
            } else if (m43778a instanceof double[]) {
                double[] dArr = (double[]) m43778a;
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
            } else if (!(m43778a instanceof C1027d[])) {
                return null;
            } else {
                C1027d[] c1027dArr = (C1027d[]) m43778a;
                int i7 = 0;
                while (i7 < c1027dArr.length) {
                    sb.append(c1027dArr[i7].f4141a);
                    sb.append('/');
                    sb.append(c1027dArr[i7].f4142b);
                    int i8 = i7 + 1;
                    i7 = i8;
                    if (i8 != c1027dArr.length) {
                        sb.append(",");
                        i7 = i8;
                    }
                }
                return sb.toString();
            }
        }

        public final String toString() {
            return "(" + C1022a.f4080e[this.f4133a] + ", data length:" + this.f4136d.length + ")";
        }
    }

    /* renamed from: androidx.f.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a$c.class */
    public static final class C1026c {

        /* renamed from: a */
        public final int f4137a;

        /* renamed from: b */
        public final String f4138b;

        /* renamed from: c */
        public final int f4139c;

        /* renamed from: d */
        public final int f4140d;

        C1026c(String str, int i, int i2) {
            this.f4138b = str;
            this.f4137a = i;
            this.f4139c = i2;
            this.f4140d = -1;
        }

        C1026c(String str, int i, int i2, int i3) {
            this.f4138b = str;
            this.f4137a = i;
            this.f4139c = i2;
            this.f4140d = i3;
        }

        /* renamed from: a */
        final boolean m43772a(int i) {
            int i2;
            int i3 = this.f4139c;
            if (i3 == 7 || i == 7 || i3 == i || (i2 = this.f4140d) == i) {
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

    /* renamed from: androidx.f.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a$d.class */
    public static final class C1027d {

        /* renamed from: a */
        public final long f4141a;

        /* renamed from: b */
        public final long f4142b;

        C1027d(double d) {
            this((long) (d * 10000.0d), 10000L);
        }

        C1027d(long j, long j2) {
            if (j2 == 0) {
                this.f4141a = 0L;
                this.f4142b = 1L;
                return;
            }
            this.f4141a = j;
            this.f4142b = j2;
        }

        public final String toString() {
            return this.f4141a + "/" + this.f4142b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v294, types: [androidx.f.a.a$c[], androidx.f.a.a$c[][]] */
    static {
        C1026c[] c1026cArr;
        C1026c[] c1026cArr2 = {new C1026c("NewSubfileType", 254, 4), new C1026c("SubfileType", 255, 4), new C1026c("ImageWidth", PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 3, 4), new C1026c("ImageLength", 257, 3, 4), new C1026c("BitsPerSample", 258, 3), new C1026c("Compression", 259, 3), new C1026c("PhotometricInterpretation", 262, 3), new C1026c("ImageDescription", 270, 2), new C1026c("Make", 271, 2), new C1026c("Model", 272, 2), new C1026c("StripOffsets", 273, 3, 4), new C1026c("Orientation", 274, 3), new C1026c("SamplesPerPixel", 277, 3), new C1026c("RowsPerStrip", 278, 3, 4), new C1026c("StripByteCounts", 279, 3, 4), new C1026c("XResolution", 282, 5), new C1026c("YResolution", 283, 5), new C1026c("PlanarConfiguration", 284, 3), new C1026c("ResolutionUnit", 296, 3), new C1026c("TransferFunction", VastError.ERROR_CODE_BAD_URI, 3), new C1026c("Software", 305, 2), new C1026c("DateTime", 306, 2), new C1026c("Artist", 315, 2), new C1026c("WhitePoint", 318, 5), new C1026c("PrimaryChromaticities", 319, 5), new C1026c("SubIFDPointer", 330, 4), new C1026c("JPEGInterchangeFormat", 513, 4), new C1026c("JPEGInterchangeFormatLength", 514, 4), new C1026c("YCbCrCoefficients", 529, 5), new C1026c("YCbCrSubSampling", 530, 3), new C1026c("YCbCrPositioning", 531, 3), new C1026c("ReferenceBlackWhite", 532, 5), new C1026c("Copyright", 33432, 2), new C1026c("ExifIFDPointer", 34665, 4), new C1026c("GPSInfoIFDPointer", 34853, 4), new C1026c("SensorTopBorder", 4, 4), new C1026c("SensorLeftBorder", 5, 4), new C1026c("SensorBottomBorder", 6, 4), new C1026c("SensorRightBorder", 7, 4), new C1026c("ISO", 23, 3), new C1026c("JpgFromRaw", 46, 7), new C1026c("Xmp", 700, 1)};
        f4056H = c1026cArr2;
        C1026c[] c1026cArr3 = {new C1026c("ExposureTime", 33434, 5), new C1026c("FNumber", 33437, 5), new C1026c("ExposureProgram", 34850, 3), new C1026c("SpectralSensitivity", 34852, 2), new C1026c("PhotographicSensitivity", 34855, 3), new C1026c("OECF", 34856, 7), new C1026c("SensitivityType", 34864, 3), new C1026c("StandardOutputSensitivity", 34865, 4), new C1026c("RecommendedExposureIndex", 34866, 4), new C1026c("ISOSpeed", 34867, 4), new C1026c("ISOSpeedLatitudeyyy", 34868, 4), new C1026c("ISOSpeedLatitudezzz", 34869, 4), new C1026c("ExifVersion", 36864, 2), new C1026c("DateTimeOriginal", 36867, 2), new C1026c("DateTimeDigitized", 36868, 2), new C1026c("OffsetTime", 36880, 2), new C1026c("OffsetTimeOriginal", 36881, 2), new C1026c("OffsetTimeDigitized", 36882, 2), new C1026c("ComponentsConfiguration", 37121, 7), new C1026c("CompressedBitsPerPixel", 37122, 5), new C1026c("ShutterSpeedValue", 37377, 10), new C1026c("ApertureValue", 37378, 5), new C1026c("BrightnessValue", 37379, 10), new C1026c("ExposureBiasValue", 37380, 10), new C1026c("MaxApertureValue", 37381, 5), new C1026c("SubjectDistance", 37382, 5), new C1026c("MeteringMode", 37383, 3), new C1026c("LightSource", 37384, 3), new C1026c("Flash", 37385, 3), new C1026c("FocalLength", 37386, 5), new C1026c("SubjectArea", 37396, 3), new C1026c("MakerNote", 37500, 7), new C1026c("UserComment", 37510, 7), new C1026c("SubSecTime", 37520, 2), new C1026c("SubSecTimeOriginal", 37521, 2), new C1026c("SubSecTimeDigitized", 37522, 2), new C1026c("FlashpixVersion", 40960, 7), new C1026c("ColorSpace", 40961, 3), new C1026c("PixelXDimension", 40962, 3, 4), new C1026c("PixelYDimension", 40963, 3, 4), new C1026c("RelatedSoundFile", 40964, 2), new C1026c("InteroperabilityIFDPointer", 40965, 4), new C1026c("FlashEnergy", 41483, 5), new C1026c("SpatialFrequencyResponse", 41484, 7), new C1026c("FocalPlaneXResolution", 41486, 5), new C1026c("FocalPlaneYResolution", 41487, 5), new C1026c("FocalPlaneResolutionUnit", 41488, 3), new C1026c("SubjectLocation", 41492, 3), new C1026c("ExposureIndex", 41493, 5), new C1026c("SensingMethod", 41495, 3), new C1026c("FileSource", 41728, 7), new C1026c("SceneType", 41729, 7), new C1026c("CFAPattern", 41730, 7), new C1026c("CustomRendered", 41985, 3), new C1026c("ExposureMode", 41986, 3), new C1026c("WhiteBalance", 41987, 3), new C1026c("DigitalZoomRatio", 41988, 5), new C1026c("FocalLengthIn35mmFilm", 41989, 3), new C1026c("SceneCaptureType", 41990, 3), new C1026c("GainControl", 41991, 3), new C1026c("Contrast", 41992, 3), new C1026c("Saturation", 41993, 3), new C1026c("Sharpness", 41994, 3), new C1026c("DeviceSettingDescription", 41995, 7), new C1026c("SubjectDistanceRange", 41996, 3), new C1026c("ImageUniqueID", 42016, 2), new C1026c("CameraOwnerName", 42032, 2), new C1026c("BodySerialNumber", 42033, 2), new C1026c("LensSpecification", 42034, 5), new C1026c("LensMake", 42035, 2), new C1026c("LensModel", 42036, 2), new C1026c("Gamma", 42240, 5), new C1026c("DNGVersion", 50706, 1), new C1026c("DefaultCropSize", 50720, 3, 4)};
        f4057I = c1026cArr3;
        C1026c[] c1026cArr4 = {new C1026c("GPSVersionID", 0, 1), new C1026c("GPSLatitudeRef", 1, 2), new C1026c("GPSLatitude", 2, 5), new C1026c("GPSLongitudeRef", 3, 2), new C1026c("GPSLongitude", 4, 5), new C1026c("GPSAltitudeRef", 5, 1), new C1026c("GPSAltitude", 6, 5), new C1026c("GPSTimeStamp", 7, 5), new C1026c("GPSSatellites", 8, 2), new C1026c("GPSStatus", 9, 2), new C1026c("GPSMeasureMode", 10, 2), new C1026c("GPSDOP", 11, 5), new C1026c("GPSSpeedRef", 12, 2), new C1026c("GPSSpeed", 13, 5), new C1026c("GPSTrackRef", 14, 2), new C1026c("GPSTrack", 15, 5), new C1026c("GPSImgDirectionRef", 16, 2), new C1026c("GPSImgDirection", 17, 5), new C1026c("GPSMapDatum", 18, 2), new C1026c("GPSDestLatitudeRef", 19, 2), new C1026c("GPSDestLatitude", 20, 5), new C1026c("GPSDestLongitudeRef", 21, 2), new C1026c("GPSDestLongitude", 22, 5), new C1026c("GPSDestBearingRef", 23, 2), new C1026c("GPSDestBearing", 24, 5), new C1026c("GPSDestDistanceRef", 25, 2), new C1026c("GPSDestDistance", 26, 5), new C1026c("GPSProcessingMethod", 27, 7), new C1026c("GPSAreaInformation", 28, 7), new C1026c("GPSDateStamp", 29, 2), new C1026c("GPSDifferential", 30, 3), new C1026c("GPSHPositioningError", 31, 5)};
        f4058J = c1026cArr4;
        C1026c[] c1026cArr5 = {new C1026c("InteroperabilityIndex", 1, 2)};
        f4059K = c1026cArr5;
        C1026c[] c1026cArr6 = {new C1026c("NewSubfileType", 254, 4), new C1026c("SubfileType", 255, 4), new C1026c("ThumbnailImageWidth", PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 3, 4), new C1026c("ThumbnailImageLength", 257, 3, 4), new C1026c("BitsPerSample", 258, 3), new C1026c("Compression", 259, 3), new C1026c("PhotometricInterpretation", 262, 3), new C1026c("ImageDescription", 270, 2), new C1026c("Make", 271, 2), new C1026c("Model", 272, 2), new C1026c("StripOffsets", 273, 3, 4), new C1026c("ThumbnailOrientation", 274, 3), new C1026c("SamplesPerPixel", 277, 3), new C1026c("RowsPerStrip", 278, 3, 4), new C1026c("StripByteCounts", 279, 3, 4), new C1026c("XResolution", 282, 5), new C1026c("YResolution", 283, 5), new C1026c("PlanarConfiguration", 284, 3), new C1026c("ResolutionUnit", 296, 3), new C1026c("TransferFunction", VastError.ERROR_CODE_BAD_URI, 3), new C1026c("Software", 305, 2), new C1026c("DateTime", 306, 2), new C1026c("Artist", 315, 2), new C1026c("WhitePoint", 318, 5), new C1026c("PrimaryChromaticities", 319, 5), new C1026c("SubIFDPointer", 330, 4), new C1026c("JPEGInterchangeFormat", 513, 4), new C1026c("JPEGInterchangeFormatLength", 514, 4), new C1026c("YCbCrCoefficients", 529, 5), new C1026c("YCbCrSubSampling", 530, 3), new C1026c("YCbCrPositioning", 531, 3), new C1026c("ReferenceBlackWhite", 532, 5), new C1026c("Copyright", 33432, 2), new C1026c("ExifIFDPointer", 34665, 4), new C1026c("GPSInfoIFDPointer", 34853, 4), new C1026c("DNGVersion", 50706, 1), new C1026c("DefaultCropSize", 50720, 3, 4)};
        f4060L = c1026cArr6;
        C1026c[] c1026cArr7 = {new C1026c("ThumbnailImage", PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 7), new C1026c("CameraSettingsIFDPointer", 8224, 4), new C1026c("ImageProcessingIFDPointer", 8256, 4)};
        f4062N = c1026cArr7;
        C1026c[] c1026cArr8 = {new C1026c("PreviewImageStart", 257, 4), new C1026c("PreviewImageLength", 258, 4)};
        f4063O = c1026cArr8;
        C1026c[] c1026cArr9 = {new C1026c("AspectFrame", 4371, 3)};
        f4064P = c1026cArr9;
        C1026c[] c1026cArr10 = {new C1026c("ColorSpace", 55, 3)};
        f4065Q = c1026cArr10;
        ?? r0 = {c1026cArr2, c1026cArr3, c1026cArr4, c1026cArr5, c1026cArr6, c1026cArr2, c1026cArr7, c1026cArr8, c1026cArr9, c1026cArr10};
        f4083h = r0;
        f4069U = new HashMap[r0.length];
        f4070V = new HashMap[r0.length];
        Charset forName = Charset.forName("US-ASCII");
        f4084i = forName;
        f4085j = "Exif����".getBytes(forName);
        f4073Y = "http://ns.adobe.com/xap/1.0/��".getBytes(forName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        f4055G = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            C1026c[][] c1026cArr11 = f4083h;
            if (i >= c1026cArr11.length) {
                HashMap<Integer, Integer> hashMap = f4072X;
                C1026c[] c1026cArr12 = f4066R;
                hashMap.put(Integer.valueOf(c1026cArr12[0].f4137a), 5);
                hashMap.put(Integer.valueOf(c1026cArr12[1].f4137a), 1);
                hashMap.put(Integer.valueOf(c1026cArr12[2].f4137a), 2);
                hashMap.put(Integer.valueOf(c1026cArr12[3].f4137a), 3);
                hashMap.put(Integer.valueOf(c1026cArr12[4].f4137a), 7);
                hashMap.put(Integer.valueOf(c1026cArr12[5].f4137a), 8);
                f4075av = Pattern.compile(".*[1-9].*");
                f4076aw = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            f4069U[i] = new HashMap<>();
            f4070V[i] = new HashMap<>();
            for (C1026c c1026c : c1026cArr11[i]) {
                f4069U[i].put(Integer.valueOf(c1026c.f4137a), c1026c);
                f4070V[i].put(c1026c.f4138b, c1026c);
            }
            i++;
        }
    }

    public C1022a(File file) throws IOException {
        C1026c[][] c1026cArr = f4083h;
        this.f4107ae = new HashMap[c1026cArr.length];
        this.f4108af = new HashSet(c1026cArr.length);
        this.f4109ag = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(file, "file cannot be null");
        m43791d(file.getAbsolutePath());
    }

    public C1022a(FileDescriptor fileDescriptor) throws IOException {
        FileInputStream fileInputStream;
        Throwable th;
        C1026c[][] c1026cArr = f4083h;
        this.f4107ae = new HashMap[c1026cArr.length];
        this.f4108af = new HashSet(c1026cArr.length);
        this.f4109ag = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(fileDescriptor, "fileDescriptor cannot be null");
        this.f4104ab = null;
        this.f4102Z = null;
        boolean z = false;
        if (Build.VERSION.SDK_INT < 21 || !m43813a(fileDescriptor)) {
            this.f4103aa = null;
        } else {
            this.f4103aa = fileDescriptor;
            try {
                fileDescriptor = Os.dup(fileDescriptor);
                z = true;
            } catch (Exception e) {
                throw new IOException("Failed to duplicate file descriptor", e);
            }
        }
        try {
            fileInputStream = new FileInputStream(fileDescriptor);
            try {
                m43812a((InputStream) fileInputStream);
                m43814a((Closeable) fileInputStream);
                if (!z) {
                    return;
                }
                m43801b(fileDescriptor);
            } catch (Throwable th2) {
                th = th2;
                m43814a((Closeable) fileInputStream);
                if (z) {
                    m43801b(fileDescriptor);
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public C1022a(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    public C1022a(InputStream inputStream, int i) throws IOException {
        this(inputStream, i != 1 ? false : true);
    }

    private C1022a(InputStream inputStream, boolean z) throws IOException {
        BufferedInputStream bufferedInputStream;
        C1026c[][] c1026cArr = f4083h;
        this.f4107ae = new HashMap[c1026cArr.length];
        this.f4108af = new HashSet(c1026cArr.length);
        this.f4109ag = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(inputStream, "inputStream cannot be null");
        this.f4102Z = null;
        if (!z) {
            if (inputStream instanceof AssetManager.AssetInputStream) {
                this.f4104ab = (AssetManager.AssetInputStream) inputStream;
                this.f4103aa = null;
            } else {
                bufferedInputStream = inputStream;
                if (inputStream instanceof FileInputStream) {
                    FileInputStream fileInputStream = (FileInputStream) inputStream;
                    bufferedInputStream = inputStream;
                    if (m43813a(fileInputStream.getFD())) {
                        this.f4104ab = null;
                        this.f4103aa = fileInputStream.getFD();
                    }
                }
            }
            m43812a(inputStream);
        }
        bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        if (!m43815a(bufferedInputStream)) {
            Log.w("ExifInterface", "Given data does not follow the structure of an Exif-only data.");
            return;
        }
        this.f4106ad = true;
        this.f4104ab = null;
        this.f4103aa = null;
        inputStream = bufferedInputStream;
        m43812a(inputStream);
    }

    public C1022a(String str) throws IOException {
        C1026c[][] c1026cArr = f4083h;
        this.f4107ae = new HashMap[c1026cArr.length];
        this.f4108af = new HashSet(c1026cArr.length);
        this.f4109ag = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(str, "filename cannot be null");
        m43791d(str);
    }

    /* renamed from: a */
    private void m43821a() {
        for (int i = 0; i < this.f4107ae.length; i++) {
            StringBuilder sb = new StringBuilder("The size of tag group[");
            sb.append(i);
            sb.append("]: ");
            sb.append(this.f4107ae[i].size());
            for (Map.Entry<String, C1025b> entry : this.f4107ae[i].entrySet()) {
                C1025b value = entry.getValue();
                StringBuilder sb2 = new StringBuilder("tagName: ");
                sb2.append(entry.getKey());
                sb2.append(", tagType: ");
                sb2.append(value.toString());
                sb2.append(", tagValue: '");
                sb2.append(value.m43773c(this.f4109ag));
                sb2.append("'");
            }
        }
    }

    /* renamed from: a */
    private void m43820a(int i, int i2) throws IOException {
        if (this.f4107ae[i].isEmpty() || this.f4107ae[i2].isEmpty()) {
            return;
        }
        C1025b c1025b = this.f4107ae[i].get("ImageLength");
        C1025b c1025b2 = this.f4107ae[i].get("ImageWidth");
        C1025b c1025b3 = this.f4107ae[i2].get("ImageLength");
        C1025b c1025b4 = this.f4107ae[i2].get("ImageWidth");
        if (c1025b == null || c1025b2 == null) {
            if (f4086k) {
            }
        } else if (c1025b3 == null || c1025b4 == null) {
            if (!f4086k) {
            }
        } else {
            int m43774b = c1025b.m43774b(this.f4109ag);
            int m43774b2 = c1025b2.m43774b(this.f4109ag);
            int m43774b3 = c1025b3.m43774b(this.f4109ag);
            int m43774b4 = c1025b4.m43774b(this.f4109ag);
            if (m43774b >= m43774b3 || m43774b2 >= m43774b4) {
                return;
            }
            HashMap<String, C1025b>[] hashMapArr = this.f4107ae;
            HashMap<String, C1025b> hashMap = hashMapArr[i];
            hashMapArr[i] = hashMapArr[i2];
            hashMapArr[i2] = hashMap;
        }
    }

    /* renamed from: a */
    private void m43819a(C1024a c1024a) throws IOException {
        C1025b c1025b;
        m43818a(c1024a, c1024a.available());
        m43803b(c1024a, 0);
        m43792d(c1024a, 0);
        m43792d(c1024a, 5);
        m43792d(c1024a, 4);
        m43798c();
        if (this.f4105ac != 8 || (c1025b = this.f4107ae[1].get("MakerNote")) == null) {
            return;
        }
        C1024a c1024a2 = new C1024a(c1025b.f4136d);
        c1024a2.f4129a = this.f4109ag;
        c1024a2.m43783a(6L);
        m43803b(c1024a2, 9);
        C1025b c1025b2 = this.f4107ae[9].get("ColorSpace");
        if (c1025b2 == null) {
            return;
        }
        this.f4107ae[1].put("ColorSpace", c1025b2);
    }

    /* renamed from: a */
    private void m43818a(C1024a c1024a, int i) throws IOException {
        ByteOrder m43789e = m43789e(c1024a);
        this.f4109ag = m43789e;
        c1024a.f4129a = m43789e;
        int readUnsignedShort = c1024a.readUnsignedShort();
        int i2 = this.f4105ac;
        if (i2 != 7 && i2 != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = c1024a.readInt();
        if (readInt < 8 || readInt >= i) {
            throw new IOException("Invalid first Ifd offset: ".concat(String.valueOf(readInt)));
        }
        int i3 = readInt - 8;
        if (i3 > 0 && c1024a.skipBytes(i3) != i3) {
            throw new IOException("Couldn't jump to first Ifd: ".concat(String.valueOf(i3)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x015a A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02b8 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m43817a(androidx.p044f.p045a.C1022a.C1024a r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p044f.p045a.C1022a.m43817a(androidx.f.a.a$a, int, int):void");
    }

    /* renamed from: a */
    private void m43816a(C1024a c1024a, HashMap hashMap) throws IOException {
        C1025b c1025b = (C1025b) hashMap.get("JPEGInterchangeFormat");
        C1025b c1025b2 = (C1025b) hashMap.get("JPEGInterchangeFormatLength");
        if (c1025b == null || c1025b2 == null) {
            return;
        }
        int m43774b = c1025b.m43774b(this.f4109ag);
        int m43774b2 = c1025b2.m43774b(this.f4109ag);
        int i = m43774b;
        if (this.f4105ac == 7) {
            i = m43774b + this.f4118ap;
        }
        int min = Math.min(m43774b2, c1024a.f4130b - i);
        if (i > 0 && min > 0) {
            this.f4110ah = true;
            int i2 = this.f4117ao + i;
            this.f4113ak = i2;
            this.f4114al = min;
            if (this.f4102Z == null && this.f4104ab == null && this.f4103aa == null) {
                byte[] bArr = new byte[min];
                c1024a.m43783a(i2);
                c1024a.readFully(bArr);
                this.f4115am = bArr;
            }
        }
        if (!f4086k) {
            return;
        }
        StringBuilder sb = new StringBuilder("Setting thumbnail attributes with offset: ");
        sb.append(i);
        sb.append(", length: ");
        sb.append(min);
    }

    /* renamed from: a */
    private static void m43814a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:175:0x05ca, code lost:
        if (r0 != 7) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0637, code lost:
        if (java.util.Arrays.equals(r0, androidx.p044f.p045a.C1022a.f4078c) != false) goto L181;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0311 A[Catch: all -> 0x0361, all -> 0x0361, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0324 A[Catch: all -> 0x0361, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0653 A[Catch: all -> 0x067e, IOException -> 0x0682, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x0682, blocks: (B:3:0x000a, B:5:0x0012, B:7:0x0027, B:9:0x002e, B:13:0x0066, B:17:0x0073, B:21:0x0080, B:25:0x008e, B:29:0x009c, B:33:0x00a9, B:38:0x00b8, B:39:0x00bd, B:39:0x00bd, B:40:0x00c0, B:42:0x00cf, B:44:0x0123, B:45:0x012c, B:46:0x0135, B:47:0x013f, B:117:0x035b, B:119:0x0362, B:120:0x0368, B:122:0x036a, B:124:0x0381, B:126:0x038d, B:130:0x03b4, B:131:0x03c5, B:132:0x03ce, B:134:0x03e8, B:136:0x042d, B:137:0x0437, B:139:0x0440, B:141:0x0448, B:145:0x0478, B:147:0x0495, B:149:0x04a9, B:151:0x04b9, B:161:0x050b, B:162:0x053d, B:163:0x055e, B:164:0x0569, B:165:0x0572, B:167:0x0599, B:169:0x05ae, B:176:0x05d0, B:177:0x05da, B:179:0x05e9, B:183:0x060a, B:185:0x0612, B:187:0x0621, B:190:0x062f, B:195:0x0640, B:201:0x0653, B:202:0x065d, B:204:0x066b), top: B:225:0x000a, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0206 A[Catch: all -> 0x0361, TRY_ENTER, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0223 A[Catch: all -> 0x0361, TRY_ENTER, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0240 A[Catch: all -> 0x0361, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x029f A[Catch: all -> 0x0361, TRY_ENTER, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m43812a(java.io.InputStream r6) {
        /*
            Method dump skipped, instructions count: 1722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p044f.p045a.C1022a.m43812a(java.io.InputStream):void");
    }

    /* renamed from: a */
    private void m43807a(byte[] bArr, int i) throws IOException {
        C1024a c1024a = new C1024a(bArr);
        m43818a(c1024a, bArr.length);
        m43803b(c1024a, i);
    }

    /* renamed from: a */
    private static boolean m43815a(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArr = f4085j;
        bufferedInputStream.mark(bArr.length);
        byte[] bArr2 = new byte[bArr.length];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i = 0;
        while (true) {
            byte[] bArr3 = f4085j;
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

    /* renamed from: a */
    private static boolean m43813a(FileDescriptor fileDescriptor) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    private boolean m43809a(HashMap hashMap) throws IOException {
        C1025b c1025b = (C1025b) hashMap.get("ImageLength");
        C1025b c1025b2 = (C1025b) hashMap.get("ImageWidth");
        if (c1025b == null || c1025b2 == null) {
            return false;
        }
        return c1025b.m43774b(this.f4109ag) <= 512 && c1025b2.m43774b(this.f4109ag) <= 512;
    }

    /* renamed from: a */
    private static boolean m43808a(byte[] bArr) throws IOException {
        int i = 0;
        while (true) {
            byte[] bArr2 = f4079d;
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

    /* renamed from: a */
    private static boolean m43806a(byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr.length >= bArr2.length) {
            for (int i = 0; i < bArr2.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: a */
    private static long[] m43811a(Object obj) {
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

    /* renamed from: b */
    private C1025b m43800b(String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        String str2 = str;
        if ("ISOSpeedRatings".equals(str)) {
            str2 = "PhotographicSensitivity";
        }
        for (int i = 0; i < f4083h.length; i++) {
            C1025b c1025b = this.f4107ae[i].get(str2);
            if (c1025b != null) {
                return c1025b;
            }
        }
        return null;
    }

    /* renamed from: b */
    private void m43805b() {
        String m43795c = m43795c("DateTimeOriginal");
        if (m43795c != null && m43795c("DateTime") == null) {
            this.f4107ae[0].put("DateTime", C1025b.m43779a(m43795c));
        }
        if (m43795c("ImageWidth") == null) {
            this.f4107ae[0].put("ImageWidth", C1025b.m43781a(0L, this.f4109ag));
        }
        if (m43795c("ImageLength") == null) {
            this.f4107ae[0].put("ImageLength", C1025b.m43781a(0L, this.f4109ag));
        }
        if (m43795c("Orientation") == null) {
            this.f4107ae[0].put("Orientation", C1025b.m43781a(0L, this.f4109ag));
        }
        if (m43795c("LightSource") == null) {
            this.f4107ae[1].put("LightSource", C1025b.m43781a(0L, this.f4109ag));
        }
    }

    /* renamed from: b */
    private void m43804b(C1024a c1024a) throws IOException {
        c1024a.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        c1024a.read(bArr);
        c1024a.skipBytes(4);
        c1024a.read(bArr2);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        m43817a(c1024a, i, 5);
        c1024a.m43783a(i2);
        c1024a.f4129a = ByteOrder.BIG_ENDIAN;
        int readInt = c1024a.readInt();
        for (int i3 = 0; i3 < readInt; i3++) {
            int readUnsignedShort = c1024a.readUnsignedShort();
            int readUnsignedShort2 = c1024a.readUnsignedShort();
            if (readUnsignedShort == f4061M.f4137a) {
                short readShort = c1024a.readShort();
                short readShort2 = c1024a.readShort();
                C1025b m43782a = C1025b.m43782a((int) readShort, this.f4109ag);
                C1025b m43782a2 = C1025b.m43782a((int) readShort2, this.f4109ag);
                this.f4107ae[0].put("ImageLength", m43782a);
                this.f4107ae[0].put("ImageWidth", m43782a2);
                if (!f4086k) {
                    return;
                }
                StringBuilder sb = new StringBuilder("Updated to length: ");
                sb.append((int) readShort);
                sb.append(", width: ");
                sb.append((int) readShort2);
                return;
            }
            c1024a.skipBytes(readUnsignedShort2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0349  */
    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v212, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m43803b(androidx.p044f.p045a.C1022a.C1024a r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p044f.p045a.C1022a.m43803b(androidx.f.a.a$a, int):void");
    }

    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* renamed from: b */
    private void m43802b(C1024a c1024a, HashMap hashMap) throws IOException {
        C1025b c1025b = (C1025b) hashMap.get("StripOffsets");
        C1025b c1025b2 = (C1025b) hashMap.get("StripByteCounts");
        if (c1025b == null || c1025b2 == null) {
            return;
        }
        long[] m43811a = m43811a(c1025b.m43778a(this.f4109ag));
        long[] m43811a2 = m43811a(c1025b2.m43778a(this.f4109ag));
        if (m43811a == null || m43811a.length == 0) {
            Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
        } else if (m43811a2 == null || m43811a2.length == 0) {
            Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
        } else if (m43811a.length != m43811a2.length) {
            Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
        } else {
            char c = 0;
            for (long j : m43811a2) {
                c += j;
            }
            int i = c;
            byte[] bArr = new byte[i];
            this.f4112aj = true;
            this.f4111ai = true;
            this.f4110ah = true;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < m43811a.length; i4++) {
                int i5 = (int) m43811a[i4];
                int i6 = (int) m43811a2[i4];
                if (i4 < m43811a.length - 1 && i5 + i6 != m43811a[i4 + 1]) {
                    this.f4112aj = false;
                }
                int i7 = i5 - i2;
                c1024a.m43783a(i7);
                byte[] bArr2 = new byte[i6];
                c1024a.read(bArr2);
                i2 = i2 + i7 + i6;
                System.arraycopy(bArr2, 0, bArr, i3, i6);
                i3 += i6;
            }
            this.f4115am = bArr;
            if (!this.f4112aj) {
                return;
            }
            this.f4113ak = ((int) m43811a[0]) + this.f4117ao;
            this.f4114al = i;
        }
    }

    /* renamed from: b */
    private static void m43801b(FileDescriptor fileDescriptor) {
        if (Build.VERSION.SDK_INT < 21) {
            Log.e("ExifInterface", "closeFileDescriptor is called in API < 21, which must be wrong.");
            return;
        }
        try {
            Os.close(fileDescriptor);
        } catch (Exception e) {
            Log.e("ExifInterface", "Error closing fd.");
        }
    }

    /* renamed from: b */
    private static boolean m43799b(byte[] bArr) throws IOException {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i = 0; i < bytes.length; i++) {
            if (bArr[i] != bytes[i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v62, types: [double] */
    /* JADX WARN: Type inference failed for: r0v72, types: [double] */
    /* JADX WARN: Type inference failed for: r0v75, types: [double] */
    /* renamed from: c */
    private String m43795c(String str) {
        char c;
        C1025b m43800b = m43800b(str);
        if (m43800b != null) {
            if (!f4071W.contains(str)) {
                return m43800b.m43773c(this.f4109ag);
            }
            if (str.equals("GPSTimeStamp")) {
                if (m43800b.f4133a != 5 && m43800b.f4133a != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + m43800b.f4133a);
                    return null;
                }
                C1027d[] c1027dArr = (C1027d[]) m43800b.m43778a(this.f4109ag);
                if (c1027dArr != null && c1027dArr.length == 3) {
                    return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) c1027dArr[0].f4141a) / ((float) c1027dArr[0].f4142b))), Integer.valueOf((int) (((float) c1027dArr[1].f4141a) / ((float) c1027dArr[1].f4142b))), Integer.valueOf((int) (((float) c1027dArr[2].f4141a) / ((float) c1027dArr[2].f4142b))));
                }
                Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(c1027dArr));
                return null;
            }
            try {
                Object m43778a = m43800b.m43778a(this.f4109ag);
                if (m43778a == null) {
                    throw new NumberFormatException("NULL can't be converted to a double value");
                }
                if (m43778a instanceof String) {
                    c = Double.parseDouble((String) m43778a);
                } else if (m43778a instanceof long[]) {
                    long[] jArr = (long[]) m43778a;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    c = jArr[0];
                } else if (m43778a instanceof int[]) {
                    int[] iArr = (int[]) m43778a;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    c = iArr[0];
                } else if (m43778a instanceof double[]) {
                    double[] dArr = (double[]) m43778a;
                    if (dArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    c = dArr[0];
                } else if (!(m43778a instanceof C1027d[])) {
                    throw new NumberFormatException("Couldn't find a double value");
                } else {
                    C1027d[] c1027dArr2 = (C1027d[]) m43778a;
                    if (c1027dArr2.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    C1027d c1027d = c1027dArr2[0];
                    c = c1027d.f4141a / c1027d.f4142b;
                }
                return Double.toString(c);
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: c */
    private void m43798c() throws IOException {
        m43820a(0, 5);
        m43820a(0, 4);
        m43820a(5, 4);
        C1025b c1025b = this.f4107ae[1].get("PixelXDimension");
        C1025b c1025b2 = this.f4107ae[1].get("PixelYDimension");
        if (c1025b != null && c1025b2 != null) {
            this.f4107ae[0].put("ImageWidth", c1025b);
            this.f4107ae[0].put("ImageLength", c1025b2);
        }
        if (this.f4107ae[4].isEmpty() && m43809a((HashMap) this.f4107ae[5])) {
            HashMap<String, C1025b>[] hashMapArr = this.f4107ae;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        m43809a((HashMap) this.f4107ae[4]);
    }

    /* renamed from: c */
    private void m43797c(C1024a c1024a) throws IOException {
        if (f4086k) {
            new StringBuilder("getPngAttributes starting with: ").append(c1024a);
        }
        c1024a.f4129a = ByteOrder.BIG_ENDIAN;
        byte[] bArr = f4094s;
        c1024a.skipBytes(bArr.length);
        int length = bArr.length;
        int i = 0;
        while (true) {
            try {
                int i2 = length + i;
                int readInt = c1024a.readInt();
                byte[] bArr2 = new byte[4];
                if (c1024a.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i3 = i2 + 4 + 4;
                if (i3 == 16 && !Arrays.equals(bArr2, f4096u)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f4097v)) {
                    return;
                }
                if (Arrays.equals(bArr2, f4095t)) {
                    byte[] bArr3 = new byte[readInt];
                    if (c1024a.read(bArr3) != readInt) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + m43785h(bArr2));
                    }
                    int readInt2 = c1024a.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == readInt2) {
                        this.f4117ao = i3;
                        m43807a(bArr3, 0);
                        m43798c();
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                }
                int i4 = readInt + 4;
                c1024a.skipBytes(i4);
                length = i3;
                i = i4;
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    /* renamed from: c */
    private void m43796c(C1024a c1024a, int i) throws IOException {
        C1025b c1025b;
        C1025b c1025b2 = this.f4107ae[i].get("ImageLength");
        C1025b c1025b3 = this.f4107ae[i].get("ImageWidth");
        if ((c1025b2 == null || c1025b3 == null) && (c1025b = this.f4107ae[i].get("JPEGInterchangeFormat")) != null) {
            m43817a(c1024a, c1025b.m43774b(this.f4109ag), i);
        }
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* renamed from: c */
    private static boolean m43794c(byte[] bArr) throws IOException {
        C1024a c1024a;
        C1024a c1024a2;
        Throwable th;
        boolean z;
        try {
            c1024a2 = new C1024a(bArr);
            try {
                char readInt = c1024a2.readInt();
                byte[] bArr2 = new byte[4];
                c1024a2.read(bArr2);
                if (!Arrays.equals(bArr2, f4089n)) {
                    c1024a2.close();
                    return false;
                }
                char c = 16;
                if (readInt == 1) {
                    ?? readLong = c1024a2.readLong();
                    readInt = readLong;
                    if (readLong < 16) {
                        c1024a2.close();
                        return false;
                    }
                } else {
                    c = '\b';
                }
                char c2 = readInt;
                if (readInt > 5000) {
                    c2 = 5000;
                }
                long j = c2 - c;
                if (j < 8) {
                    c1024a2.close();
                    return false;
                }
                byte[] bArr3 = new byte[4];
                char c3 = 0;
                boolean z2 = false;
                boolean z3 = false;
                while (true) {
                    boolean z4 = z3;
                    if (c3 >= j / 4) {
                        c1024a2.close();
                        return false;
                    } else if (c1024a2.read(bArr3) != 4) {
                        c1024a2.close();
                        return false;
                    } else {
                        boolean z5 = z2;
                        boolean z6 = z4;
                        if (c3 != 1) {
                            if (Arrays.equals(bArr3, f4090o)) {
                                z = true;
                            } else {
                                z = z2;
                                if (Arrays.equals(bArr3, f4091p)) {
                                    z4 = true;
                                    z = z2;
                                }
                            }
                            z5 = z;
                            z6 = z4;
                            if (z) {
                                z5 = z;
                                z6 = z4;
                                if (z4) {
                                    c1024a2.close();
                                    return true;
                                }
                            } else {
                                continue;
                            }
                        }
                        c3++;
                        z2 = z5;
                        z3 = z6;
                    }
                }
            } catch (Exception e) {
                c1024a = c1024a2;
                if (c1024a == null) {
                    return false;
                }
                c1024a.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                if (c1024a2 != null) {
                    c1024a2.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            c1024a = null;
        } catch (Throwable th3) {
            th = th3;
            c1024a2 = null;
        }
    }

    /* renamed from: d */
    private void m43793d(C1024a c1024a) throws IOException {
        if (f4086k) {
            new StringBuilder("getWebpAttributes starting with: ").append(c1024a);
        }
        c1024a.f4129a = ByteOrder.LITTLE_ENDIAN;
        c1024a.skipBytes(f4098w.length);
        int readInt = c1024a.readInt() + 8;
        int skipBytes = c1024a.skipBytes(f4099x.length);
        int i = 8;
        while (true) {
            try {
                int i2 = skipBytes + i;
                byte[] bArr = new byte[4];
                if (c1024a.read(bArr) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int readInt2 = c1024a.readInt();
                int i3 = i2 + 4 + 4;
                if (Arrays.equals(f4100y, bArr)) {
                    byte[] bArr2 = new byte[readInt2];
                    if (c1024a.read(bArr2) != readInt2) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + m43785h(bArr));
                    }
                    this.f4117ao = i3;
                    m43807a(bArr2, 0);
                    this.f4117ao = i3;
                    return;
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
                int skipBytes2 = c1024a.skipBytes(i4);
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

    /* renamed from: d */
    private void m43792d(C1024a c1024a, int i) throws IOException {
        C1025b c1025b;
        C1025b c1025b2;
        C1025b c1025b3 = this.f4107ae[i].get("DefaultCropSize");
        C1025b c1025b4 = this.f4107ae[i].get("SensorTopBorder");
        C1025b c1025b5 = this.f4107ae[i].get("SensorLeftBorder");
        C1025b c1025b6 = this.f4107ae[i].get("SensorBottomBorder");
        C1025b c1025b7 = this.f4107ae[i].get("SensorRightBorder");
        if (c1025b3 == null) {
            if (c1025b4 == null || c1025b5 == null || c1025b6 == null || c1025b7 == null) {
                m43796c(c1024a, i);
                return;
            }
            int m43774b = c1025b4.m43774b(this.f4109ag);
            int m43774b2 = c1025b6.m43774b(this.f4109ag);
            int m43774b3 = c1025b7.m43774b(this.f4109ag);
            int m43774b4 = c1025b5.m43774b(this.f4109ag);
            if (m43774b2 <= m43774b || m43774b3 <= m43774b4) {
                return;
            }
            C1025b m43782a = C1025b.m43782a(m43774b2 - m43774b, this.f4109ag);
            C1025b m43782a2 = C1025b.m43782a(m43774b3 - m43774b4, this.f4109ag);
            this.f4107ae[i].put("ImageLength", m43782a);
            this.f4107ae[i].put("ImageWidth", m43782a2);
            return;
        }
        if (c1025b3.f4133a == 5) {
            C1027d[] c1027dArr = (C1027d[]) c1025b3.m43778a(this.f4109ag);
            if (c1027dArr == null || c1027dArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(c1027dArr));
                return;
            }
            c1025b2 = C1025b.m43780a(c1027dArr[0], this.f4109ag);
            c1025b = C1025b.m43780a(c1027dArr[1], this.f4109ag);
        } else {
            int[] iArr = (int[]) c1025b3.m43778a(this.f4109ag);
            if (iArr == null || iArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
            c1025b2 = C1025b.m43782a(iArr[0], this.f4109ag);
            c1025b = C1025b.m43782a(iArr[1], this.f4109ag);
        }
        this.f4107ae[i].put("ImageWidth", c1025b2);
        this.f4107ae[i].put("ImageLength", c1025b);
    }

    /* renamed from: d */
    private void m43791d(String str) throws IOException {
        Throwable th;
        Objects.requireNonNull(str, "filename cannot be null");
        FileInputStream fileInputStream = null;
        this.f4104ab = null;
        this.f4102Z = str;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                if (m43813a(fileInputStream2.getFD())) {
                    this.f4103aa = fileInputStream2.getFD();
                } else {
                    this.f4103aa = null;
                }
                m43812a((InputStream) fileInputStream2);
                m43814a((Closeable) fileInputStream2);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                m43814a((Closeable) fileInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: d */
    private boolean m43790d(byte[] bArr) throws IOException {
        C1024a c1024a;
        Throwable th;
        boolean z = false;
        try {
            c1024a = new C1024a(bArr);
            try {
                ByteOrder m43789e = m43789e(c1024a);
                this.f4109ag = m43789e;
                c1024a.f4129a = m43789e;
                short readShort = c1024a.readShort();
                if (readShort == 20306 || readShort == 21330) {
                    z = true;
                }
                c1024a.close();
                return z;
            } catch (Exception e) {
                if (c1024a == null) {
                    return false;
                }
                c1024a.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                if (c1024a != null) {
                    c1024a.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            c1024a = null;
        } catch (Throwable th3) {
            th = th3;
            c1024a = null;
        }
    }

    /* renamed from: e */
    private static ByteOrder m43789e(C1024a c1024a) throws IOException {
        short readShort = c1024a.readShort();
        if (readShort != 18761) {
            if (readShort == 19789) {
                return ByteOrder.BIG_ENDIAN;
            }
            throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
        }
        return ByteOrder.LITTLE_ENDIAN;
    }

    /* renamed from: e */
    private boolean m43788e(byte[] bArr) throws IOException {
        C1024a c1024a;
        C1024a c1024a2;
        Throwable th;
        boolean z = false;
        try {
            c1024a2 = new C1024a(bArr);
            try {
                ByteOrder m43789e = m43789e(c1024a2);
                this.f4109ag = m43789e;
                c1024a2.f4129a = m43789e;
                if (c1024a2.readShort() == 85) {
                    z = true;
                }
                c1024a2.close();
                return z;
            } catch (Exception e) {
                c1024a = c1024a2;
                if (c1024a == null) {
                    return false;
                }
                c1024a.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                if (c1024a2 != null) {
                    c1024a2.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            c1024a = null;
        } catch (Throwable th3) {
            th = th3;
            c1024a2 = null;
        }
    }

    /* renamed from: f */
    private static boolean m43787f(byte[] bArr) throws IOException {
        int i = 0;
        while (true) {
            byte[] bArr2 = f4094s;
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

    /* renamed from: g */
    private static boolean m43786g(byte[] bArr) throws IOException {
        int i = 0;
        while (true) {
            byte[] bArr2 = f4098w;
            if (i >= bArr2.length) {
                int i2 = 0;
                while (true) {
                    byte[] bArr3 = f4099x;
                    if (i2 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[f4098w.length + i2 + 4] != bArr3[i2]) {
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

    /* renamed from: h */
    private static String m43785h(byte[] bArr) {
        StringBuilder sb = new StringBuilder(8);
        for (int i = 0; i < 4; i++) {
            sb.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final int m43810a(String str) {
        C1025b m43800b = m43800b(str);
        if (m43800b == null) {
            return 1;
        }
        try {
            return m43800b.m43774b(this.f4109ag);
        } catch (NumberFormatException e) {
            return 1;
        }
    }
}
