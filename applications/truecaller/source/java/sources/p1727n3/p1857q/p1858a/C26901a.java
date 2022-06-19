package p1727n3.p1857q.p1858a;

import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.mopub.mobileads.AdData;
import com.tenor.android.core.constant.StringConstant;
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
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.q.a.a */
/* loaded from: classes-dex2jar.jar:n3/q/a/a.class */
public class C26901a {

    /* renamed from: E */
    public static SimpleDateFormat f75201E;

    /* renamed from: F */
    public static SimpleDateFormat f75202F;

    /* renamed from: J */
    public static final C26905d[] f75206J;

    /* renamed from: K */
    public static final C26905d[] f75207K;

    /* renamed from: L */
    public static final C26905d[] f75208L;

    /* renamed from: M */
    public static final C26905d[] f75209M;

    /* renamed from: N */
    public static final C26905d[] f75210N;

    /* renamed from: P */
    public static final C26905d[] f75212P;

    /* renamed from: Q */
    public static final C26905d[] f75213Q;

    /* renamed from: R */
    public static final C26905d[] f75214R;

    /* renamed from: S */
    public static final C26905d[] f75215S;

    /* renamed from: T */
    public static final C26905d[][] f75216T;

    /* renamed from: V */
    public static final HashMap<Integer, C26905d>[] f75218V;

    /* renamed from: W */
    public static final HashMap<String, C26905d>[] f75219W;

    /* renamed from: Z */
    public static final Charset f75222Z;

    /* renamed from: a0 */
    public static final byte[] f75223a0;

    /* renamed from: b0 */
    public static final byte[] f75224b0;

    /* renamed from: a */
    public String f75239a;

    /* renamed from: b */
    public FileDescriptor f75240b;

    /* renamed from: c */
    public int f75241c;

    /* renamed from: d */
    public final HashMap<String, C26904c>[] f75242d;

    /* renamed from: e */
    public Set<Integer> f75243e;

    /* renamed from: f */
    public ByteOrder f75244f = ByteOrder.BIG_ENDIAN;

    /* renamed from: g */
    public boolean f75245g;

    /* renamed from: h */
    public int f75246h;

    /* renamed from: i */
    public int f75247i;

    /* renamed from: j */
    public int f75248j;

    /* renamed from: k */
    public int f75249k;

    /* renamed from: l */
    public int f75250l;

    /* renamed from: m */
    public static final boolean f75225m = Log.isLoggable("ExifInterface", 3);

    /* renamed from: n */
    public static final List<Integer> f75226n = Arrays.asList(1, 6, 3, 8);

    /* renamed from: o */
    public static final List<Integer> f75227o = Arrays.asList(2, 7, 4, 5);

    /* renamed from: p */
    public static final int[] f75228p = {8, 8, 8};

    /* renamed from: q */
    public static final int[] f75229q = {8};

    /* renamed from: r */
    public static final byte[] f75230r = {-1, -40, -1};

    /* renamed from: s */
    public static final byte[] f75231s = {102, 116, 121, 112};

    /* renamed from: t */
    public static final byte[] f75232t = {109, 105, 102, 49};

    /* renamed from: u */
    public static final byte[] f75233u = {104, 101, 105, 99};

    /* renamed from: v */
    public static final byte[] f75234v = {79, 76, 89, 77, 80, 0};

    /* renamed from: w */
    public static final byte[] f75235w = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* renamed from: x */
    public static final byte[] f75236x = {-119, 80, 78, 71, 13, 10, 26, 10};

    /* renamed from: y */
    public static final byte[] f75237y = {101, 88, 73, 102};

    /* renamed from: z */
    public static final byte[] f75238z = {73, 72, 68, 82};

    /* renamed from: A */
    public static final byte[] f75197A = {73, 69, 78, 68};

    /* renamed from: B */
    public static final byte[] f75198B = {82, 73, 70, 70};

    /* renamed from: C */
    public static final byte[] f75199C = {87, 69, 66, 80};

    /* renamed from: D */
    public static final byte[] f75200D = {69, 88, 73, 70};

    /* renamed from: G */
    public static final String[] f75203G = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};

    /* renamed from: H */
    public static final int[] f75204H = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};

    /* renamed from: I */
    public static final byte[] f75205I = {65, 83, 67, 73, 73, 0, 0, 0};

    /* renamed from: O */
    public static final C26905d f75211O = new C26905d("StripOffsets", 273, 3);

    /* renamed from: U */
    public static final C26905d[] f75217U = {new C26905d("SubIFDPointer", 330, 4), new C26905d("ExifIFDPointer", 34665, 4), new C26905d("GPSInfoIFDPointer", 34853, 4), new C26905d("InteroperabilityIFDPointer", 40965, 4), new C26905d("CameraSettingsIFDPointer", 8224, 1), new C26905d("ImageProcessingIFDPointer", 8256, 1)};

    /* renamed from: X */
    public static final HashSet<String> f75220X = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));

    /* renamed from: Y */
    public static final HashMap<Integer, Integer> f75221Y = new HashMap<>();

    /* renamed from: n3.q.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/q/a/a$a.class */
    public class C26902a extends MediaDataSource {

        /* renamed from: a */
        public long f75251a;

        /* renamed from: b */
        public final /* synthetic */ C26903b f75252b;

        public C26902a(C26901a c26901a, C26903b c26903b) {
            this.f75252b = c26903b;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // android.media.MediaDataSource
        public long getSize() throws IOException {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
            if (i2 == 0) {
                return 0;
            }
            if (j < 0) {
                return -1;
            }
            try {
                long j2 = this.f75251a;
                if (j2 != j) {
                    if (j2 >= 0 && j >= j2 + this.f75252b.available()) {
                        return -1;
                    }
                    this.f75252b.m1194d(j);
                    this.f75251a = j;
                }
                int i3 = i2;
                if (i2 > this.f75252b.available()) {
                    i3 = this.f75252b.available();
                }
                C26903b c26903b = this.f75252b;
                int read = c26903b.f75255a.read(bArr, i, i3);
                c26903b.f75258d += read;
                if (read >= 0) {
                    this.f75251a += read;
                    return read;
                }
            } catch (IOException e) {
            }
            this.f75251a = -1L;
            return -1;
        }
    }

    /* renamed from: n3.q.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/q/a/a$b.class */
    public static class C26903b extends InputStream implements DataInput {

        /* renamed from: e */
        public static final ByteOrder f75253e = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: f */
        public static final ByteOrder f75254f = ByteOrder.BIG_ENDIAN;

        /* renamed from: a */
        public DataInputStream f75255a;

        /* renamed from: b */
        public ByteOrder f75256b;

        /* renamed from: c */
        public final int f75257c;

        /* renamed from: d */
        public int f75258d;

        public C26903b(InputStream inputStream) throws IOException {
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            this.f75256b = byteOrder;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f75255a = dataInputStream;
            int available = dataInputStream.available();
            this.f75257c = available;
            this.f75258d = 0;
            this.f75255a.mark(available);
            this.f75256b = byteOrder;
        }

        public C26903b(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f75255a.available();
        }

        /* renamed from: b */
        public long m1195b() throws IOException {
            return readInt() & 4294967295L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* renamed from: d */
        public void m1194d(long j) throws IOException {
            char c;
            int i = this.f75258d;
            if (i > j) {
                this.f75258d = 0;
                this.f75255a.reset();
                this.f75255a.mark(this.f75257c);
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
        public void mark(int i) {
            synchronized (this) {
                this.f75255a.mark(i);
            }
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            this.f75258d++;
            return this.f75255a.read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.f75255a.read(bArr, i, i2);
            this.f75258d += read;
            return read;
        }

        @Override // java.io.DataInput
        public boolean readBoolean() throws IOException {
            this.f75258d++;
            return this.f75255a.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            int i = this.f75258d + 1;
            this.f75258d = i;
            if (i <= this.f75257c) {
                int read = this.f75255a.read();
                if (read < 0) {
                    throw new EOFException();
                }
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() throws IOException {
            this.f75258d += 2;
            return this.f75255a.readChar();
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
            int length = this.f75258d + bArr.length;
            this.f75258d = length;
            if (length <= this.f75257c) {
                if (this.f75255a.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.f75258d + i2;
            this.f75258d = i3;
            if (i3 <= this.f75257c) {
                if (this.f75255a.read(bArr, i, i2) != i2) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            int i = this.f75258d + 4;
            this.f75258d = i;
            if (i <= this.f75257c) {
                int read = this.f75255a.read();
                int read2 = this.f75255a.read();
                int read3 = this.f75255a.read();
                int read4 = this.f75255a.read();
                if ((read | read2 | read3 | read4) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f75256b;
                if (byteOrder == f75253e) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f75254f) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                StringBuilder m8728C = C22128a.m8728C("Invalid byte order: ");
                m8728C.append(this.f75256b);
                throw new IOException(m8728C.toString());
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() throws IOException {
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            int i = this.f75258d + 8;
            this.f75258d = i;
            if (i <= this.f75257c) {
                int read = this.f75255a.read();
                int read2 = this.f75255a.read();
                int read3 = this.f75255a.read();
                int read4 = this.f75255a.read();
                int read5 = this.f75255a.read();
                int read6 = this.f75255a.read();
                int read7 = this.f75255a.read();
                int read8 = this.f75255a.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f75256b;
                if (byteOrder == f75253e) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f75254f) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                StringBuilder m8728C = C22128a.m8728C("Invalid byte order: ");
                m8728C.append(this.f75256b);
                throw new IOException(m8728C.toString());
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i = this.f75258d + 2;
            this.f75258d = i;
            if (i <= this.f75257c) {
                int read = this.f75255a.read();
                int read2 = this.f75255a.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f75256b;
                if (byteOrder == f75253e) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == f75254f) {
                    return (short) ((read << 8) + read2);
                }
                StringBuilder m8728C = C22128a.m8728C("Invalid byte order: ");
                m8728C.append(this.f75256b);
                throw new IOException(m8728C.toString());
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() throws IOException {
            this.f75258d += 2;
            return this.f75255a.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() throws IOException {
            this.f75258d++;
            return this.f75255a.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            int i = this.f75258d + 2;
            this.f75258d = i;
            if (i <= this.f75257c) {
                int read = this.f75255a.read();
                int read2 = this.f75255a.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f75256b;
                if (byteOrder == f75253e) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == f75254f) {
                    return (read << 8) + read2;
                }
                StringBuilder m8728C = C22128a.m8728C("Invalid byte order: ");
                m8728C.append(this.f75256b);
                throw new IOException(m8728C.toString());
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int skipBytes(int i) throws IOException {
            int min = Math.min(i, this.f75257c - this.f75258d);
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= min) {
                    this.f75258d += i3;
                    return i3;
                }
                i2 = i3 + this.f75255a.skipBytes(min - i3);
            }
        }
    }

    /* renamed from: n3.q.a.a$c */
    /* loaded from: classes-dex2jar.jar:n3/q/a/a$c.class */
    public static class C26904c {

        /* renamed from: a */
        public final int f75259a;

        /* renamed from: b */
        public final int f75260b;

        /* renamed from: c */
        public final long f75261c;

        /* renamed from: d */
        public final byte[] f75262d;

        public C26904c(int i, int i2, long j, byte[] bArr) {
            this.f75259a = i;
            this.f75260b = i2;
            this.f75261c = j;
            this.f75262d = bArr;
        }

        public C26904c(int i, int i2, byte[] bArr) {
            this.f75259a = i;
            this.f75260b = i2;
            this.f75261c = -1L;
            this.f75262d = bArr;
        }

        /* renamed from: a */
        public static C26904c m1193a(String str) {
            byte[] bytes = C22128a.m8619g2(str, (char) 0).getBytes(C26901a.f75222Z);
            return new C26904c(2, bytes.length, bytes);
        }

        /* renamed from: b */
        public static C26904c m1192b(long j, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C26901a.f75204H[4] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i < 1; i++) {
                wrap.putInt((int) new long[]{j}[i]);
            }
            return new C26904c(4, 1, wrap.array());
        }

        /* renamed from: c */
        public static C26904c m1191c(C26906e c26906e, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C26901a.f75204H[5] * 1]);
            wrap.order(byteOrder);
            for (int i = 0; i < 1; i++) {
                C26906e c26906e2 = new C26906e[]{c26906e}[i];
                wrap.putInt((int) c26906e2.f75267a);
                wrap.putInt((int) c26906e2.f75268b);
            }
            return new C26904c(5, 1, wrap.array());
        }

        /* renamed from: d */
        public static C26904c m1190d(int i, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C26901a.f75204H[3] * 1]);
            wrap.order(byteOrder);
            for (int i2 = 0; i2 < 1; i2++) {
                wrap.putShort((short) new int[]{i}[i2]);
            }
            return new C26904c(3, 1, wrap.array());
        }

        /* renamed from: e */
        public double m1189e(ByteOrder byteOrder) {
            Object m1186h = m1186h(byteOrder);
            if (m1186h != null) {
                if (m1186h instanceof String) {
                    return Double.parseDouble((String) m1186h);
                }
                if (m1186h instanceof long[]) {
                    long[] jArr = (long[]) m1186h;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return jArr[0];
                } else if (m1186h instanceof int[]) {
                    int[] iArr = (int[]) m1186h;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                } else if (m1186h instanceof double[]) {
                    double[] dArr = (double[]) m1186h;
                    if (dArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return dArr[0];
                } else if (!(m1186h instanceof C26906e[])) {
                    throw new NumberFormatException("Couldn't find a double value");
                } else {
                    C26906e[] c26906eArr = (C26906e[]) m1186h;
                    if (c26906eArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    C26906e c26906e = c26906eArr[0];
                    return c26906e.f75267a / c26906e.f75268b;
                }
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        /* renamed from: f */
        public int m1188f(ByteOrder byteOrder) {
            Object m1186h = m1186h(byteOrder);
            if (m1186h != null) {
                if (m1186h instanceof String) {
                    return Integer.parseInt((String) m1186h);
                }
                if (m1186h instanceof long[]) {
                    long[] jArr = (long[]) m1186h;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return (int) jArr[0];
                } else if (!(m1186h instanceof int[])) {
                    throw new NumberFormatException("Couldn't find a integer value");
                } else {
                    int[] iArr = (int[]) m1186h;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                }
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        /* renamed from: g */
        public String m1187g(ByteOrder byteOrder) {
            Object m1186h = m1186h(byteOrder);
            if (m1186h == null) {
                return null;
            }
            if (m1186h instanceof String) {
                return (String) m1186h;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (m1186h instanceof long[]) {
                long[] jArr = (long[]) m1186h;
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
            } else if (m1186h instanceof int[]) {
                int[] iArr = (int[]) m1186h;
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
            } else if (m1186h instanceof double[]) {
                double[] dArr = (double[]) m1186h;
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
            } else if (!(m1186h instanceof C26906e[])) {
                return null;
            } else {
                C26906e[] c26906eArr = (C26906e[]) m1186h;
                int i7 = 0;
                while (i7 < c26906eArr.length) {
                    sb.append(c26906eArr[i7].f75267a);
                    sb.append('/');
                    sb.append(c26906eArr[i7].f75268b);
                    int i8 = i7 + 1;
                    i7 = i8;
                    if (i8 != c26906eArr.length) {
                        sb.append(",");
                        i7 = i8;
                    }
                }
                return sb.toString();
            }
        }

        /* renamed from: h */
        public Object m1186h(ByteOrder byteOrder) {
            C26903b c26903b;
            Throwable th;
            byte b;
            byte[] bArr;
            boolean z;
            try {
                c26903b = new C26903b(this.f75262d);
                try {
                    c26903b.f75256b = byteOrder;
                    switch (this.f75259a) {
                        case 1:
                        case 6:
                            byte[] bArr2 = this.f75262d;
                            if (bArr2.length != 1 || bArr2[0] < 0 || bArr2[0] > 1) {
                                String str = new String(this.f75262d, C26901a.f75222Z);
                                try {
                                    c26903b.close();
                                } catch (IOException e) {
                                }
                                return str;
                            }
                            String str2 = new String(new char[]{(char) (this.f75262d[0] + 48)});
                            try {
                                c26903b.close();
                            } catch (IOException e2) {
                            }
                            return str2;
                        case 2:
                        case 7:
                            int i = 0;
                            if (this.f75260b >= C26901a.f75205I.length) {
                                int i2 = 0;
                                while (true) {
                                    bArr = C26901a.f75205I;
                                    z = true;
                                    if (i2 < bArr.length) {
                                        if (this.f75262d[i2] != bArr[i2]) {
                                            z = false;
                                        } else {
                                            i2++;
                                        }
                                    }
                                }
                                i = 0;
                                if (z) {
                                    i = bArr.length;
                                }
                            }
                            StringBuilder sb = new StringBuilder();
                            while (i < this.f75260b && (b = this.f75262d[i]) != 0) {
                                if (b >= 32) {
                                    sb.append((char) b);
                                } else {
                                    sb.append('?');
                                }
                                i++;
                            }
                            String sb2 = sb.toString();
                            try {
                                c26903b.close();
                            } catch (IOException e3) {
                            }
                            return sb2;
                        case 3:
                            int[] iArr = new int[this.f75260b];
                            for (int i3 = 0; i3 < this.f75260b; i3++) {
                                iArr[i3] = c26903b.readUnsignedShort();
                            }
                            try {
                                c26903b.close();
                            } catch (IOException e4) {
                            }
                            return iArr;
                        case 4:
                            long[] jArr = new long[this.f75260b];
                            for (int i4 = 0; i4 < this.f75260b; i4++) {
                                jArr[i4] = c26903b.m1195b();
                            }
                            try {
                                c26903b.close();
                            } catch (IOException e5) {
                            }
                            return jArr;
                        case 5:
                            C26906e[] c26906eArr = new C26906e[this.f75260b];
                            for (int i5 = 0; i5 < this.f75260b; i5++) {
                                c26906eArr[i5] = new C26906e(c26903b.m1195b(), c26903b.m1195b());
                            }
                            try {
                                c26903b.close();
                            } catch (IOException e6) {
                            }
                            return c26906eArr;
                        case 8:
                            int[] iArr2 = new int[this.f75260b];
                            for (int i6 = 0; i6 < this.f75260b; i6++) {
                                iArr2[i6] = c26903b.readShort();
                            }
                            try {
                                c26903b.close();
                            } catch (IOException e7) {
                            }
                            return iArr2;
                        case 9:
                            int[] iArr3 = new int[this.f75260b];
                            for (int i7 = 0; i7 < this.f75260b; i7++) {
                                iArr3[i7] = c26903b.readInt();
                            }
                            try {
                                c26903b.close();
                            } catch (IOException e8) {
                            }
                            return iArr3;
                        case 10:
                            C26906e[] c26906eArr2 = new C26906e[this.f75260b];
                            for (int i8 = 0; i8 < this.f75260b; i8++) {
                                c26906eArr2[i8] = new C26906e(c26903b.readInt(), c26903b.readInt());
                            }
                            try {
                                c26903b.close();
                            } catch (IOException e9) {
                            }
                            return c26906eArr2;
                        case 11:
                            double[] dArr = new double[this.f75260b];
                            for (int i9 = 0; i9 < this.f75260b; i9++) {
                                dArr[i9] = c26903b.readFloat();
                            }
                            try {
                                c26903b.close();
                            } catch (IOException e10) {
                            }
                            return dArr;
                        case 12:
                            double[] dArr2 = new double[this.f75260b];
                            for (int i10 = 0; i10 < this.f75260b; i10++) {
                                dArr2[i10] = c26903b.readDouble();
                            }
                            try {
                                c26903b.close();
                            } catch (IOException e11) {
                            }
                            return dArr2;
                        default:
                            try {
                                c26903b.close();
                                return null;
                            } catch (IOException e12) {
                                return null;
                            }
                    }
                } catch (IOException e13) {
                    if (c26903b == null) {
                        return null;
                    }
                    try {
                        c26903b.close();
                        return null;
                    } catch (IOException e14) {
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (c26903b != null) {
                        try {
                            c26903b.close();
                        } catch (IOException e15) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e16) {
                c26903b = null;
            } catch (Throwable th3) {
                th = th3;
                c26903b = null;
            }
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("(");
            m8728C.append(C26901a.f75203G[this.f75259a]);
            m8728C.append(", data length:");
            return C22128a.m8697J2(m8728C, this.f75262d.length, ")");
        }
    }

    /* renamed from: n3.q.a.a$d */
    /* loaded from: classes-dex2jar.jar:n3/q/a/a$d.class */
    public static class C26905d {

        /* renamed from: a */
        public final int f75263a;

        /* renamed from: b */
        public final String f75264b;

        /* renamed from: c */
        public final int f75265c;

        /* renamed from: d */
        public final int f75266d;

        public C26905d(String str, int i, int i2) {
            this.f75264b = str;
            this.f75263a = i;
            this.f75265c = i2;
            this.f75266d = -1;
        }

        public C26905d(String str, int i, int i2, int i3) {
            this.f75264b = str;
            this.f75263a = i;
            this.f75265c = i2;
            this.f75266d = i3;
        }
    }

    /* renamed from: n3.q.a.a$e */
    /* loaded from: classes-dex2jar.jar:n3/q/a/a$e.class */
    public static class C26906e {

        /* renamed from: a */
        public final long f75267a;

        /* renamed from: b */
        public final long f75268b;

        public C26906e(long j, long j2) {
            if (j2 == 0) {
                this.f75267a = 0L;
                this.f75268b = 1L;
                return;
            }
            this.f75267a = j;
            this.f75268b = j2;
        }

        public String toString() {
            return this.f75267a + StringConstant.SLASH + this.f75268b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v288, types: [n3.q.a.a$d[], n3.q.a.a$d[][]] */
    static {
        C26905d[] c26905dArr;
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        C26905d[] c26905dArr2 = {new C26905d("NewSubfileType", 254, 4), new C26905d("SubfileType", 255, 4), new C26905d("ImageWidth", 256, 3, 4), new C26905d("ImageLength", 257, 3, 4), new C26905d("BitsPerSample", 258, 3), new C26905d("Compression", 259, 3), new C26905d("PhotometricInterpretation", 262, 3), new C26905d("ImageDescription", 270, 2), new C26905d("Make", 271, 2), new C26905d("Model", 272, 2), new C26905d("StripOffsets", 273, 3, 4), new C26905d("Orientation", 274, 3), new C26905d("SamplesPerPixel", 277, 3), new C26905d("RowsPerStrip", 278, 3, 4), new C26905d("StripByteCounts", 279, 3, 4), new C26905d("XResolution", 282, 5), new C26905d("YResolution", 283, 5), new C26905d("PlanarConfiguration", 284, 3), new C26905d("ResolutionUnit", 296, 3), new C26905d("TransferFunction", 301, 3), new C26905d("Software", 305, 2), new C26905d("DateTime", 306, 2), new C26905d("Artist", 315, 2), new C26905d("WhitePoint", 318, 5), new C26905d("PrimaryChromaticities", 319, 5), new C26905d("SubIFDPointer", 330, 4), new C26905d("JPEGInterchangeFormat", 513, 4), new C26905d("JPEGInterchangeFormatLength", 514, 4), new C26905d("YCbCrCoefficients", 529, 5), new C26905d("YCbCrSubSampling", 530, 3), new C26905d("YCbCrPositioning", 531, 3), new C26905d("ReferenceBlackWhite", 532, 5), new C26905d("Copyright", 33432, 2), new C26905d("ExifIFDPointer", 34665, 4), new C26905d("GPSInfoIFDPointer", 34853, 4), new C26905d("SensorTopBorder", 4, 4), new C26905d("SensorLeftBorder", 5, 4), new C26905d("SensorBottomBorder", 6, 4), new C26905d("SensorRightBorder", 7, 4), new C26905d("ISO", 23, 3), new C26905d("JpgFromRaw", 46, 7), new C26905d("Xmp", 700, 1)};
        f75206J = c26905dArr2;
        C26905d[] c26905dArr3 = {new C26905d("ExposureTime", 33434, 5), new C26905d("FNumber", 33437, 5), new C26905d("ExposureProgram", 34850, 3), new C26905d("SpectralSensitivity", 34852, 2), new C26905d("PhotographicSensitivity", 34855, 3), new C26905d("OECF", 34856, 7), new C26905d("SensitivityType", 34864, 3), new C26905d("StandardOutputSensitivity", 34865, 4), new C26905d("RecommendedExposureIndex", 34866, 4), new C26905d("ISOSpeed", 34867, 4), new C26905d("ISOSpeedLatitudeyyy", 34868, 4), new C26905d("ISOSpeedLatitudezzz", 34869, 4), new C26905d("ExifVersion", 36864, 2), new C26905d("DateTimeOriginal", 36867, 2), new C26905d("DateTimeDigitized", 36868, 2), new C26905d("OffsetTime", 36880, 2), new C26905d("OffsetTimeOriginal", 36881, 2), new C26905d("OffsetTimeDigitized", 36882, 2), new C26905d("ComponentsConfiguration", 37121, 7), new C26905d("CompressedBitsPerPixel", 37122, 5), new C26905d("ShutterSpeedValue", 37377, 10), new C26905d("ApertureValue", 37378, 5), new C26905d("BrightnessValue", 37379, 10), new C26905d("ExposureBiasValue", 37380, 10), new C26905d("MaxApertureValue", 37381, 5), new C26905d("SubjectDistance", 37382, 5), new C26905d("MeteringMode", 37383, 3), new C26905d("LightSource", 37384, 3), new C26905d("Flash", 37385, 3), new C26905d("FocalLength", 37386, 5), new C26905d("SubjectArea", 37396, 3), new C26905d("MakerNote", 37500, 7), new C26905d("UserComment", 37510, 7), new C26905d("SubSecTime", 37520, 2), new C26905d("SubSecTimeOriginal", 37521, 2), new C26905d("SubSecTimeDigitized", 37522, 2), new C26905d("FlashpixVersion", 40960, 7), new C26905d("ColorSpace", 40961, 3), new C26905d("PixelXDimension", 40962, 3, 4), new C26905d("PixelYDimension", 40963, 3, 4), new C26905d("RelatedSoundFile", 40964, 2), new C26905d("InteroperabilityIFDPointer", 40965, 4), new C26905d("FlashEnergy", 41483, 5), new C26905d("SpatialFrequencyResponse", 41484, 7), new C26905d("FocalPlaneXResolution", 41486, 5), new C26905d("FocalPlaneYResolution", 41487, 5), new C26905d("FocalPlaneResolutionUnit", 41488, 3), new C26905d("SubjectLocation", 41492, 3), new C26905d("ExposureIndex", 41493, 5), new C26905d("SensingMethod", 41495, 3), new C26905d("FileSource", 41728, 7), new C26905d("SceneType", 41729, 7), new C26905d("CFAPattern", 41730, 7), new C26905d("CustomRendered", 41985, 3), new C26905d("ExposureMode", 41986, 3), new C26905d("WhiteBalance", 41987, 3), new C26905d("DigitalZoomRatio", 41988, 5), new C26905d("FocalLengthIn35mmFilm", 41989, 3), new C26905d("SceneCaptureType", 41990, 3), new C26905d("GainControl", 41991, 3), new C26905d("Contrast", 41992, 3), new C26905d("Saturation", 41993, 3), new C26905d("Sharpness", 41994, 3), new C26905d("DeviceSettingDescription", 41995, 7), new C26905d("SubjectDistanceRange", 41996, 3), new C26905d("ImageUniqueID", 42016, 2), new C26905d("CameraOwnerName", 42032, 2), new C26905d("BodySerialNumber", 42033, 2), new C26905d("LensSpecification", 42034, 5), new C26905d("LensMake", 42035, 2), new C26905d("LensModel", 42036, 2), new C26905d("Gamma", 42240, 5), new C26905d("DNGVersion", 50706, 1), new C26905d("DefaultCropSize", 50720, 3, 4)};
        f75207K = c26905dArr3;
        C26905d[] c26905dArr4 = {new C26905d("GPSVersionID", 0, 1), new C26905d("GPSLatitudeRef", 1, 2), new C26905d("GPSLatitude", 2, 5, 10), new C26905d("GPSLongitudeRef", 3, 2), new C26905d("GPSLongitude", 4, 5, 10), new C26905d("GPSAltitudeRef", 5, 1), new C26905d("GPSAltitude", 6, 5), new C26905d("GPSTimeStamp", 7, 5), new C26905d("GPSSatellites", 8, 2), new C26905d("GPSStatus", 9, 2), new C26905d("GPSMeasureMode", 10, 2), new C26905d("GPSDOP", 11, 5), new C26905d("GPSSpeedRef", 12, 2), new C26905d("GPSSpeed", 13, 5), new C26905d("GPSTrackRef", 14, 2), new C26905d("GPSTrack", 15, 5), new C26905d("GPSImgDirectionRef", 16, 2), new C26905d("GPSImgDirection", 17, 5), new C26905d("GPSMapDatum", 18, 2), new C26905d("GPSDestLatitudeRef", 19, 2), new C26905d("GPSDestLatitude", 20, 5), new C26905d("GPSDestLongitudeRef", 21, 2), new C26905d("GPSDestLongitude", 22, 5), new C26905d("GPSDestBearingRef", 23, 2), new C26905d("GPSDestBearing", 24, 5), new C26905d("GPSDestDistanceRef", 25, 2), new C26905d("GPSDestDistance", 26, 5), new C26905d("GPSProcessingMethod", 27, 7), new C26905d("GPSAreaInformation", 28, 7), new C26905d("GPSDateStamp", 29, 2), new C26905d("GPSDifferential", 30, 3), new C26905d("GPSHPositioningError", 31, 5)};
        f75208L = c26905dArr4;
        C26905d[] c26905dArr5 = {new C26905d("InteroperabilityIndex", 1, 2)};
        f75209M = c26905dArr5;
        C26905d[] c26905dArr6 = {new C26905d("NewSubfileType", 254, 4), new C26905d("SubfileType", 255, 4), new C26905d("ThumbnailImageWidth", 256, 3, 4), new C26905d("ThumbnailImageLength", 257, 3, 4), new C26905d("BitsPerSample", 258, 3), new C26905d("Compression", 259, 3), new C26905d("PhotometricInterpretation", 262, 3), new C26905d("ImageDescription", 270, 2), new C26905d("Make", 271, 2), new C26905d("Model", 272, 2), new C26905d("StripOffsets", 273, 3, 4), new C26905d("ThumbnailOrientation", 274, 3), new C26905d("SamplesPerPixel", 277, 3), new C26905d("RowsPerStrip", 278, 3, 4), new C26905d("StripByteCounts", 279, 3, 4), new C26905d("XResolution", 282, 5), new C26905d("YResolution", 283, 5), new C26905d("PlanarConfiguration", 284, 3), new C26905d("ResolutionUnit", 296, 3), new C26905d("TransferFunction", 301, 3), new C26905d("Software", 305, 2), new C26905d("DateTime", 306, 2), new C26905d("Artist", 315, 2), new C26905d("WhitePoint", 318, 5), new C26905d("PrimaryChromaticities", 319, 5), new C26905d("SubIFDPointer", 330, 4), new C26905d("JPEGInterchangeFormat", 513, 4), new C26905d("JPEGInterchangeFormatLength", 514, 4), new C26905d("YCbCrCoefficients", 529, 5), new C26905d("YCbCrSubSampling", 530, 3), new C26905d("YCbCrPositioning", 531, 3), new C26905d("ReferenceBlackWhite", 532, 5), new C26905d("Copyright", 33432, 2), new C26905d("ExifIFDPointer", 34665, 4), new C26905d("GPSInfoIFDPointer", 34853, 4), new C26905d("DNGVersion", 50706, 1), new C26905d("DefaultCropSize", 50720, 3, 4)};
        f75210N = c26905dArr6;
        C26905d[] c26905dArr7 = {new C26905d("ThumbnailImage", 256, 7), new C26905d("CameraSettingsIFDPointer", 8224, 4), new C26905d("ImageProcessingIFDPointer", 8256, 4)};
        f75212P = c26905dArr7;
        C26905d[] c26905dArr8 = {new C26905d("PreviewImageStart", 257, 4), new C26905d("PreviewImageLength", 258, 4)};
        f75213Q = c26905dArr8;
        C26905d[] c26905dArr9 = {new C26905d("AspectFrame", 4371, 3)};
        f75214R = c26905dArr9;
        C26905d[] c26905dArr10 = {new C26905d("ColorSpace", 55, 3)};
        f75215S = c26905dArr10;
        ?? r0 = {c26905dArr2, c26905dArr3, c26905dArr4, c26905dArr5, c26905dArr6, c26905dArr2, c26905dArr7, c26905dArr8, c26905dArr9, c26905dArr10};
        f75216T = r0;
        f75218V = new HashMap[r0.length];
        f75219W = new HashMap[r0.length];
        Charset forName = Charset.forName("US-ASCII");
        f75222Z = forName;
        f75223a0 = "Exif����".getBytes(forName);
        f75224b0 = "http://ns.adobe.com/xap/1.0/��".getBytes(forName);
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale);
        f75201E = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
        f75202F = simpleDateFormat2;
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            C26905d[][] c26905dArr11 = f75216T;
            if (i >= c26905dArr11.length) {
                HashMap<Integer, Integer> hashMap = f75221Y;
                C26905d[] c26905dArr12 = f75217U;
                hashMap.put(Integer.valueOf(c26905dArr12[0].f75263a), 5);
                hashMap.put(Integer.valueOf(c26905dArr12[1].f75263a), 1);
                hashMap.put(Integer.valueOf(c26905dArr12[2].f75263a), 2);
                hashMap.put(Integer.valueOf(c26905dArr12[3].f75263a), 3);
                hashMap.put(Integer.valueOf(c26905dArr12[4].f75263a), 7);
                hashMap.put(Integer.valueOf(c26905dArr12[5].f75263a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            f75218V[i] = new HashMap<>();
            f75219W[i] = new HashMap<>();
            for (C26905d c26905d : c26905dArr11[i]) {
                f75218V[i].put(Integer.valueOf(c26905d.f75263a), c26905d);
                f75219W[i].put(c26905d.f75264b, c26905d);
            }
            i++;
        }
    }

    public C26901a(String str) throws IOException {
        FileInputStream fileInputStream;
        Throwable th;
        boolean z;
        C26905d[][] c26905dArr = f75216T;
        this.f75242d = new HashMap[c26905dArr.length];
        this.f75243e = new HashSet(c26905dArr.length);
        Objects.requireNonNull(str, "filename cannot be null");
        this.f75239a = str;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                try {
                    Os.lseek(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                    z = true;
                } catch (Exception e) {
                    z = false;
                }
                if (z) {
                    this.f75240b = fileInputStream.getFD();
                } else {
                    this.f75240b = null;
                }
                m1204r(fileInputStream);
                try {
                    fileInputStream.close();
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception e3) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (RuntimeException e4) {
                        throw e4;
                    } catch (Exception e5) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* renamed from: b */
    public static String m1220b(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            sb.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static long[] m1219c(Object obj) {
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

    /* renamed from: y */
    public static boolean m1197y(byte[] bArr, byte[] bArr2) {
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

    /* renamed from: A */
    public final void m1223A(C26903b c26903b, int i) throws IOException {
        C26904c c26904c;
        C26904c c26904c2;
        C26904c c26904c3 = this.f75242d[i].get("DefaultCropSize");
        C26904c c26904c4 = this.f75242d[i].get("SensorTopBorder");
        C26904c c26904c5 = this.f75242d[i].get("SensorLeftBorder");
        C26904c c26904c6 = this.f75242d[i].get("SensorBottomBorder");
        C26904c c26904c7 = this.f75242d[i].get("SensorRightBorder");
        if (c26904c3 != null) {
            if (c26904c3.f75259a == 5) {
                C26906e[] c26906eArr = (C26906e[]) c26904c3.m1186h(this.f75244f);
                if (c26906eArr == null || c26906eArr.length != 2) {
                    Arrays.toString(c26906eArr);
                    return;
                } else {
                    c26904c2 = C26904c.m1191c(c26906eArr[0], this.f75244f);
                    c26904c = C26904c.m1191c(c26906eArr[1], this.f75244f);
                }
            } else {
                int[] iArr = (int[]) c26904c3.m1186h(this.f75244f);
                if (iArr == null || iArr.length != 2) {
                    Arrays.toString(iArr);
                    return;
                } else {
                    c26904c2 = C26904c.m1190d(iArr[0], this.f75244f);
                    c26904c = C26904c.m1190d(iArr[1], this.f75244f);
                }
            }
            this.f75242d[i].put("ImageWidth", c26904c2);
            this.f75242d[i].put("ImageLength", c26904c);
        } else if (c26904c4 != null && c26904c5 != null && c26904c6 != null && c26904c7 != null) {
            int m1188f = c26904c4.m1188f(this.f75244f);
            int m1188f2 = c26904c6.m1188f(this.f75244f);
            int m1188f3 = c26904c7.m1188f(this.f75244f);
            int m1188f4 = c26904c5.m1188f(this.f75244f);
            if (m1188f2 <= m1188f || m1188f3 <= m1188f4) {
                return;
            }
            C26904c m1190d = C26904c.m1190d(m1188f2 - m1188f, this.f75244f);
            C26904c m1190d2 = C26904c.m1190d(m1188f3 - m1188f4, this.f75244f);
            this.f75242d[i].put("ImageLength", m1190d);
            this.f75242d[i].put("ImageWidth", m1190d2);
        } else {
            C26904c c26904c8 = this.f75242d[i].get("ImageLength");
            C26904c c26904c9 = this.f75242d[i].get("ImageWidth");
            if (c26904c8 != null && c26904c9 != null) {
                return;
            }
            C26904c c26904c10 = this.f75242d[i].get("JPEGInterchangeFormat");
            C26904c c26904c11 = this.f75242d[i].get("JPEGInterchangeFormatLength");
            if (c26904c10 == null || c26904c11 == null) {
                return;
            }
            int m1188f5 = c26904c10.m1188f(this.f75244f);
            int m1188f6 = c26904c10.m1188f(this.f75244f);
            c26903b.m1194d(m1188f5);
            byte[] bArr = new byte[m1188f6];
            c26903b.read(bArr);
            m1214h(new C26903b(bArr), m1188f5, i);
        }
    }

    /* renamed from: B */
    public final void m1222B() throws IOException {
        m1196z(0, 5);
        m1196z(0, 4);
        m1196z(5, 4);
        C26904c c26904c = this.f75242d[1].get("PixelXDimension");
        C26904c c26904c2 = this.f75242d[1].get("PixelYDimension");
        if (c26904c != null && c26904c2 != null) {
            this.f75242d[0].put("ImageWidth", c26904c);
            this.f75242d[0].put("ImageLength", c26904c2);
        }
        if (this.f75242d[4].isEmpty() && m1205q(this.f75242d[5])) {
            HashMap<String, C26904c>[] hashMapArr = this.f75242d;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        m1205q(this.f75242d[4]);
    }

    /* renamed from: a */
    public final void m1221a() {
        String m1218d = m1218d("DateTimeOriginal");
        if (m1218d != null && m1218d("DateTime") == null) {
            this.f75242d[0].put("DateTime", C26904c.m1193a(m1218d));
        }
        if (m1218d("ImageWidth") == null) {
            this.f75242d[0].put("ImageWidth", C26904c.m1192b(0L, this.f75244f));
        }
        if (m1218d("ImageLength") == null) {
            this.f75242d[0].put("ImageLength", C26904c.m1192b(0L, this.f75244f));
        }
        if (m1218d("Orientation") == null) {
            this.f75242d[0].put("Orientation", C26904c.m1192b(0L, this.f75244f));
        }
        if (m1218d("LightSource") == null) {
            this.f75242d[1].put("LightSource", C26904c.m1192b(0L, this.f75244f));
        }
    }

    /* renamed from: d */
    public String m1218d(String str) {
        C26904c m1216f = m1216f(str);
        if (m1216f != null) {
            if (!f75220X.contains(str)) {
                return m1216f.m1187g(this.f75244f);
            }
            if (!str.equals("GPSTimeStamp")) {
                try {
                    return Double.toString(m1216f.m1189e(this.f75244f));
                } catch (NumberFormatException e) {
                    return null;
                }
            }
            int i = m1216f.f75259a;
            if (i != 5 && i != 10) {
                return null;
            }
            C26906e[] c26906eArr = (C26906e[]) m1216f.m1186h(this.f75244f);
            if (c26906eArr != null && c26906eArr.length == 3) {
                return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) c26906eArr[0].f75267a) / ((float) c26906eArr[0].f75268b))), Integer.valueOf((int) (((float) c26906eArr[1].f75267a) / ((float) c26906eArr[1].f75268b))), Integer.valueOf((int) (((float) c26906eArr[2].f75267a) / ((float) c26906eArr[2].f75268b))));
            }
            Arrays.toString(c26906eArr);
            return null;
        }
        return null;
    }

    /* renamed from: e */
    public int m1217e(String str, int i) {
        C26904c m1216f = m1216f(str);
        if (m1216f == null) {
            return i;
        }
        try {
            return m1216f.m1188f(this.f75244f);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    /* renamed from: f */
    public final C26904c m1216f(String str) {
        String str2 = str;
        if ("ISOSpeedRatings".equals(str)) {
            str2 = "PhotographicSensitivity";
        }
        for (int i = 0; i < f75216T.length; i++) {
            C26904c c26904c = this.f75242d[i].get(str2);
            if (c26904c != null) {
                return c26904c;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final void m1215g(C26903b c26903b) throws IOException {
        String str;
        String str2;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(new C26902a(this, c26903b));
            String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
            String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
            String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
            String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
            String str3 = null;
            if ("yes".equals(extractMetadata3)) {
                str3 = mediaMetadataRetriever.extractMetadata(29);
                str2 = mediaMetadataRetriever.extractMetadata(30);
                str = mediaMetadataRetriever.extractMetadata(31);
            } else if ("yes".equals(extractMetadata4)) {
                str3 = mediaMetadataRetriever.extractMetadata(18);
                str2 = mediaMetadataRetriever.extractMetadata(19);
                str = mediaMetadataRetriever.extractMetadata(24);
            } else {
                str2 = null;
                str = null;
            }
            if (str3 != null) {
                this.f75242d[0].put("ImageWidth", C26904c.m1190d(Integer.parseInt(str3), this.f75244f));
            }
            if (str2 != null) {
                this.f75242d[0].put("ImageLength", C26904c.m1190d(Integer.parseInt(str2), this.f75244f));
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
                this.f75242d[0].put("Orientation", C26904c.m1190d(i, this.f75244f));
            }
            if (extractMetadata != null && extractMetadata2 != null) {
                int parseInt2 = Integer.parseInt(extractMetadata);
                int parseInt3 = Integer.parseInt(extractMetadata2);
                if (parseInt3 <= 6) {
                    throw new IOException("Invalid exif length");
                }
                c26903b.m1194d(parseInt2);
                byte[] bArr = new byte[6];
                if (c26903b.read(bArr) != 6) {
                    throw new IOException("Can't read identifier");
                }
                int i2 = parseInt3 - 6;
                if (!Arrays.equals(bArr, f75223a0)) {
                    throw new IOException("Invalid identifier");
                }
                byte[] bArr2 = new byte[i2];
                if (c26903b.read(bArr2) != i2) {
                    throw new IOException("Can't read exif");
                }
                this.f75247i = parseInt2 + 6;
                m1200v(bArr2, 0);
            }
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x02b7, code lost:
        r11.f75256b = r10.f75244f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02bf, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0137 A[FALL_THROUGH] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1214h(p1727n3.p1857q.p1858a.C26901a.C26903b r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1857q.p1858a.C26901a.m1214h(n3.q.a.a$b, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:163:0x0313, code lost:
        r10 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x023c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02a6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x023f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x01c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01bf A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v173, types: [long] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m1213i(java.io.BufferedInputStream r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 824
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1857q.p1858a.C26901a.m1213i(java.io.BufferedInputStream):int");
    }

    /* renamed from: j */
    public final void m1212j(C26903b c26903b) throws IOException {
        m1209m(c26903b);
        C26904c c26904c = this.f75242d[1].get("MakerNote");
        if (c26904c != null) {
            C26903b c26903b2 = new C26903b(c26904c.f75262d);
            c26903b2.f75256b = this.f75244f;
            byte[] bArr = f75234v;
            byte[] bArr2 = new byte[bArr.length];
            c26903b2.readFully(bArr2);
            c26903b2.m1194d(0L);
            byte[] bArr3 = f75235w;
            byte[] bArr4 = new byte[bArr3.length];
            c26903b2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                c26903b2.m1194d(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                c26903b2.m1194d(12L);
            }
            m1199w(c26903b2, 6);
            C26904c c26904c2 = this.f75242d[7].get("PreviewImageStart");
            C26904c c26904c3 = this.f75242d[7].get("PreviewImageLength");
            if (c26904c2 != null && c26904c3 != null) {
                this.f75242d[5].put("JPEGInterchangeFormat", c26904c2);
                this.f75242d[5].put("JPEGInterchangeFormatLength", c26904c3);
            }
            C26904c c26904c4 = this.f75242d[8].get("AspectFrame");
            if (c26904c4 == null) {
                return;
            }
            int[] iArr = (int[]) c26904c4.m1186h(this.f75244f);
            if (iArr == null || iArr.length != 4) {
                Arrays.toString(iArr);
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
                C26904c m1190d = C26904c.m1190d(i3, this.f75244f);
                C26904c m1190d2 = C26904c.m1190d(i4, this.f75244f);
                this.f75242d[0].put("ImageWidth", m1190d);
                this.f75242d[0].put("ImageLength", m1190d2);
            }
        }
    }

    /* renamed from: k */
    public final void m1211k(C26903b c26903b) throws IOException {
        if (f75225m) {
            String str = "getPngAttributes starting with: " + c26903b;
        }
        c26903b.mark(0);
        c26903b.f75256b = ByteOrder.BIG_ENDIAN;
        byte[] bArr = f75236x;
        c26903b.skipBytes(bArr.length);
        int length = bArr.length;
        int i = 0;
        while (true) {
            try {
                int i2 = length + i;
                int readInt = c26903b.readInt();
                byte[] bArr2 = new byte[4];
                if (c26903b.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i3 = i2 + 4 + 4;
                if (i3 == 16 && !Arrays.equals(bArr2, f75238z)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f75197A)) {
                    return;
                }
                if (Arrays.equals(bArr2, f75237y)) {
                    byte[] bArr3 = new byte[readInt];
                    if (c26903b.read(bArr3) != readInt) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + m1220b(bArr2));
                    }
                    int readInt2 = c26903b.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == readInt2) {
                        this.f75247i = i3;
                        m1200v(bArr3, 0);
                        m1222B();
                        m1198x(new C26903b(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                }
                int i4 = readInt + 4;
                c26903b.skipBytes(i4);
                length = i3;
                i = i4;
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    /* renamed from: l */
    public final void m1210l(C26903b c26903b) throws IOException {
        if (f75225m) {
            String str = "getRafAttributes starting with: " + c26903b;
        }
        c26903b.mark(0);
        c26903b.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        c26903b.read(bArr);
        c26903b.read(bArr2);
        c26903b.read(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        c26903b.m1194d(i);
        c26903b.read(bArr4);
        m1214h(new C26903b(bArr4), i, 5);
        c26903b.m1194d(i3);
        c26903b.f75256b = ByteOrder.BIG_ENDIAN;
        int readInt = c26903b.readInt();
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = c26903b.readUnsignedShort();
            int readUnsignedShort2 = c26903b.readUnsignedShort();
            if (readUnsignedShort == f75211O.f75263a) {
                short readShort = c26903b.readShort();
                short readShort2 = c26903b.readShort();
                C26904c m1190d = C26904c.m1190d(readShort, this.f75244f);
                C26904c m1190d2 = C26904c.m1190d(readShort2, this.f75244f);
                this.f75242d[0].put("ImageLength", m1190d);
                this.f75242d[0].put("ImageWidth", m1190d2);
                return;
            }
            c26903b.skipBytes(readUnsignedShort2);
        }
    }

    /* renamed from: m */
    public final void m1209m(C26903b c26903b) throws IOException {
        C26904c c26904c;
        m1203s(c26903b, c26903b.available());
        m1199w(c26903b, 0);
        m1223A(c26903b, 0);
        m1223A(c26903b, 5);
        m1223A(c26903b, 4);
        m1222B();
        if (this.f75241c != 8 || (c26904c = this.f75242d[1].get("MakerNote")) == null) {
            return;
        }
        C26903b c26903b2 = new C26903b(c26904c.f75262d);
        c26903b2.f75256b = this.f75244f;
        c26903b2.m1194d(6L);
        m1199w(c26903b2, 9);
        C26904c c26904c2 = this.f75242d[9].get("ColorSpace");
        if (c26904c2 == null) {
            return;
        }
        this.f75242d[1].put("ColorSpace", c26904c2);
    }

    /* renamed from: n */
    public final void m1208n(C26903b c26903b) throws IOException {
        if (f75225m) {
            String str = "getRw2Attributes starting with: " + c26903b;
        }
        m1209m(c26903b);
        C26904c c26904c = this.f75242d[0].get("JpgFromRaw");
        if (c26904c != null) {
            m1214h(new C26903b(c26904c.f75262d), (int) c26904c.f75261c, 5);
        }
        C26904c c26904c2 = this.f75242d[0].get("ISO");
        C26904c c26904c3 = this.f75242d[1].get("PhotographicSensitivity");
        if (c26904c2 == null || c26904c3 != null) {
            return;
        }
        this.f75242d[1].put("PhotographicSensitivity", c26904c2);
    }

    /* renamed from: o */
    public final void m1207o(C26903b c26903b) throws IOException {
        if (f75225m) {
            String str = "getWebpAttributes starting with: " + c26903b;
        }
        c26903b.mark(0);
        c26903b.f75256b = ByteOrder.LITTLE_ENDIAN;
        c26903b.skipBytes(f75198B.length);
        int readInt = c26903b.readInt() + 8;
        int skipBytes = c26903b.skipBytes(f75199C.length);
        int i = 8;
        while (true) {
            try {
                int i2 = skipBytes + i;
                byte[] bArr = new byte[4];
                if (c26903b.read(bArr) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int readInt2 = c26903b.readInt();
                int i3 = i2 + 4 + 4;
                if (Arrays.equals(f75200D, bArr)) {
                    byte[] bArr2 = new byte[readInt2];
                    if (c26903b.read(bArr2) == readInt2) {
                        this.f75247i = i3;
                        m1200v(bArr2, 0);
                        m1198x(new C26903b(bArr2));
                        return;
                    }
                    throw new IOException("Failed to read given length for given PNG chunk type: " + m1220b(bArr));
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
                int skipBytes2 = c26903b.skipBytes(i4);
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

    /* renamed from: p */
    public final void m1206p(C26903b c26903b, HashMap hashMap) throws IOException {
        C26904c c26904c = (C26904c) hashMap.get("JPEGInterchangeFormat");
        C26904c c26904c2 = (C26904c) hashMap.get("JPEGInterchangeFormatLength");
        if (c26904c == null || c26904c2 == null) {
            return;
        }
        int m1188f = c26904c.m1188f(this.f75244f);
        int m1188f2 = c26904c2.m1188f(this.f75244f);
        int i = m1188f;
        if (this.f75241c == 7) {
            i = m1188f + this.f75248j;
        }
        int min = Math.min(m1188f2, c26903b.f75257c - i);
        if (i <= 0 || min <= 0 || this.f75239a != null || this.f75240b != null) {
            return;
        }
        c26903b.skip(i);
        c26903b.read(new byte[min]);
    }

    /* renamed from: q */
    public final boolean m1205q(HashMap hashMap) throws IOException {
        C26904c c26904c = (C26904c) hashMap.get("ImageLength");
        C26904c c26904c2 = (C26904c) hashMap.get("ImageWidth");
        if (c26904c == null || c26904c2 == null) {
            return false;
        }
        return c26904c.m1188f(this.f75244f) <= 512 && c26904c2.m1188f(this.f75244f) <= 512;
    }

    /* renamed from: r */
    public final void m1204r(InputStream inputStream) {
        for (int i = 0; i < f75216T.length; i++) {
            try {
                try {
                    this.f75242d[i] = new HashMap<>();
                } catch (IOException e) {
                    boolean z = f75225m;
                    m1221a();
                    if (!z) {
                        return;
                    }
                }
            } catch (Throwable th) {
                m1221a();
                if (f75225m) {
                    m1202t();
                }
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS);
        this.f75241c = m1213i(bufferedInputStream);
        C26903b c26903b = new C26903b(bufferedInputStream);
        switch (this.f75241c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
                m1209m(c26903b);
                break;
            case 4:
                m1214h(c26903b, 0, 0);
                m1221a();
                if (!f75225m) {
                    return;
                }
                m1202t();
                return;
            case 7:
                m1212j(c26903b);
                break;
            case 9:
                m1210l(c26903b);
                m1221a();
                if (!f75225m) {
                    return;
                }
                m1202t();
                return;
            case 10:
                m1208n(c26903b);
                m1221a();
                if (!f75225m) {
                    return;
                }
                m1202t();
                return;
            case 12:
                m1215g(c26903b);
                break;
            case 13:
                m1211k(c26903b);
                m1221a();
                if (!f75225m) {
                    return;
                }
                m1202t();
                return;
            case 14:
                m1207o(c26903b);
                m1221a();
                if (!f75225m) {
                    return;
                }
                m1202t();
                return;
        }
        c26903b.m1194d(this.f75247i);
        m1198x(c26903b);
        m1221a();
        if (!f75225m) {
            return;
        }
        m1202t();
    }

    /* renamed from: s */
    public final void m1203s(C26903b c26903b, int i) throws IOException {
        ByteOrder m1201u = m1201u(c26903b);
        this.f75244f = m1201u;
        c26903b.f75256b = m1201u;
        int readUnsignedShort = c26903b.readUnsignedShort();
        int i2 = this.f75241c;
        if (i2 == 7 || i2 == 10 || readUnsignedShort == 42) {
            int readInt = c26903b.readInt();
            if (readInt < 8 || readInt >= i) {
                throw new IOException(C22128a.m8611i2("Invalid first Ifd offset: ", readInt));
            }
            int i3 = readInt - 8;
            if (i3 > 0 && c26903b.skipBytes(i3) != i3) {
                throw new IOException(C22128a.m8611i2("Couldn't jump to first Ifd: ", i3));
            }
            return;
        }
        throw new IOException(C22128a.m8668S1(readUnsignedShort, C22128a.m8728C("Invalid start code: ")));
    }

    /* renamed from: t */
    public final void m1202t() {
        int i = 0;
        while (true) {
            HashMap<String, C26904c>[] hashMapArr = this.f75242d;
            if (i < hashMapArr.length) {
                hashMapArr[i].size();
                for (Map.Entry<String, C26904c> entry : this.f75242d[i].entrySet()) {
                    C26904c value = entry.getValue();
                    entry.getKey();
                    value.toString();
                    value.m1187g(this.f75244f);
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: u */
    public final ByteOrder m1201u(C26903b c26903b) throws IOException {
        short readShort = c26903b.readShort();
        if (readShort != 18761) {
            if (readShort != 19789) {
                throw new IOException(C22128a.m8668S1(readShort, C22128a.m8728C("Invalid byte order: ")));
            }
            return ByteOrder.BIG_ENDIAN;
        }
        return ByteOrder.LITTLE_ENDIAN;
    }

    /* renamed from: v */
    public final void m1200v(byte[] bArr, int i) throws IOException {
        C26903b c26903b = new C26903b(bArr);
        m1203s(c26903b, bArr.length);
        m1199w(c26903b, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01d2  */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v214, types: [long] */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1199w(p1727n3.p1857q.p1858a.C26901a.C26903b r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1857q.p1858a.C26901a.m1199w(n3.q.a.a$b, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1198x(p1727n3.p1857q.p1858a.C26901a.C26903b r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1857q.p1858a.C26901a.m1198x(n3.q.a.a$b):void");
    }

    /* renamed from: z */
    public final void m1196z(int i, int i2) throws IOException {
        if (this.f75242d[i].isEmpty() || this.f75242d[i2].isEmpty()) {
            boolean z = f75225m;
            return;
        }
        C26904c c26904c = this.f75242d[i].get("ImageLength");
        C26904c c26904c2 = this.f75242d[i].get("ImageWidth");
        C26904c c26904c3 = this.f75242d[i2].get("ImageLength");
        C26904c c26904c4 = this.f75242d[i2].get("ImageWidth");
        if (c26904c == null || c26904c2 == null) {
            boolean z2 = f75225m;
        } else if (c26904c3 == null || c26904c4 == null) {
            boolean z3 = f75225m;
        } else {
            int m1188f = c26904c.m1188f(this.f75244f);
            int m1188f2 = c26904c2.m1188f(this.f75244f);
            int m1188f3 = c26904c3.m1188f(this.f75244f);
            int m1188f4 = c26904c4.m1188f(this.f75244f);
            if (m1188f >= m1188f3 || m1188f2 >= m1188f4) {
                return;
            }
            HashMap<String, C26904c>[] hashMapArr = this.f75242d;
            HashMap<String, C26904c> hashMap = hashMapArr[i];
            hashMapArr[i] = hashMapArr[i2];
            hashMapArr[i2] = hashMap;
        }
    }
}
