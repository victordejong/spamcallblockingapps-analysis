package androidx.f.a;

import android.content.res.AssetManager;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
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
import java.util.regex.Pattern;
import java.util.zip.CRC32;
/* loaded from: classes-dex2jar.jar:androidx/f/a/a.class */
public final class a {
    private static SimpleDateFormat G;
    private static final c[] H;
    private static final c[] I;
    private static final c[] J;
    private static final c[] K;
    private static final c[] L;
    private static final c[] N;
    private static final c[] O;
    private static final c[] P;
    private static final c[] Q;
    private static final HashMap<Integer, c>[] U;
    private static final HashMap<String, c>[] V;
    private static final byte[] Y;
    private static final Pattern av;
    private static final Pattern aw;
    static final c[][] h;
    static final Charset i;
    static final byte[] j;
    private String Z;
    private FileDescriptor aa;
    private AssetManager.AssetInputStream ab;
    private int ac;
    private boolean ad;
    private final HashMap<String, b>[] ae;
    private Set<Integer> af;
    private ByteOrder ag;
    private boolean ah;
    private boolean ai;
    private boolean aj;
    private int ak;
    private int al;
    private byte[] am;
    private int an;
    private int ao;
    private int ap;
    private int aq;
    private int ar;
    private int as;
    private boolean at;
    private boolean au;
    private static final boolean k = Log.isLoggable("ExifInterface", 3);
    private static final List<Integer> l = Arrays.asList(1, 6, 3, 8);
    private static final List<Integer> m = Arrays.asList(2, 7, 4, 5);

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f2137a = {8, 8, 8};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f2138b = {4};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f2139c = {8};

    /* renamed from: d  reason: collision with root package name */
    static final byte[] f2140d = {-1, -40, -1};
    private static final byte[] n = {102, 116, 121, 112};
    private static final byte[] o = {109, 105, 102, 49};
    private static final byte[] p = {104, 101, 105, 99};
    private static final byte[] q = {79, 76, 89, 77, 80, 0};
    private static final byte[] r = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static final byte[] s = {-119, 80, 78, 71, 13, 10, 26, 10};
    private static final byte[] t = {101, 88, 73, 102};
    private static final byte[] u = {73, 72, 68, 82};
    private static final byte[] v = {73, 69, 78, 68};
    private static final byte[] w = {82, 73, 70, 70};
    private static final byte[] x = {87, 69, 66, 80};
    private static final byte[] y = {69, 88, 73, 70};
    private static final byte[] z = {-99, 1, 42};
    private static final byte[] A = "VP8X".getBytes(Charset.defaultCharset());
    private static final byte[] B = "VP8L".getBytes(Charset.defaultCharset());
    private static final byte[] C = "VP8 ".getBytes(Charset.defaultCharset());
    private static final byte[] D = "ANIM".getBytes(Charset.defaultCharset());
    private static final byte[] E = "ANMF".getBytes(Charset.defaultCharset());
    private static final byte[] F = "XMP ".getBytes(Charset.defaultCharset());
    static final String[] e = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    static final int[] f = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] g = {65, 83, 67, 73, 73, 0, 0, 0};
    private static final c M = new c("StripOffsets", 273, 3);
    private static final c[] R = {new c("SubIFDPointer", 330, 4), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("InteroperabilityIFDPointer", 40965, 4), new c("CameraSettingsIFDPointer", 8224, 1), new c("ImageProcessingIFDPointer", 8256, 1)};
    private static final c S = new c("JPEGInterchangeFormat", 513, 4);
    private static final c T = new c("JPEGInterchangeFormatLength", 514, 4);
    private static final HashSet<String> W = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
    private static final HashMap<Integer, Integer> X = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.f.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a$a.class */
    public static final class C0061a extends InputStream implements DataInput {

        /* renamed from: d  reason: collision with root package name */
        private static final ByteOrder f2144d = ByteOrder.LITTLE_ENDIAN;
        private static final ByteOrder e = ByteOrder.BIG_ENDIAN;

        /* renamed from: a  reason: collision with root package name */
        ByteOrder f2145a;

        /* renamed from: b  reason: collision with root package name */
        final int f2146b;

        /* renamed from: c  reason: collision with root package name */
        int f2147c;
        private DataInputStream f;

        public C0061a(InputStream inputStream) throws IOException {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        C0061a(InputStream inputStream, ByteOrder byteOrder) throws IOException {
            this.f2145a = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f = dataInputStream;
            int available = dataInputStream.available();
            this.f2146b = available;
            this.f2147c = 0;
            this.f.mark(available);
            this.f2145a = byteOrder;
        }

        public C0061a(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }

        public final long a() throws IOException {
            return readInt() & 4294967295L;
        }

        public final void a(long j) throws IOException {
            int i = this.f2147c;
            if (i > j) {
                this.f2147c = 0;
                this.f.reset();
                this.f.mark(this.f2146b);
            } else {
                j -= i;
            }
            int i2 = (int) j;
            if (skipBytes(i2) != i2) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        @Override // java.io.InputStream
        public final int available() throws IOException {
            return this.f.available();
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            this.f2147c++;
            return this.f.read();
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.f.read(bArr, i, i2);
            this.f2147c += read;
            return read;
        }

        @Override // java.io.DataInput
        public final boolean readBoolean() throws IOException {
            this.f2147c++;
            return this.f.readBoolean();
        }

        @Override // java.io.DataInput
        public final byte readByte() throws IOException {
            int i = this.f2147c + 1;
            this.f2147c = i;
            if (i <= this.f2146b) {
                int read = this.f.read();
                if (read >= 0) {
                    return (byte) read;
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final char readChar() throws IOException {
            this.f2147c += 2;
            return this.f.readChar();
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
            int length = this.f2147c + bArr.length;
            this.f2147c = length;
            if (length > this.f2146b) {
                throw new EOFException();
            } else if (this.f.read(bArr, 0, bArr.length) != bArr.length) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.f2147c + i2;
            this.f2147c = i3;
            if (i3 > this.f2146b) {
                throw new EOFException();
            } else if (this.f.read(bArr, i, i2) != i2) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public final int readInt() throws IOException {
            int i = this.f2147c + 4;
            this.f2147c = i;
            if (i <= this.f2146b) {
                int read = this.f.read();
                int read2 = this.f.read();
                int read3 = this.f.read();
                int read4 = this.f.read();
                if ((read | read2 | read3 | read4) >= 0) {
                    ByteOrder byteOrder = this.f2145a;
                    if (byteOrder == f2144d) {
                        return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == e) {
                        return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                    }
                    throw new IOException("Invalid byte order: " + this.f2145a);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readLine() throws IOException {
            return null;
        }

        @Override // java.io.DataInput
        public final long readLong() throws IOException {
            int i = this.f2147c + 8;
            this.f2147c = i;
            if (i <= this.f2146b) {
                int read = this.f.read();
                int read2 = this.f.read();
                int read3 = this.f.read();
                int read4 = this.f.read();
                int read5 = this.f.read();
                int read6 = this.f.read();
                int read7 = this.f.read();
                int read8 = this.f.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                    ByteOrder byteOrder = this.f2145a;
                    if (byteOrder == f2144d) {
                        return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == e) {
                        return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                    }
                    throw new IOException("Invalid byte order: " + this.f2145a);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final short readShort() throws IOException {
            int i = this.f2147c + 2;
            this.f2147c = i;
            if (i <= this.f2146b) {
                int read = this.f.read();
                int read2 = this.f.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f2145a;
                    if (byteOrder == f2144d) {
                        return (short) ((read2 << 8) + read);
                    }
                    if (byteOrder == e) {
                        return (short) ((read << 8) + read2);
                    }
                    throw new IOException("Invalid byte order: " + this.f2145a);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readUTF() throws IOException {
            this.f2147c += 2;
            return this.f.readUTF();
        }

        @Override // java.io.DataInput
        public final int readUnsignedByte() throws IOException {
            this.f2147c++;
            return this.f.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public final int readUnsignedShort() throws IOException {
            int i = this.f2147c + 2;
            this.f2147c = i;
            if (i <= this.f2146b) {
                int read = this.f.read();
                int read2 = this.f.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f2145a;
                    if (byteOrder == f2144d) {
                        return (read2 << 8) + read;
                    }
                    if (byteOrder == e) {
                        return (read << 8) + read2;
                    }
                    throw new IOException("Invalid byte order: " + this.f2145a);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final int skipBytes(int i) throws IOException {
            int min = Math.min(i, this.f2146b - this.f2147c);
            int i2 = 0;
            while (i2 < min) {
                i2 += this.f.skipBytes(min - i2);
            }
            this.f2147c += i2;
            return i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f2148a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2149b;

        /* renamed from: c  reason: collision with root package name */
        public final long f2150c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f2151d;

        b(int i, int i2, long j, byte[] bArr) {
            this.f2148a = i;
            this.f2149b = i2;
            this.f2150c = j;
            this.f2151d = bArr;
        }

        b(int i, int i2, byte[] bArr) {
            this(i, i2, -1L, bArr);
        }

        public static b a(int i, ByteOrder byteOrder) {
            return a(new int[]{i}, byteOrder);
        }

        public static b a(long j, ByteOrder byteOrder) {
            return a(new long[]{j}, byteOrder);
        }

        public static b a(d dVar, ByteOrder byteOrder) {
            return a(new d[]{dVar}, byteOrder);
        }

        public static b a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(a.i);
            return new b(2, bytes.length, bytes);
        }

        private static b a(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.f[3] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i <= 0; i++) {
                wrap.putShort((short) iArr[0]);
            }
            return new b(3, 1, wrap.array());
        }

        private static b a(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.f[4] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i <= 0; i++) {
                wrap.putInt((int) jArr[0]);
            }
            return new b(4, 1, wrap.array());
        }

        private static b a(d[] dVarArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.f[5] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i <= 0; i++) {
                d dVar = dVarArr[0];
                wrap.putInt((int) dVar.f2156a);
                wrap.putInt((int) dVar.f2157b);
            }
            return new b(5, 1, wrap.array());
        }

        /* JADX WARN: Removed duplicated region for block: B:245:0x03d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final java.lang.Object a(java.nio.ByteOrder r10) {
            /*
                Method dump skipped, instructions count: 1002
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.f.a.a.b.a(java.nio.ByteOrder):java.lang.Object");
        }

        public final int b(ByteOrder byteOrder) {
            Object a2 = a(byteOrder);
            if (a2 == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            } else if (a2 instanceof String) {
                return Integer.parseInt((String) a2);
            } else {
                if (a2 instanceof long[]) {
                    long[] jArr = (long[]) a2;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (a2 instanceof int[]) {
                    int[] iArr = (int[]) a2;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a integer value");
                }
            }
        }

        public final String c(ByteOrder byteOrder) {
            Object a2 = a(byteOrder);
            if (a2 == null) {
                return null;
            }
            if (a2 instanceof String) {
                return (String) a2;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            if (a2 instanceof long[]) {
                long[] jArr = (long[]) a2;
                while (i4 < jArr.length) {
                    sb.append(jArr[i4]);
                    int i5 = i4 + 1;
                    i4 = i5;
                    if (i5 != jArr.length) {
                        sb.append(",");
                        i4 = i5;
                    }
                }
                return sb.toString();
            } else if (a2 instanceof int[]) {
                int[] iArr = (int[]) a2;
                while (i < iArr.length) {
                    sb.append(iArr[i]);
                    int i6 = i + 1;
                    i = i6;
                    if (i6 != iArr.length) {
                        sb.append(",");
                        i = i6;
                    }
                }
                return sb.toString();
            } else if (a2 instanceof double[]) {
                double[] dArr = (double[]) a2;
                while (i2 < dArr.length) {
                    sb.append(dArr[i2]);
                    int i7 = i2 + 1;
                    i2 = i7;
                    if (i7 != dArr.length) {
                        sb.append(",");
                        i2 = i7;
                    }
                }
                return sb.toString();
            } else if (!(a2 instanceof d[])) {
                return null;
            } else {
                d[] dVarArr = (d[]) a2;
                while (i3 < dVarArr.length) {
                    sb.append(dVarArr[i3].f2156a);
                    sb.append('/');
                    sb.append(dVarArr[i3].f2157b);
                    int i8 = i3 + 1;
                    i3 = i8;
                    if (i8 != dVarArr.length) {
                        sb.append(",");
                        i3 = i8;
                    }
                }
                return sb.toString();
            }
        }

        public final String toString() {
            return "(" + a.e[this.f2148a] + ", data length:" + this.f2151d.length + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f2152a;

        /* renamed from: b  reason: collision with root package name */
        public final String f2153b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2154c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2155d;

        c(String str, int i, int i2) {
            this.f2153b = str;
            this.f2152a = i;
            this.f2154c = i2;
            this.f2155d = -1;
        }

        c(String str, int i, int i2, int i3) {
            this.f2153b = str;
            this.f2152a = i;
            this.f2154c = i2;
            this.f2155d = i3;
        }

        final boolean a(int i) {
            int i2;
            int i3 = this.f2154c;
            if (i3 == 7 || i == 7 || i3 == i || (i2 = this.f2155d) == i) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f2156a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2157b;

        d(double d2) {
            this((long) (d2 * 10000.0d), 10000L);
        }

        d(long j, long j2) {
            if (j2 == 0) {
                this.f2156a = 0L;
                this.f2157b = 1L;
                return;
            }
            this.f2156a = j;
            this.f2157b = j2;
        }

        public final String toString() {
            return this.f2156a + "/" + this.f2157b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v294, types: [androidx.f.a.a$c[], androidx.f.a.a$c[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    static {
        /*
            Method dump skipped, instructions count: 5206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.f.a.a.m179clinit():void");
    }

    public a(File file) throws IOException {
        c[][] cVarArr = h;
        this.ae = new HashMap[cVarArr.length];
        this.af = new HashSet(cVarArr.length);
        this.ag = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(file, "file cannot be null");
        d(file.getAbsolutePath());
    }

    public a(FileDescriptor fileDescriptor) throws IOException {
        FileInputStream fileInputStream;
        Throwable th;
        c[][] cVarArr = h;
        this.ae = new HashMap[cVarArr.length];
        this.af = new HashSet(cVarArr.length);
        this.ag = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(fileDescriptor, "fileDescriptor cannot be null");
        this.ab = null;
        this.Z = null;
        boolean z2 = false;
        if (Build.VERSION.SDK_INT < 21 || !a(fileDescriptor)) {
            this.aa = null;
        } else {
            this.aa = fileDescriptor;
            try {
                fileDescriptor = Os.dup(fileDescriptor);
                z2 = true;
            } catch (Exception e2) {
                throw new IOException("Failed to duplicate file descriptor", e2);
            }
        }
        try {
            fileInputStream = new FileInputStream(fileDescriptor);
            try {
                a((InputStream) fileInputStream);
                a((Closeable) fileInputStream);
                if (z2) {
                    b(fileDescriptor);
                }
            } catch (Throwable th2) {
                th = th2;
                a((Closeable) fileInputStream);
                if (z2) {
                    b(fileDescriptor);
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public a(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    public a(InputStream inputStream, int i2) throws IOException {
        this(inputStream, i2 != 1 ? false : true);
    }

    private a(InputStream inputStream, boolean z2) throws IOException {
        c[][] cVarArr = h;
        this.ae = new HashMap[cVarArr.length];
        this.af = new HashSet(cVarArr.length);
        this.ag = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(inputStream, "inputStream cannot be null");
        this.Z = null;
        if (z2) {
            inputStream = new BufferedInputStream(inputStream, 5000);
            if (!a((BufferedInputStream) inputStream)) {
                Log.w("ExifInterface", "Given data does not follow the structure of an Exif-only data.");
                return;
            }
            this.ad = true;
        } else {
            if (inputStream instanceof AssetManager.AssetInputStream) {
                this.ab = (AssetManager.AssetInputStream) inputStream;
                this.aa = null;
            } else {
                inputStream = inputStream;
                if (inputStream instanceof FileInputStream) {
                    FileInputStream fileInputStream = (FileInputStream) inputStream;
                    inputStream = inputStream;
                    if (a(fileInputStream.getFD())) {
                        this.ab = null;
                        this.aa = fileInputStream.getFD();
                    }
                }
            }
            a(inputStream);
        }
        this.ab = null;
        this.aa = null;
        a(inputStream);
    }

    public a(String str) throws IOException {
        c[][] cVarArr = h;
        this.ae = new HashMap[cVarArr.length];
        this.af = new HashSet(cVarArr.length);
        this.ag = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(str, "filename cannot be null");
        d(str);
    }

    private void a() {
        for (int i2 = 0; i2 < this.ae.length; i2++) {
            StringBuilder sb = new StringBuilder("The size of tag group[");
            sb.append(i2);
            sb.append("]: ");
            sb.append(this.ae[i2].size());
            for (Map.Entry<String, b> entry : this.ae[i2].entrySet()) {
                b value = entry.getValue();
                StringBuilder sb2 = new StringBuilder("tagName: ");
                sb2.append(entry.getKey());
                sb2.append(", tagType: ");
                sb2.append(value.toString());
                sb2.append(", tagValue: '");
                sb2.append(value.c(this.ag));
                sb2.append("'");
            }
        }
    }

    private void a(int i2, int i3) throws IOException {
        if (!this.ae[i2].isEmpty() && !this.ae[i3].isEmpty()) {
            b bVar = this.ae[i2].get("ImageLength");
            b bVar2 = this.ae[i2].get("ImageWidth");
            b bVar3 = this.ae[i3].get("ImageLength");
            b bVar4 = this.ae[i3].get("ImageWidth");
            if (bVar == null || bVar2 == null) {
                if (k) {
                }
            } else if (bVar3 != null && bVar4 != null) {
                int b2 = bVar.b(this.ag);
                int b3 = bVar2.b(this.ag);
                int b4 = bVar3.b(this.ag);
                int b5 = bVar4.b(this.ag);
                if (b2 < b4 && b3 < b5) {
                    HashMap<String, b>[] hashMapArr = this.ae;
                    HashMap<String, b> hashMap = hashMapArr[i2];
                    hashMapArr[i2] = hashMapArr[i3];
                    hashMapArr[i3] = hashMap;
                }
            } else if (!k) {
            }
        }
    }

    private void a(C0061a aVar) throws IOException {
        b bVar;
        a(aVar, aVar.available());
        b(aVar, 0);
        d(aVar, 0);
        d(aVar, 5);
        d(aVar, 4);
        c();
        if (this.ac == 8 && (bVar = this.ae[1].get("MakerNote")) != null) {
            C0061a aVar2 = new C0061a(bVar.f2151d);
            aVar2.f2145a = this.ag;
            aVar2.a(6L);
            b(aVar2, 9);
            b bVar2 = this.ae[9].get("ColorSpace");
            if (bVar2 != null) {
                this.ae[1].put("ColorSpace", bVar2);
            }
        }
    }

    private void a(C0061a aVar, int i2) throws IOException {
        ByteOrder e2 = e(aVar);
        this.ag = e2;
        aVar.f2145a = e2;
        int readUnsignedShort = aVar.readUnsignedShort();
        int i3 = this.ac;
        if (i3 == 7 || i3 == 10 || readUnsignedShort == 42) {
            int readInt = aVar.readInt();
            if (readInt < 8 || readInt >= i2) {
                throw new IOException("Invalid first Ifd offset: ".concat(String.valueOf(readInt)));
            }
            int i4 = readInt - 8;
            if (i4 > 0 && aVar.skipBytes(i4) != i4) {
                throw new IOException("Couldn't jump to first Ifd: ".concat(String.valueOf(i4)));
            }
            return;
        }
        throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x015a A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02b8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.f.a.a.C0061a r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.f.a.a.a(androidx.f.a.a$a, int, int):void");
    }

    private void a(C0061a aVar, HashMap hashMap) throws IOException {
        b bVar = (b) hashMap.get("JPEGInterchangeFormat");
        b bVar2 = (b) hashMap.get("JPEGInterchangeFormatLength");
        if (bVar != null && bVar2 != null) {
            int b2 = bVar.b(this.ag);
            int b3 = bVar2.b(this.ag);
            int i2 = b2;
            if (this.ac == 7) {
                i2 = b2 + this.ap;
            }
            int min = Math.min(b3, aVar.f2146b - i2);
            if (i2 > 0 && min > 0) {
                this.ah = true;
                int i3 = this.ao + i2;
                this.ak = i3;
                this.al = min;
                if (this.Z == null && this.ab == null && this.aa == null) {
                    byte[] bArr = new byte[min];
                    aVar.a(i3);
                    aVar.readFully(bArr);
                    this.am = bArr;
                }
            }
            if (k) {
                StringBuilder sb = new StringBuilder("Setting thumbnail attributes with offset: ");
                sb.append(i2);
                sb.append(", length: ");
                sb.append(min);
            }
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:175:0x05ca, code lost:
        if (r0 != 7) goto L_0x066a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0637, code lost:
        if (java.util.Arrays.equals(r0, androidx.f.a.a.f2139c) != false) goto L_0x0605;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0311 A[Catch: all -> 0x0361, all -> 0x0361, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0324 A[Catch: all -> 0x0361, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0653 A[Catch: all -> 0x067e, IOException -> 0x0682, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x0682, blocks: (B:3:0x000a, B:5:0x0012, B:7:0x0027, B:9:0x002e, B:13:0x0066, B:17:0x0073, B:21:0x0080, B:25:0x008e, B:29:0x009c, B:33:0x00a9, B:38:0x00b8, B:39:0x00bd, B:39:0x00bd, B:40:0x00c0, B:42:0x00cf, B:44:0x0123, B:45:0x012c, B:46:0x0135, B:47:0x013f, B:117:0x035b, B:119:0x0362, B:120:0x0368, B:122:0x036a, B:124:0x0381, B:126:0x038d, B:130:0x03b4, B:131:0x03c5, B:132:0x03ce, B:134:0x03e8, B:136:0x042d, B:137:0x0437, B:139:0x0440, B:141:0x0448, B:145:0x0478, B:147:0x0495, B:149:0x04a9, B:151:0x04b9, B:161:0x050b, B:162:0x053d, B:163:0x055e, B:164:0x0569, B:165:0x0572, B:167:0x0599, B:169:0x05ae, B:176:0x05d0, B:177:0x05da, B:179:0x05e9, B:183:0x060a, B:185:0x0612, B:187:0x0621, B:190:0x062f, B:195:0x0640, B:201:0x0653, B:202:0x065d, B:204:0x066b), top: B:225:0x000a, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0206 A[Catch: all -> 0x0361, TRY_ENTER, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0223 A[Catch: all -> 0x0361, TRY_ENTER, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0240 A[Catch: all -> 0x0361, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x029f A[Catch: all -> 0x0361, TRY_ENTER, TryCatch #0 {all -> 0x0361, blocks: (B:47:0x013f, B:50:0x0147, B:51:0x015b, B:53:0x0164, B:54:0x016d, B:56:0x0176, B:58:0x017e, B:60:0x01a8, B:63:0x01ce, B:65:0x01d8, B:69:0x0206, B:72:0x0223, B:75:0x0240, B:86:0x026c, B:91:0x028b, B:94:0x029f, B:96:0x02b8, B:97:0x02bb, B:99:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02f6, B:104:0x02f7, B:104:0x02f7, B:105:0x02fa, B:106:0x0303, B:107:0x0304, B:107:0x0304, B:108:0x0307, B:109:0x0310, B:110:0x0311, B:110:0x0311, B:111:0x0314, B:112:0x031d, B:113:0x031e, B:113:0x031e, B:115:0x0324), top: B:224:0x013f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.io.InputStream r6) {
        /*
            Method dump skipped, instructions count: 1722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.f.a.a.a(java.io.InputStream):void");
    }

    private void a(byte[] bArr, int i2) throws IOException {
        C0061a aVar = new C0061a(bArr);
        a(aVar, bArr.length);
        b(aVar, i2);
    }

    private static boolean a(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArr = j;
        bufferedInputStream.mark(bArr.length);
        byte[] bArr2 = new byte[bArr.length];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i2 = 0;
        while (true) {
            byte[] bArr3 = j;
            if (i2 >= bArr3.length) {
                return true;
            }
            if (bArr2[i2] != bArr3[i2]) {
                return false;
            }
            i2++;
        }
    }

    private static boolean a(FileDescriptor fileDescriptor) {
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        try {
            Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private boolean a(HashMap hashMap) throws IOException {
        b bVar = (b) hashMap.get("ImageLength");
        b bVar2 = (b) hashMap.get("ImageWidth");
        if (bVar == null || bVar2 == null) {
            return false;
        }
        return bVar.b(this.ag) <= 512 && bVar2.b(this.ag) <= 512;
    }

    private static boolean a(byte[] bArr) throws IOException {
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f2140d;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private static long[] a(Object obj) {
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jArr[i2] = iArr[i2];
            }
            return jArr;
        } else if (obj instanceof long[]) {
            return (long[]) obj;
        } else {
            return null;
        }
    }

    private b b(String str) {
        Objects.requireNonNull(str, "tag shouldn't be null");
        String str2 = str;
        if ("ISOSpeedRatings".equals(str)) {
            str2 = "PhotographicSensitivity";
        }
        for (int i2 = 0; i2 < h.length; i2++) {
            b bVar = this.ae[i2].get(str2);
            if (bVar != null) {
                return bVar;
            }
        }
        return null;
    }

    private void b() {
        String c2 = c("DateTimeOriginal");
        if (c2 != null && c("DateTime") == null) {
            this.ae[0].put("DateTime", b.a(c2));
        }
        if (c("ImageWidth") == null) {
            this.ae[0].put("ImageWidth", b.a(0L, this.ag));
        }
        if (c("ImageLength") == null) {
            this.ae[0].put("ImageLength", b.a(0L, this.ag));
        }
        if (c("Orientation") == null) {
            this.ae[0].put("Orientation", b.a(0L, this.ag));
        }
        if (c("LightSource") == null) {
            this.ae[1].put("LightSource", b.a(0L, this.ag));
        }
    }

    private void b(C0061a aVar) throws IOException {
        aVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        aVar.read(bArr);
        aVar.skipBytes(4);
        aVar.read(bArr2);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        int i3 = ByteBuffer.wrap(bArr2).getInt();
        a(aVar, i2, 5);
        aVar.a(i3);
        aVar.f2145a = ByteOrder.BIG_ENDIAN;
        int readInt = aVar.readInt();
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = aVar.readUnsignedShort();
            int readUnsignedShort2 = aVar.readUnsignedShort();
            if (readUnsignedShort == M.f2152a) {
                short readShort = aVar.readShort();
                short readShort2 = aVar.readShort();
                b a2 = b.a((int) readShort, this.ag);
                b a3 = b.a((int) readShort2, this.ag);
                this.ae[0].put("ImageLength", a2);
                this.ae[0].put("ImageWidth", a3);
                if (k) {
                    StringBuilder sb = new StringBuilder("Updated to length: ");
                    sb.append((int) readShort);
                    sb.append(", width: ");
                    sb.append((int) readShort2);
                    return;
                }
                return;
            }
            aVar.skipBytes(readUnsignedShort2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0349  */
    /* JADX WARN: Type inference failed for: r0v212, types: [long] */
    /* JADX WARN: Type inference failed for: r24v10 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(androidx.f.a.a.C0061a r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.f.a.a.b(androidx.f.a.a$a, int):void");
    }

    private void b(C0061a aVar, HashMap hashMap) throws IOException {
        b bVar = (b) hashMap.get("StripOffsets");
        b bVar2 = (b) hashMap.get("StripByteCounts");
        if (bVar != null && bVar2 != null) {
            long[] a2 = a(bVar.a(this.ag));
            long[] a3 = a(bVar2.a(this.ag));
            if (a2 == null || a2.length == 0) {
                Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
            } else if (a3 == null || a3.length == 0) {
                Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
            } else if (a2.length != a3.length) {
                Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
            } else {
                long j2 = 0;
                for (long j3 : a3) {
                    j2 += j3;
                }
                int i2 = (int) j2;
                byte[] bArr = new byte[i2];
                this.aj = true;
                this.ai = true;
                this.ah = true;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < a2.length; i5++) {
                    int i6 = (int) a2[i5];
                    int i7 = (int) a3[i5];
                    if (i5 < a2.length - 1 && i6 + i7 != a2[i5 + 1]) {
                        this.aj = false;
                    }
                    int i8 = i6 - i3;
                    aVar.a(i8);
                    byte[] bArr2 = new byte[i7];
                    aVar.read(bArr2);
                    i3 = i3 + i8 + i7;
                    System.arraycopy(bArr2, 0, bArr, i4, i7);
                    i4 += i7;
                }
                this.am = bArr;
                if (this.aj) {
                    this.ak = ((int) a2[0]) + this.ao;
                    this.al = i2;
                }
            }
        }
    }

    private static void b(FileDescriptor fileDescriptor) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.close(fileDescriptor);
            } catch (Exception e2) {
                Log.e("ExifInterface", "Error closing fd.");
            }
        } else {
            Log.e("ExifInterface", "closeFileDescriptor is called in API < 21, which must be wrong.");
        }
    }

    private static boolean b(byte[] bArr) throws IOException {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i2 = 0; i2 < bytes.length; i2++) {
            if (bArr[i2] != bytes[i2]) {
                return false;
            }
        }
        return true;
    }

    private String c(String str) {
        double d2;
        b b2 = b(str);
        if (b2 == null) {
            return null;
        }
        if (!W.contains(str)) {
            return b2.c(this.ag);
        }
        if (!str.equals("GPSTimeStamp")) {
            try {
                Object a2 = b2.a(this.ag);
                if (a2 != null) {
                    if (a2 instanceof String) {
                        d2 = Double.parseDouble((String) a2);
                    } else if (a2 instanceof long[]) {
                        long[] jArr = (long[]) a2;
                        if (jArr.length == 1) {
                            d2 = jArr[0];
                        } else {
                            throw new NumberFormatException("There are more than one component");
                        }
                    } else if (a2 instanceof int[]) {
                        int[] iArr = (int[]) a2;
                        if (iArr.length == 1) {
                            d2 = iArr[0];
                        } else {
                            throw new NumberFormatException("There are more than one component");
                        }
                    } else if (a2 instanceof double[]) {
                        double[] dArr = (double[]) a2;
                        if (dArr.length == 1) {
                            d2 = dArr[0];
                        } else {
                            throw new NumberFormatException("There are more than one component");
                        }
                    } else if (a2 instanceof d[]) {
                        d[] dVarArr = (d[]) a2;
                        if (dVarArr.length == 1) {
                            d dVar = dVarArr[0];
                            d2 = dVar.f2156a / dVar.f2157b;
                        } else {
                            throw new NumberFormatException("There are more than one component");
                        }
                    } else {
                        throw new NumberFormatException("Couldn't find a double value");
                    }
                    return Double.toString(d2);
                }
                throw new NumberFormatException("NULL can't be converted to a double value");
            } catch (NumberFormatException e2) {
                return null;
            }
        } else if (b2.f2148a == 5 || b2.f2148a == 10) {
            d[] dVarArr2 = (d[]) b2.a(this.ag);
            if (dVarArr2 != null && dVarArr2.length == 3) {
                return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) dVarArr2[0].f2156a) / ((float) dVarArr2[0].f2157b))), Integer.valueOf((int) (((float) dVarArr2[1].f2156a) / ((float) dVarArr2[1].f2157b))), Integer.valueOf((int) (((float) dVarArr2[2].f2156a) / ((float) dVarArr2[2].f2157b))));
            }
            Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(dVarArr2));
            return null;
        } else {
            Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + b2.f2148a);
            return null;
        }
    }

    private void c() throws IOException {
        a(0, 5);
        a(0, 4);
        a(5, 4);
        b bVar = this.ae[1].get("PixelXDimension");
        b bVar2 = this.ae[1].get("PixelYDimension");
        if (!(bVar == null || bVar2 == null)) {
            this.ae[0].put("ImageWidth", bVar);
            this.ae[0].put("ImageLength", bVar2);
        }
        if (this.ae[4].isEmpty() && a((HashMap) this.ae[5])) {
            HashMap<String, b>[] hashMapArr = this.ae;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        a((HashMap) this.ae[4]);
    }

    private void c(C0061a aVar) throws IOException {
        if (k) {
            new StringBuilder("getPngAttributes starting with: ").append(aVar);
        }
        aVar.f2145a = ByteOrder.BIG_ENDIAN;
        byte[] bArr = s;
        aVar.skipBytes(bArr.length);
        int length = bArr.length;
        int i2 = 0;
        while (true) {
            try {
                int i3 = length + i2;
                int readInt = aVar.readInt();
                byte[] bArr2 = new byte[4];
                if (aVar.read(bArr2) == 4) {
                    int i4 = i3 + 4 + 4;
                    if (i4 == 16 && !Arrays.equals(bArr2, u)) {
                        throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                    }
                    if (Arrays.equals(bArr2, v)) {
                        return;
                    }
                    if (Arrays.equals(bArr2, t)) {
                        byte[] bArr3 = new byte[readInt];
                        if (aVar.read(bArr3) == readInt) {
                            int readInt2 = aVar.readInt();
                            CRC32 crc32 = new CRC32();
                            crc32.update(bArr2);
                            crc32.update(bArr3);
                            if (((int) crc32.getValue()) == readInt2) {
                                this.ao = i4;
                                a(bArr3, 0);
                                c();
                                return;
                            }
                            throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                        }
                        throw new IOException("Failed to read given length for given PNG chunk type: " + h(bArr2));
                    }
                    int i5 = readInt + 4;
                    aVar.skipBytes(i5);
                    length = i4;
                    i2 = i5;
                } else {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
            } catch (EOFException e2) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    private void c(C0061a aVar, int i2) throws IOException {
        b bVar;
        b bVar2 = this.ae[i2].get("ImageLength");
        b bVar3 = this.ae[i2].get("ImageWidth");
        if ((bVar2 == null || bVar3 == null) && (bVar = this.ae[i2].get("JPEGInterchangeFormat")) != null) {
            a(aVar, bVar.b(this.ag), i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean c(byte[] r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.f.a.a.c(byte[]):boolean");
    }

    private void d(C0061a aVar) throws IOException {
        if (k) {
            new StringBuilder("getWebpAttributes starting with: ").append(aVar);
        }
        aVar.f2145a = ByteOrder.LITTLE_ENDIAN;
        aVar.skipBytes(w.length);
        int readInt = aVar.readInt() + 8;
        int skipBytes = aVar.skipBytes(x.length);
        int i2 = 8;
        while (true) {
            try {
                int i3 = skipBytes + i2;
                byte[] bArr = new byte[4];
                if (aVar.read(bArr) == 4) {
                    int readInt2 = aVar.readInt();
                    int i4 = i3 + 4 + 4;
                    if (Arrays.equals(y, bArr)) {
                        byte[] bArr2 = new byte[readInt2];
                        if (aVar.read(bArr2) == readInt2) {
                            this.ao = i4;
                            a(bArr2, 0);
                            this.ao = i4;
                            return;
                        }
                        throw new IOException("Failed to read given length for given PNG chunk type: " + h(bArr));
                    }
                    int i5 = readInt2;
                    if (readInt2 % 2 == 1) {
                        i5 = readInt2 + 1;
                    }
                    int i6 = i4 + i5;
                    if (i6 == readInt) {
                        return;
                    }
                    if (i6 <= readInt) {
                        int skipBytes2 = aVar.skipBytes(i5);
                        if (skipBytes2 == i5) {
                            skipBytes = i4;
                            i2 = skipBytes2;
                        } else {
                            throw new IOException("Encountered WebP file with invalid chunk size");
                        }
                    } else {
                        throw new IOException("Encountered WebP file with invalid chunk size");
                    }
                } else {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
            } catch (EOFException e2) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    private void d(C0061a aVar, int i2) throws IOException {
        b bVar;
        b bVar2;
        b bVar3 = this.ae[i2].get("DefaultCropSize");
        b bVar4 = this.ae[i2].get("SensorTopBorder");
        b bVar5 = this.ae[i2].get("SensorLeftBorder");
        b bVar6 = this.ae[i2].get("SensorBottomBorder");
        b bVar7 = this.ae[i2].get("SensorRightBorder");
        if (bVar3 != null) {
            if (bVar3.f2148a == 5) {
                d[] dVarArr = (d[]) bVar3.a(this.ag);
                if (dVarArr == null || dVarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(dVarArr));
                    return;
                }
                bVar2 = b.a(dVarArr[0], this.ag);
                bVar = b.a(dVarArr[1], this.ag);
            } else {
                int[] iArr = (int[]) bVar3.a(this.ag);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                bVar2 = b.a(iArr[0], this.ag);
                bVar = b.a(iArr[1], this.ag);
            }
            this.ae[i2].put("ImageWidth", bVar2);
            this.ae[i2].put("ImageLength", bVar);
        } else if (bVar4 == null || bVar5 == null || bVar6 == null || bVar7 == null) {
            c(aVar, i2);
        } else {
            int b2 = bVar4.b(this.ag);
            int b3 = bVar6.b(this.ag);
            int b4 = bVar7.b(this.ag);
            int b5 = bVar5.b(this.ag);
            if (b3 > b2 && b4 > b5) {
                b a2 = b.a(b3 - b2, this.ag);
                b a3 = b.a(b4 - b5, this.ag);
                this.ae[i2].put("ImageLength", a2);
                this.ae[i2].put("ImageWidth", a3);
            }
        }
    }

    private void d(String str) throws IOException {
        Throwable th;
        Objects.requireNonNull(str, "filename cannot be null");
        FileInputStream fileInputStream = null;
        this.ab = null;
        this.Z = str;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                if (a(fileInputStream2.getFD())) {
                    this.aa = fileInputStream2.getFD();
                } else {
                    this.aa = null;
                }
                a((InputStream) fileInputStream2);
                a((Closeable) fileInputStream2);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                a((Closeable) fileInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean d(byte[] bArr) throws IOException {
        Throwable th;
        boolean z2 = false;
        C0061a aVar = null;
        aVar = null;
        try {
            aVar = new C0061a(bArr);
            try {
                ByteOrder e2 = e(aVar);
                this.ag = e2;
                aVar.f2145a = e2;
                short readShort = aVar.readShort();
                if (readShort == 20306 || readShort == 21330) {
                    z2 = true;
                }
                aVar.close();
                return z2;
            } catch (Exception e3) {
                if (aVar == null) {
                    return false;
                }
                aVar.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                if (aVar != null) {
                    aVar.close();
                }
                throw th;
            }
        } catch (Exception e4) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static ByteOrder e(C0061a aVar) throws IOException {
        short readShort = aVar.readShort();
        if (readShort == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    private boolean e(byte[] bArr) throws IOException {
        Throwable th;
        boolean z2 = false;
        C0061a aVar = null;
        C0061a aVar2 = null;
        try {
            aVar2 = new C0061a(bArr);
            try {
                ByteOrder e2 = e(aVar2);
                this.ag = e2;
                aVar2.f2145a = e2;
                if (aVar2.readShort() == 85) {
                    z2 = true;
                }
                aVar2.close();
                return z2;
            } catch (Exception e3) {
                aVar = aVar2;
                if (aVar == null) {
                    return false;
                }
                aVar.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                if (aVar2 != null) {
                    aVar2.close();
                }
                throw th;
            }
        } catch (Exception e4) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static boolean f(byte[] bArr) throws IOException {
        int i2 = 0;
        while (true) {
            byte[] bArr2 = s;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    private static boolean g(byte[] bArr) throws IOException {
        int i2 = 0;
        while (true) {
            byte[] bArr2 = w;
            if (i2 >= bArr2.length) {
                int i3 = 0;
                while (true) {
                    byte[] bArr3 = x;
                    if (i3 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[w.length + i3 + 4] != bArr3[i3]) {
                        return false;
                    }
                    i3++;
                }
            } else if (bArr[i2] != bArr2[i2]) {
                return false;
            } else {
                i2++;
            }
        }
    }

    private static String h(byte[] bArr) {
        StringBuilder sb = new StringBuilder(8);
        for (int i2 = 0; i2 < 4; i2++) {
            sb.append(String.format("%02x", Byte.valueOf(bArr[i2])));
        }
        return sb.toString();
    }

    public final int a(String str) {
        b b2 = b(str);
        if (b2 == null) {
            return 1;
        }
        try {
            return b2.b(this.ag);
        } catch (NumberFormatException e2) {
            return 1;
        }
    }
}
