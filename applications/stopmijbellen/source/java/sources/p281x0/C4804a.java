package p281x0;

import android.support.p012v4.media.C0082b;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
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
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import p007a6.C0033h;
/* renamed from: x0.a */
/* loaded from: classes-dex2jar.jar:x0/a.class */
public class C4804a {

    /* renamed from: B */
    public static final Charset f14765B;

    /* renamed from: C */
    public static final byte[] f14766C;

    /* renamed from: v */
    public static final C4807c[][] f14778v;

    /* renamed from: a */
    public final String f14783a;

    /* renamed from: b */
    public int f14784b;

    /* renamed from: c */
    public final HashMap<String, C4806b>[] f14785c;

    /* renamed from: d */
    public Set<Integer> f14786d;

    /* renamed from: e */
    public ByteOrder f14787e = ByteOrder.BIG_ENDIAN;

    /* renamed from: f */
    public int f14788f;

    /* renamed from: g */
    public int f14789g;

    /* renamed from: h */
    public int f14790h;

    /* renamed from: i */
    public int f14791i;

    /* renamed from: j */
    public int f14792j;

    /* renamed from: k */
    public static final List<Integer> f14767k = Arrays.asList(1, 6, 3, 8);

    /* renamed from: l */
    public static final List<Integer> f14768l = Arrays.asList(2, 7, 4, 5);

    /* renamed from: m */
    public static final int[] f14769m = {8, 8, 8};

    /* renamed from: n */
    public static final int[] f14770n = {8};

    /* renamed from: o */
    public static final byte[] f14771o = {-1, -40, -1};

    /* renamed from: p */
    public static final byte[] f14772p = {79, 76, 89, 77, 80, 0};

    /* renamed from: q */
    public static final byte[] f14773q = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* renamed from: r */
    public static final String[] f14774r = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};

    /* renamed from: s */
    public static final int[] f14775s = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};

    /* renamed from: t */
    public static final byte[] f14776t = {65, 83, 67, 73, 73, 0, 0, 0};

    /* renamed from: u */
    public static final C4807c f14777u = new C4807c("StripOffsets", 273, 3);

    /* renamed from: w */
    public static final C4807c[] f14779w = {new C4807c("SubIFDPointer", 330, 4), new C4807c("ExifIFDPointer", 34665, 4), new C4807c("GPSInfoIFDPointer", 34853, 4), new C4807c("InteroperabilityIFDPointer", 40965, 4), new C4807c("CameraSettingsIFDPointer", 8224, 1), new C4807c("ImageProcessingIFDPointer", 8256, 1)};

    /* renamed from: x */
    public static final HashMap<Integer, C4807c>[] f14780x = new HashMap[10];

    /* renamed from: y */
    public static final HashMap<String, C4807c>[] f14781y = new HashMap[10];

    /* renamed from: z */
    public static final HashSet<String> f14782z = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));

    /* renamed from: A */
    public static final HashMap<Integer, Integer> f14764A = new HashMap<>();

    /* renamed from: x0.a$a */
    /* loaded from: classes-dex2jar.jar:x0/a$a.class */
    public static class C4805a extends InputStream implements DataInput {

        /* renamed from: e */
        public static final ByteOrder f14793e = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: f */
        public static final ByteOrder f14794f = ByteOrder.BIG_ENDIAN;

        /* renamed from: a */
        public DataInputStream f14795a;

        /* renamed from: b */
        public ByteOrder f14796b;

        /* renamed from: c */
        public final int f14797c;

        /* renamed from: d */
        public int f14798d;

        public C4805a(InputStream inputStream) throws IOException {
            this.f14796b = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f14795a = dataInputStream;
            int available = dataInputStream.available();
            this.f14797c = available;
            this.f14798d = 0;
            this.f14795a.mark(available);
        }

        public C4805a(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f14795a.available();
        }

        /* renamed from: d */
        public long m410d() throws IOException {
            return readInt() & 4294967295L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* renamed from: k */
        public void m409k(long j) throws IOException {
            char c;
            int i = this.f14798d;
            if (i > j) {
                this.f14798d = 0;
                this.f14795a.reset();
                this.f14795a.mark(this.f14797c);
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
        public int read() throws IOException {
            this.f14798d++;
            return this.f14795a.read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.f14795a.read(bArr, i, i2);
            this.f14798d += read;
            return read;
        }

        @Override // java.io.DataInput
        public boolean readBoolean() throws IOException {
            this.f14798d++;
            return this.f14795a.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            int i = this.f14798d + 1;
            this.f14798d = i;
            if (i <= this.f14797c) {
                int read = this.f14795a.read();
                if (read < 0) {
                    throw new EOFException();
                }
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() throws IOException {
            this.f14798d += 2;
            return this.f14795a.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            int length = this.f14798d + bArr.length;
            this.f14798d = length;
            if (length <= this.f14797c) {
                if (this.f14795a.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.f14798d + i2;
            this.f14798d = i3;
            if (i3 <= this.f14797c) {
                if (this.f14795a.read(bArr, i, i2) != i2) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            int i = this.f14798d + 4;
            this.f14798d = i;
            if (i <= this.f14797c) {
                int read = this.f14795a.read();
                int read2 = this.f14795a.read();
                int read3 = this.f14795a.read();
                int read4 = this.f14795a.read();
                if ((read | read2 | read3 | read4) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f14796b;
                if (byteOrder == f14793e) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f14794f) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                StringBuilder m8752j = C0082b.m8752j("Invalid byte order: ");
                m8752j.append(this.f14796b);
                throw new IOException(m8752j.toString());
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() throws IOException {
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            int i = this.f14798d + 8;
            this.f14798d = i;
            if (i <= this.f14797c) {
                int read = this.f14795a.read();
                int read2 = this.f14795a.read();
                int read3 = this.f14795a.read();
                int read4 = this.f14795a.read();
                int read5 = this.f14795a.read();
                int read6 = this.f14795a.read();
                int read7 = this.f14795a.read();
                int read8 = this.f14795a.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f14796b;
                if (byteOrder == f14793e) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f14794f) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                StringBuilder m8752j = C0082b.m8752j("Invalid byte order: ");
                m8752j.append(this.f14796b);
                throw new IOException(m8752j.toString());
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i = this.f14798d + 2;
            this.f14798d = i;
            if (i <= this.f14797c) {
                int read = this.f14795a.read();
                int read2 = this.f14795a.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f14796b;
                if (byteOrder == f14793e) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == f14794f) {
                    return (short) ((read << 8) + read2);
                }
                StringBuilder m8752j = C0082b.m8752j("Invalid byte order: ");
                m8752j.append(this.f14796b);
                throw new IOException(m8752j.toString());
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() throws IOException {
            this.f14798d += 2;
            return this.f14795a.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() throws IOException {
            this.f14798d++;
            return this.f14795a.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            int i = this.f14798d + 2;
            this.f14798d = i;
            if (i <= this.f14797c) {
                int read = this.f14795a.read();
                int read2 = this.f14795a.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f14796b;
                if (byteOrder == f14793e) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == f14794f) {
                    return (read << 8) + read2;
                }
                StringBuilder m8752j = C0082b.m8752j("Invalid byte order: ");
                m8752j.append(this.f14796b);
                throw new IOException(m8752j.toString());
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int skipBytes(int i) throws IOException {
            int min = Math.min(i, this.f14797c - this.f14798d);
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= min) {
                    this.f14798d += i3;
                    return i3;
                }
                i2 = i3 + this.f14795a.skipBytes(min - i3);
            }
        }
    }

    /* renamed from: x0.a$b */
    /* loaded from: classes-dex2jar.jar:x0/a$b.class */
    public static class C4806b {

        /* renamed from: a */
        public final int f14799a;

        /* renamed from: b */
        public final int f14800b;

        /* renamed from: c */
        public final byte[] f14801c;

        public C4806b(int i, int i2, byte[] bArr) {
            this.f14799a = i;
            this.f14800b = i2;
            this.f14801c = bArr;
        }

        /* renamed from: a */
        public static C4806b m408a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(C4804a.f14765B);
            return new C4806b(2, bytes.length, bytes);
        }

        /* renamed from: b */
        public static C4806b m407b(long j, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C4804a.f14775s[4] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i < 1; i++) {
                wrap.putInt((int) new long[]{j}[i]);
            }
            return new C4806b(4, 1, wrap.array());
        }

        /* renamed from: c */
        public static C4806b m406c(C4808d c4808d, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C4804a.f14775s[5] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i < 1; i++) {
                C4808d c4808d2 = new C4808d[]{c4808d}[i];
                wrap.putInt((int) c4808d2.f14806a);
                wrap.putInt((int) c4808d2.f14807b);
            }
            return new C4806b(5, 1, wrap.array());
        }

        /* renamed from: d */
        public static C4806b m405d(int i, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C4804a.f14775s[3] * 1]);
            wrap.order(byteOrder);
            for (int i2 = 0; i2 < 1; i2++) {
                wrap.putShort((short) new int[]{i}[i2]);
            }
            return new C4806b(3, 1, wrap.array());
        }

        /* renamed from: e */
        public double m404e(ByteOrder byteOrder) {
            Object m401h = m401h(byteOrder);
            if (m401h != null) {
                if (m401h instanceof String) {
                    return Double.parseDouble((String) m401h);
                }
                if (m401h instanceof long[]) {
                    long[] jArr = (long[]) m401h;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return jArr[0];
                } else if (m401h instanceof int[]) {
                    int[] iArr = (int[]) m401h;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                } else if (m401h instanceof double[]) {
                    double[] dArr = (double[]) m401h;
                    if (dArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return dArr[0];
                } else if (!(m401h instanceof C4808d[])) {
                    throw new NumberFormatException("Couldn't find a double value");
                } else {
                    C4808d[] c4808dArr = (C4808d[]) m401h;
                    if (c4808dArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    C4808d c4808d = c4808dArr[0];
                    return c4808d.f14806a / c4808d.f14807b;
                }
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        /* renamed from: f */
        public int m403f(ByteOrder byteOrder) {
            Object m401h = m401h(byteOrder);
            if (m401h != null) {
                if (m401h instanceof String) {
                    return Integer.parseInt((String) m401h);
                }
                if (m401h instanceof long[]) {
                    long[] jArr = (long[]) m401h;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return (int) jArr[0];
                } else if (!(m401h instanceof int[])) {
                    throw new NumberFormatException("Couldn't find a integer value");
                } else {
                    int[] iArr = (int[]) m401h;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                }
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        /* renamed from: g */
        public String m402g(ByteOrder byteOrder) {
            Object m401h = m401h(byteOrder);
            if (m401h == null) {
                return null;
            }
            if (m401h instanceof String) {
                return (String) m401h;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (m401h instanceof long[]) {
                long[] jArr = (long[]) m401h;
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
            } else if (m401h instanceof int[]) {
                int[] iArr = (int[]) m401h;
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
            } else if (m401h instanceof double[]) {
                double[] dArr = (double[]) m401h;
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
            } else if (!(m401h instanceof C4808d[])) {
                return null;
            } else {
                C4808d[] c4808dArr = (C4808d[]) m401h;
                int i7 = 0;
                while (i7 < c4808dArr.length) {
                    sb.append(c4808dArr[i7].f14806a);
                    sb.append('/');
                    sb.append(c4808dArr[i7].f14807b);
                    int i8 = i7 + 1;
                    i7 = i8;
                    if (i8 != c4808dArr.length) {
                        sb.append(",");
                        i7 = i8;
                    }
                }
                return sb.toString();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:220:0x032e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m401h(java.nio.ByteOrder r10) {
            /*
                Method dump skipped, instructions count: 876
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p281x0.C4804a.C4806b.m401h(java.nio.ByteOrder):java.lang.Object");
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("(");
            m8752j.append(C4804a.f14774r[this.f14799a]);
            m8752j.append(", data length:");
            return C0033h.m8885l(m8752j, this.f14801c.length, ")");
        }
    }

    /* renamed from: x0.a$c */
    /* loaded from: classes-dex2jar.jar:x0/a$c.class */
    public static class C4807c {

        /* renamed from: a */
        public final int f14802a;

        /* renamed from: b */
        public final String f14803b;

        /* renamed from: c */
        public final int f14804c;

        /* renamed from: d */
        public final int f14805d;

        public C4807c(String str, int i, int i2) {
            this.f14803b = str;
            this.f14802a = i;
            this.f14804c = i2;
            this.f14805d = -1;
        }

        public C4807c(String str, int i, int i2, int i3) {
            this.f14803b = str;
            this.f14802a = i;
            this.f14804c = i2;
            this.f14805d = i3;
        }
    }

    /* renamed from: x0.a$d */
    /* loaded from: classes-dex2jar.jar:x0/a$d.class */
    public static class C4808d {

        /* renamed from: a */
        public final long f14806a;

        /* renamed from: b */
        public final long f14807b;

        public C4808d(long j, long j2) {
            if (j2 == 0) {
                this.f14806a = 0L;
                this.f14807b = 1L;
                return;
            }
            this.f14806a = j;
            this.f14807b = j2;
        }

        public String toString() {
            return this.f14806a + "/" + this.f14807b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v220, types: [x0.a$c[], x0.a$c[][]] */
    static {
        C4807c[] c4807cArr;
        C4807c[] c4807cArr2 = {new C4807c("NewSubfileType", 254, 4), new C4807c("SubfileType", 255, 4), new C4807c("ImageWidth", 256, 3, 4), new C4807c("ImageLength", 257, 3, 4), new C4807c("BitsPerSample", 258, 3), new C4807c("Compression", 259, 3), new C4807c("PhotometricInterpretation", 262, 3), new C4807c("ImageDescription", 270, 2), new C4807c("Make", 271, 2), new C4807c("Model", 272, 2), new C4807c("StripOffsets", 273, 3, 4), new C4807c("Orientation", 274, 3), new C4807c("SamplesPerPixel", 277, 3), new C4807c("RowsPerStrip", 278, 3, 4), new C4807c("StripByteCounts", 279, 3, 4), new C4807c("XResolution", 282, 5), new C4807c("YResolution", 283, 5), new C4807c("PlanarConfiguration", 284, 3), new C4807c("ResolutionUnit", 296, 3), new C4807c("TransferFunction", 301, 3), new C4807c("Software", 305, 2), new C4807c("DateTime", 306, 2), new C4807c("Artist", 315, 2), new C4807c("WhitePoint", 318, 5), new C4807c("PrimaryChromaticities", 319, 5), new C4807c("SubIFDPointer", 330, 4), new C4807c("JPEGInterchangeFormat", 513, 4), new C4807c("JPEGInterchangeFormatLength", 514, 4), new C4807c("YCbCrCoefficients", 529, 5), new C4807c("YCbCrSubSampling", 530, 3), new C4807c("YCbCrPositioning", 531, 3), new C4807c("ReferenceBlackWhite", 532, 5), new C4807c("Copyright", 33432, 2), new C4807c("ExifIFDPointer", 34665, 4), new C4807c("GPSInfoIFDPointer", 34853, 4), new C4807c("SensorTopBorder", 4, 4), new C4807c("SensorLeftBorder", 5, 4), new C4807c("SensorBottomBorder", 6, 4), new C4807c("SensorRightBorder", 7, 4), new C4807c("ISO", 23, 3), new C4807c("JpgFromRaw", 46, 7)};
        f14778v = new C4807c[]{c4807cArr2, new C4807c[]{new C4807c("ExposureTime", 33434, 5), new C4807c("FNumber", 33437, 5), new C4807c("ExposureProgram", 34850, 3), new C4807c("SpectralSensitivity", 34852, 2), new C4807c("PhotographicSensitivity", 34855, 3), new C4807c("OECF", 34856, 7), new C4807c("ExifVersion", 36864, 2), new C4807c("DateTimeOriginal", 36867, 2), new C4807c("DateTimeDigitized", 36868, 2), new C4807c("ComponentsConfiguration", 37121, 7), new C4807c("CompressedBitsPerPixel", 37122, 5), new C4807c("ShutterSpeedValue", 37377, 10), new C4807c("ApertureValue", 37378, 5), new C4807c("BrightnessValue", 37379, 10), new C4807c("ExposureBiasValue", 37380, 10), new C4807c("MaxApertureValue", 37381, 5), new C4807c("SubjectDistance", 37382, 5), new C4807c("MeteringMode", 37383, 3), new C4807c("LightSource", 37384, 3), new C4807c("Flash", 37385, 3), new C4807c("FocalLength", 37386, 5), new C4807c("SubjectArea", 37396, 3), new C4807c("MakerNote", 37500, 7), new C4807c("UserComment", 37510, 7), new C4807c("SubSecTime", 37520, 2), new C4807c("SubSecTimeOriginal", 37521, 2), new C4807c("SubSecTimeDigitized", 37522, 2), new C4807c("FlashpixVersion", 40960, 7), new C4807c("ColorSpace", 40961, 3), new C4807c("PixelXDimension", 40962, 3, 4), new C4807c("PixelYDimension", 40963, 3, 4), new C4807c("RelatedSoundFile", 40964, 2), new C4807c("InteroperabilityIFDPointer", 40965, 4), new C4807c("FlashEnergy", 41483, 5), new C4807c("SpatialFrequencyResponse", 41484, 7), new C4807c("FocalPlaneXResolution", 41486, 5), new C4807c("FocalPlaneYResolution", 41487, 5), new C4807c("FocalPlaneResolutionUnit", 41488, 3), new C4807c("SubjectLocation", 41492, 3), new C4807c("ExposureIndex", 41493, 5), new C4807c("SensingMethod", 41495, 3), new C4807c("FileSource", 41728, 7), new C4807c("SceneType", 41729, 7), new C4807c("CFAPattern", 41730, 7), new C4807c("CustomRendered", 41985, 3), new C4807c("ExposureMode", 41986, 3), new C4807c("WhiteBalance", 41987, 3), new C4807c("DigitalZoomRatio", 41988, 5), new C4807c("FocalLengthIn35mmFilm", 41989, 3), new C4807c("SceneCaptureType", 41990, 3), new C4807c("GainControl", 41991, 3), new C4807c("Contrast", 41992, 3), new C4807c("Saturation", 41993, 3), new C4807c("Sharpness", 41994, 3), new C4807c("DeviceSettingDescription", 41995, 7), new C4807c("SubjectDistanceRange", 41996, 3), new C4807c("ImageUniqueID", 42016, 2), new C4807c("DNGVersion", 50706, 1), new C4807c("DefaultCropSize", 50720, 3, 4)}, new C4807c[]{new C4807c("GPSVersionID", 0, 1), new C4807c("GPSLatitudeRef", 1, 2), new C4807c("GPSLatitude", 2, 5), new C4807c("GPSLongitudeRef", 3, 2), new C4807c("GPSLongitude", 4, 5), new C4807c("GPSAltitudeRef", 5, 1), new C4807c("GPSAltitude", 6, 5), new C4807c("GPSTimeStamp", 7, 5), new C4807c("GPSSatellites", 8, 2), new C4807c("GPSStatus", 9, 2), new C4807c("GPSMeasureMode", 10, 2), new C4807c("GPSDOP", 11, 5), new C4807c("GPSSpeedRef", 12, 2), new C4807c("GPSSpeed", 13, 5), new C4807c("GPSTrackRef", 14, 2), new C4807c("GPSTrack", 15, 5), new C4807c("GPSImgDirectionRef", 16, 2), new C4807c("GPSImgDirection", 17, 5), new C4807c("GPSMapDatum", 18, 2), new C4807c("GPSDestLatitudeRef", 19, 2), new C4807c("GPSDestLatitude", 20, 5), new C4807c("GPSDestLongitudeRef", 21, 2), new C4807c("GPSDestLongitude", 22, 5), new C4807c("GPSDestBearingRef", 23, 2), new C4807c("GPSDestBearing", 24, 5), new C4807c("GPSDestDistanceRef", 25, 2), new C4807c("GPSDestDistance", 26, 5), new C4807c("GPSProcessingMethod", 27, 7), new C4807c("GPSAreaInformation", 28, 7), new C4807c("GPSDateStamp", 29, 2), new C4807c("GPSDifferential", 30, 3)}, new C4807c[]{new C4807c("InteroperabilityIndex", 1, 2)}, new C4807c[]{new C4807c("NewSubfileType", 254, 4), new C4807c("SubfileType", 255, 4), new C4807c("ThumbnailImageWidth", 256, 3, 4), new C4807c("ThumbnailImageLength", 257, 3, 4), new C4807c("BitsPerSample", 258, 3), new C4807c("Compression", 259, 3), new C4807c("PhotometricInterpretation", 262, 3), new C4807c("ImageDescription", 270, 2), new C4807c("Make", 271, 2), new C4807c("Model", 272, 2), new C4807c("StripOffsets", 273, 3, 4), new C4807c("Orientation", 274, 3), new C4807c("SamplesPerPixel", 277, 3), new C4807c("RowsPerStrip", 278, 3, 4), new C4807c("StripByteCounts", 279, 3, 4), new C4807c("XResolution", 282, 5), new C4807c("YResolution", 283, 5), new C4807c("PlanarConfiguration", 284, 3), new C4807c("ResolutionUnit", 296, 3), new C4807c("TransferFunction", 301, 3), new C4807c("Software", 305, 2), new C4807c("DateTime", 306, 2), new C4807c("Artist", 315, 2), new C4807c("WhitePoint", 318, 5), new C4807c("PrimaryChromaticities", 319, 5), new C4807c("SubIFDPointer", 330, 4), new C4807c("JPEGInterchangeFormat", 513, 4), new C4807c("JPEGInterchangeFormatLength", 514, 4), new C4807c("YCbCrCoefficients", 529, 5), new C4807c("YCbCrSubSampling", 530, 3), new C4807c("YCbCrPositioning", 531, 3), new C4807c("ReferenceBlackWhite", 532, 5), new C4807c("Copyright", 33432, 2), new C4807c("ExifIFDPointer", 34665, 4), new C4807c("GPSInfoIFDPointer", 34853, 4), new C4807c("DNGVersion", 50706, 1), new C4807c("DefaultCropSize", 50720, 3, 4)}, c4807cArr2, new C4807c[]{new C4807c("ThumbnailImage", 256, 7), new C4807c("CameraSettingsIFDPointer", 8224, 4), new C4807c("ImageProcessingIFDPointer", 8256, 4)}, new C4807c[]{new C4807c("PreviewImageStart", 257, 4), new C4807c("PreviewImageLength", 258, 4)}, new C4807c[]{new C4807c("AspectFrame", 4371, 3)}, new C4807c[]{new C4807c("ColorSpace", 55, 3)}};
        Charset forName = Charset.forName("US-ASCII");
        f14765B = forName;
        f14766C = "Exif����".getBytes(forName);
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss").setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            C4807c[][] c4807cArr3 = f14778v;
            if (i >= c4807cArr3.length) {
                HashMap<Integer, Integer> hashMap = f14764A;
                C4807c[] c4807cArr4 = f14779w;
                hashMap.put(Integer.valueOf(c4807cArr4[0].f14802a), 5);
                hashMap.put(Integer.valueOf(c4807cArr4[1].f14802a), 1);
                hashMap.put(Integer.valueOf(c4807cArr4[2].f14802a), 2);
                hashMap.put(Integer.valueOf(c4807cArr4[3].f14802a), 3);
                hashMap.put(Integer.valueOf(c4807cArr4[4].f14802a), 7);
                hashMap.put(Integer.valueOf(c4807cArr4[5].f14802a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            f14780x[i] = new HashMap<>();
            f14781y[i] = new HashMap<>();
            for (C4807c c4807c : c4807cArr3[i]) {
                f14780x[i].put(Integer.valueOf(c4807c.f14802a), c4807c);
                f14781y[i].put(c4807c.f14803b, c4807c);
            }
            i++;
        }
    }

    public C4804a(String str) throws IOException {
        Throwable th;
        C4807c[][] c4807cArr = f14778v;
        this.f14785c = new HashMap[c4807cArr.length];
        this.f14786d = new HashSet(c4807cArr.length);
        if (str != null) {
            FileInputStream fileInputStream = null;
            this.f14783a = str;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    m417m(fileInputStream2);
                    try {
                        fileInputStream2.close();
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception e2) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (RuntimeException e3) {
                            throw e3;
                        } catch (Exception e4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            throw new IllegalArgumentException("filename cannot be null");
        }
    }

    /* renamed from: b */
    public static long[] m428b(Object obj) {
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

    /* renamed from: a */
    public final void m429a() {
        String m427c = m427c("DateTimeOriginal");
        if (m427c != null && m427c("DateTime") == null) {
            this.f14785c[0].put("DateTime", C4806b.m408a(m427c));
        }
        if (m427c("ImageWidth") == null) {
            this.f14785c[0].put("ImageWidth", C4806b.m407b(0L, this.f14787e));
        }
        if (m427c("ImageLength") == null) {
            this.f14785c[0].put("ImageLength", C4806b.m407b(0L, this.f14787e));
        }
        if (m427c("Orientation") == null) {
            this.f14785c[0].put("Orientation", C4806b.m407b(0L, this.f14787e));
        }
        if (m427c("LightSource") == null) {
            this.f14785c[1].put("LightSource", C4806b.m407b(0L, this.f14787e));
        }
    }

    /* renamed from: c */
    public String m427c(String str) {
        C4806b m426d = m426d(str);
        if (m426d != null) {
            if (!f14782z.contains(str)) {
                return m426d.m402g(this.f14787e);
            }
            if (!str.equals("GPSTimeStamp")) {
                try {
                    return Double.toString(m426d.m404e(this.f14787e));
                } catch (NumberFormatException e) {
                    return null;
                }
            }
            int i = m426d.f14799a;
            if (i != 5 && i != 10) {
                StringBuilder m8752j = C0082b.m8752j("GPS Timestamp format is not rational. format=");
                m8752j.append(m426d.f14799a);
                Log.w("ExifInterface", m8752j.toString());
                return null;
            }
            C4808d[] c4808dArr = (C4808d[]) m426d.m401h(this.f14787e);
            if (c4808dArr != null && c4808dArr.length == 3) {
                return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) c4808dArr[0].f14806a) / ((float) c4808dArr[0].f14807b))), Integer.valueOf((int) (((float) c4808dArr[1].f14806a) / ((float) c4808dArr[1].f14807b))), Integer.valueOf((int) (((float) c4808dArr[2].f14806a) / ((float) c4808dArr[2].f14807b))));
            }
            StringBuilder m8752j2 = C0082b.m8752j("Invalid GPS Timestamp array. array=");
            m8752j2.append(Arrays.toString(c4808dArr));
            Log.w("ExifInterface", m8752j2.toString());
            return null;
        }
        return null;
    }

    /* renamed from: d */
    public final C4806b m426d(String str) {
        String str2 = str;
        if ("ISOSpeedRatings".equals(str)) {
            str2 = "PhotographicSensitivity";
        }
        for (int i = 0; i < f14778v.length; i++) {
            C4806b c4806b = this.f14785c[i].get(str2);
            if (c4806b != null) {
                return c4806b;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ea A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x021a A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m425e(p281x0.C4804a.C4805a r8, int r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 701
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p281x0.C4804a.m425e(x0.a$a, int, int):void");
    }

    /* renamed from: f */
    public final int m424f(BufferedInputStream bufferedInputStream) throws IOException {
        boolean z;
        boolean z2;
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f14771o;
            if (i2 >= bArr2.length) {
                z = true;
                break;
            } else if (bArr[i2] != bArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            return 4;
        }
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        int i3 = 0;
        while (true) {
            if (i3 >= bytes.length) {
                z2 = true;
                break;
            } else if (bArr[i3] != bytes[i3]) {
                z2 = false;
                break;
            } else {
                i3++;
            }
        }
        if (z2) {
            return 9;
        }
        C4805a c4805a = new C4805a(bArr);
        ByteOrder m415o = m415o(c4805a);
        this.f14787e = m415o;
        c4805a.f14796b = m415o;
        short readShort = c4805a.readShort();
        c4805a.close();
        if (readShort == 20306 || readShort == 21330) {
            return 7;
        }
        C4805a c4805a2 = new C4805a(bArr);
        ByteOrder m415o2 = m415o(c4805a2);
        this.f14787e = m415o2;
        c4805a2.f14796b = m415o2;
        short readShort2 = c4805a2.readShort();
        c4805a2.close();
        if (readShort2 == 85) {
            i = 10;
        }
        return i;
    }

    /* renamed from: g */
    public final void m423g(C4805a c4805a) throws IOException {
        m421i(c4805a);
        C4806b c4806b = this.f14785c[1].get("MakerNote");
        if (c4806b != null) {
            C4805a c4805a2 = new C4805a(c4806b.f14801c);
            c4805a2.f14796b = this.f14787e;
            byte[] bArr = f14772p;
            byte[] bArr2 = new byte[bArr.length];
            c4805a2.readFully(bArr2);
            c4805a2.m409k(0L);
            byte[] bArr3 = f14773q;
            byte[] bArr4 = new byte[bArr3.length];
            c4805a2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                c4805a2.m409k(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                c4805a2.m409k(12L);
            }
            m414p(c4805a2, 6);
            C4806b c4806b2 = this.f14785c[7].get("PreviewImageStart");
            C4806b c4806b3 = this.f14785c[7].get("PreviewImageLength");
            if (c4806b2 != null && c4806b3 != null) {
                this.f14785c[5].put("JPEGInterchangeFormat", c4806b2);
                this.f14785c[5].put("JPEGInterchangeFormatLength", c4806b3);
            }
            C4806b c4806b4 = this.f14785c[8].get("AspectFrame");
            if (c4806b4 == null) {
                return;
            }
            int[] iArr = (int[]) c4806b4.m401h(this.f14787e);
            if (iArr == null || iArr.length != 4) {
                StringBuilder m8752j = C0082b.m8752j("Invalid aspect frame values. frame=");
                m8752j.append(Arrays.toString(iArr));
                Log.w("ExifInterface", m8752j.toString());
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
                C4806b m405d = C4806b.m405d(i3, this.f14787e);
                C4806b m405d2 = C4806b.m405d(i4, this.f14787e);
                this.f14785c[0].put("ImageWidth", m405d);
                this.f14785c[0].put("ImageLength", m405d2);
            }
        }
    }

    /* renamed from: h */
    public final void m422h(C4805a c4805a) throws IOException {
        c4805a.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        c4805a.read(bArr);
        c4805a.skipBytes(4);
        c4805a.read(bArr2);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        m425e(c4805a, i, 5);
        c4805a.m409k(i2);
        c4805a.f14796b = ByteOrder.BIG_ENDIAN;
        int readInt = c4805a.readInt();
        for (int i3 = 0; i3 < readInt; i3++) {
            int readUnsignedShort = c4805a.readUnsignedShort();
            int readUnsignedShort2 = c4805a.readUnsignedShort();
            if (readUnsignedShort == f14777u.f14802a) {
                short readShort = c4805a.readShort();
                short readShort2 = c4805a.readShort();
                C4806b m405d = C4806b.m405d(readShort, this.f14787e);
                C4806b m405d2 = C4806b.m405d(readShort2, this.f14787e);
                this.f14785c[0].put("ImageLength", m405d);
                this.f14785c[0].put("ImageWidth", m405d2);
                return;
            }
            c4805a.skipBytes(readUnsignedShort2);
        }
    }

    /* renamed from: i */
    public final void m421i(C4805a c4805a) throws IOException {
        C4806b c4806b;
        m416n(c4805a, c4805a.available());
        m414p(c4805a, 0);
        m411s(c4805a, 0);
        m411s(c4805a, 5);
        m411s(c4805a, 4);
        m412r(0, 5);
        m412r(0, 4);
        m412r(5, 4);
        C4806b c4806b2 = this.f14785c[1].get("PixelXDimension");
        C4806b c4806b3 = this.f14785c[1].get("PixelYDimension");
        if (c4806b2 != null && c4806b3 != null) {
            this.f14785c[0].put("ImageWidth", c4806b2);
            this.f14785c[0].put("ImageLength", c4806b3);
        }
        if (this.f14785c[4].isEmpty() && m418l(this.f14785c[5])) {
            HashMap<String, C4806b>[] hashMapArr = this.f14785c;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        m418l(this.f14785c[4]);
        if (this.f14784b != 8 || (c4806b = this.f14785c[1].get("MakerNote")) == null) {
            return;
        }
        C4805a c4805a2 = new C4805a(c4806b.f14801c);
        c4805a2.f14796b = this.f14787e;
        c4805a2.m409k(6L);
        m414p(c4805a2, 9);
        C4806b c4806b4 = this.f14785c[9].get("ColorSpace");
        if (c4806b4 == null) {
            return;
        }
        this.f14785c[1].put("ColorSpace", c4806b4);
    }

    /* renamed from: j */
    public final void m420j(C4805a c4805a) throws IOException {
        m421i(c4805a);
        if (this.f14785c[0].get("JpgFromRaw") != null) {
            m425e(c4805a, this.f14792j, 5);
        }
        C4806b c4806b = this.f14785c[0].get("ISO");
        C4806b c4806b2 = this.f14785c[1].get("PhotographicSensitivity");
        if (c4806b == null || c4806b2 != null) {
            return;
        }
        this.f14785c[1].put("PhotographicSensitivity", c4806b);
    }

    /* renamed from: k */
    public final void m419k(C4805a c4805a, HashMap hashMap) throws IOException {
        int i;
        int i2;
        C4806b c4806b = (C4806b) hashMap.get("JPEGInterchangeFormat");
        C4806b c4806b2 = (C4806b) hashMap.get("JPEGInterchangeFormatLength");
        if (c4806b == null || c4806b2 == null) {
            return;
        }
        int m403f = c4806b.m403f(this.f14787e);
        int min = Math.min(c4806b2.m403f(this.f14787e), c4805a.available() - m403f);
        int i3 = this.f14784b;
        if (i3 != 4 && i3 != 9 && i3 != 10) {
            i = m403f;
            if (i3 == 7) {
                i2 = this.f14789g;
            }
            if (i <= 0 || min <= 0 || this.f14783a != null) {
                return;
            }
            c4805a.m409k(i);
            c4805a.readFully(new byte[min]);
            return;
        }
        i2 = this.f14788f;
        i = m403f + i2;
        if (i <= 0) {
        }
    }

    /* renamed from: l */
    public final boolean m418l(HashMap hashMap) throws IOException {
        C4806b c4806b = (C4806b) hashMap.get("ImageLength");
        C4806b c4806b2 = (C4806b) hashMap.get("ImageWidth");
        if (c4806b == null || c4806b2 == null) {
            return false;
        }
        return c4806b.m403f(this.f14787e) <= 512 && c4806b2.m403f(this.f14787e) <= 512;
    }

    /* renamed from: m */
    public final void m417m(InputStream inputStream) throws IOException {
        for (int i = 0; i < f14778v.length; i++) {
            try {
                this.f14785c[i] = new HashMap<>();
            } catch (IOException e) {
            } catch (Throwable th) {
                m429a();
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        this.f14784b = m424f(bufferedInputStream);
        C4805a c4805a = new C4805a(bufferedInputStream);
        switch (this.f14784b) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
                m421i(c4805a);
                break;
            case 4:
                m425e(c4805a, 0, 0);
                break;
            case 7:
                m423g(c4805a);
                break;
            case 9:
                m422h(c4805a);
                break;
            case 10:
                m420j(c4805a);
                break;
        }
        m413q(c4805a);
        m429a();
    }

    /* renamed from: n */
    public final void m416n(C4805a c4805a, int i) throws IOException {
        ByteOrder m415o = m415o(c4805a);
        this.f14787e = m415o;
        c4805a.f14796b = m415o;
        int readUnsignedShort = c4805a.readUnsignedShort();
        int i2 = this.f14784b;
        if (i2 != 7 && i2 != 10 && readUnsignedShort != 42) {
            StringBuilder m8752j = C0082b.m8752j("Invalid start code: ");
            m8752j.append(Integer.toHexString(readUnsignedShort));
            throw new IOException(m8752j.toString());
        }
        int readInt = c4805a.readInt();
        if (readInt < 8 || readInt >= i) {
            throw new IOException(C0033h.m8886k("Invalid first Ifd offset: ", readInt));
        }
        int i3 = readInt - 8;
        if (i3 > 0 && c4805a.skipBytes(i3) != i3) {
            throw new IOException(C0033h.m8886k("Couldn't jump to first Ifd: ", i3));
        }
    }

    /* renamed from: o */
    public final ByteOrder m415o(C4805a c4805a) throws IOException {
        short readShort = c4805a.readShort();
        if (readShort != 18761) {
            if (readShort == 19789) {
                return ByteOrder.BIG_ENDIAN;
            }
            StringBuilder m8752j = C0082b.m8752j("Invalid byte order: ");
            m8752j.append(Integer.toHexString(readShort));
            throw new IOException(m8752j.toString());
        }
        return ByteOrder.LITTLE_ENDIAN;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x020f  */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v231, types: [long] */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m414p(p281x0.C4804a.C4805a r7, int r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p281x0.C4804a.m414p(x0.a$a, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a5, code lost:
        if (java.util.Arrays.equals(r0, p281x0.C4804a.f14770n) == false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m413q(p281x0.C4804a.C4805a r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p281x0.C4804a.m413q(x0.a$a):void");
    }

    /* renamed from: r */
    public final void m412r(int i, int i2) throws IOException {
        if (this.f14785c[i].isEmpty() || this.f14785c[i2].isEmpty()) {
            return;
        }
        C4806b c4806b = this.f14785c[i].get("ImageLength");
        C4806b c4806b2 = this.f14785c[i].get("ImageWidth");
        C4806b c4806b3 = this.f14785c[i2].get("ImageLength");
        C4806b c4806b4 = this.f14785c[i2].get("ImageWidth");
        if (c4806b == null || c4806b2 == null || c4806b3 == null || c4806b4 == null) {
            return;
        }
        int m403f = c4806b.m403f(this.f14787e);
        int m403f2 = c4806b2.m403f(this.f14787e);
        int m403f3 = c4806b3.m403f(this.f14787e);
        int m403f4 = c4806b4.m403f(this.f14787e);
        if (m403f >= m403f3 || m403f2 >= m403f4) {
            return;
        }
        HashMap<String, C4806b>[] hashMapArr = this.f14785c;
        HashMap<String, C4806b> hashMap = hashMapArr[i];
        hashMapArr[i] = hashMapArr[i2];
        hashMapArr[i2] = hashMap;
    }

    /* renamed from: s */
    public final void m411s(C4805a c4805a, int i) throws IOException {
        C4806b c4806b;
        C4806b c4806b2;
        C4806b c4806b3;
        C4806b c4806b4 = this.f14785c[i].get("DefaultCropSize");
        C4806b c4806b5 = this.f14785c[i].get("SensorTopBorder");
        C4806b c4806b6 = this.f14785c[i].get("SensorLeftBorder");
        C4806b c4806b7 = this.f14785c[i].get("SensorBottomBorder");
        C4806b c4806b8 = this.f14785c[i].get("SensorRightBorder");
        if (c4806b4 != null) {
            if (c4806b4.f14799a == 5) {
                C4808d[] c4808dArr = (C4808d[]) c4806b4.m401h(this.f14787e);
                if (c4808dArr == null || c4808dArr.length != 2) {
                    StringBuilder m8752j = C0082b.m8752j("Invalid crop size values. cropSize=");
                    m8752j.append(Arrays.toString(c4808dArr));
                    Log.w("ExifInterface", m8752j.toString());
                    return;
                }
                c4806b2 = C4806b.m406c(c4808dArr[0], this.f14787e);
                c4806b3 = C4806b.m406c(c4808dArr[1], this.f14787e);
            } else {
                int[] iArr = (int[]) c4806b4.m401h(this.f14787e);
                if (iArr == null || iArr.length != 2) {
                    StringBuilder m8752j2 = C0082b.m8752j("Invalid crop size values. cropSize=");
                    m8752j2.append(Arrays.toString(iArr));
                    Log.w("ExifInterface", m8752j2.toString());
                    return;
                }
                c4806b2 = C4806b.m405d(iArr[0], this.f14787e);
                c4806b3 = C4806b.m405d(iArr[1], this.f14787e);
            }
            this.f14785c[i].put("ImageWidth", c4806b2);
            this.f14785c[i].put("ImageLength", c4806b3);
        } else if (c4806b5 == null || c4806b6 == null || c4806b7 == null || c4806b8 == null) {
            C4806b c4806b9 = this.f14785c[i].get("ImageLength");
            C4806b c4806b10 = this.f14785c[i].get("ImageWidth");
            if ((c4806b9 != null && c4806b10 != null) || (c4806b = this.f14785c[i].get("JPEGInterchangeFormat")) == null) {
                return;
            }
            m425e(c4805a, c4806b.m403f(this.f14787e), i);
        } else {
            int m403f = c4806b5.m403f(this.f14787e);
            int m403f2 = c4806b7.m403f(this.f14787e);
            int m403f3 = c4806b8.m403f(this.f14787e);
            int m403f4 = c4806b6.m403f(this.f14787e);
            if (m403f2 <= m403f || m403f3 <= m403f4) {
                return;
            }
            C4806b m405d = C4806b.m405d(m403f2 - m403f, this.f14787e);
            C4806b m405d2 = C4806b.m405d(m403f3 - m403f4, this.f14787e);
            this.f14785c[i].put("ImageLength", m405d);
            this.f14785c[i].put("ImageWidth", m405d2);
        }
    }
}
