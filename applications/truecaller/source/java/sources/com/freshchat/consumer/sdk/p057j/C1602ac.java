package com.freshchat.consumer.sdk.p057j;

import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.TimeZone;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.ac */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ac.class */
public class C1602ac {

    /* renamed from: hL */
    private static SimpleDateFormat f4334hL;

    /* renamed from: hP */
    private static final C1606c[] f4338hP;

    /* renamed from: hQ */
    private static final C1606c[] f4339hQ;

    /* renamed from: hR */
    private static final C1606c[] f4340hR;

    /* renamed from: hS */
    private static final C1606c[] f4341hS;

    /* renamed from: hT */
    private static final C1606c[] f4342hT;

    /* renamed from: hU */
    private static final C1606c[][] f4343hU;

    /* renamed from: hZ */
    private static final HashMap[] f4348hZ;

    /* renamed from: ia */
    private static final HashMap[] f4349ia;

    /* renamed from: ic */
    private static final Charset f4351ic;

    /* renamed from: ie */
    private static final byte[] f4352ie;

    /* renamed from: il */
    private static final Pattern f4353il;

    /* renamed from: im */
    private static final Pattern f4354im;

    /* renamed from: if */
    private final String f4355if;

    /* renamed from: ig */
    private final HashMap[] f4356ig = new HashMap[f4343hU.length];

    /* renamed from: ih */
    private ByteOrder f4357ih = ByteOrder.BIG_ENDIAN;

    /* renamed from: ii */
    private boolean f4358ii;

    /* renamed from: ij */
    private int f4359ij;

    /* renamed from: ik */
    private int f4360ik;

    /* renamed from: hM */
    private static final String[] f4335hM = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};

    /* renamed from: hN */
    private static final int[] f4336hN = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: hO */
    private static final byte[] f4337hO = {65, 83, 67, 73, 73, 0, 0, 0};

    /* renamed from: hV */
    private static final C1606c[] f4344hV = {new C1606c("ExifIFDPointer", 34665, 4), new C1606c("GPSInfoIFDPointer", 34853, 4), new C1606c("InteroperabilityIFDPointer", 40965, 4)};

    /* renamed from: hW */
    private static final int[] f4345hW = {1, 2, 3};

    /* renamed from: hX */
    private static final C1606c f4346hX = new C1606c("JPEGInterchangeFormat", 513, 4);

    /* renamed from: hY */
    private static final C1606c f4347hY = new C1606c("JPEGInterchangeFormatLength", 514, 4);

    /* renamed from: ib */
    private static final HashSet<String> f4350ib = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));

    /* renamed from: com.freshchat.consumer.sdk.j.ac$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ac$a.class */
    public static class C1604a extends ByteArrayInputStream {

        /* renamed from: io */
        private final long f4362io;
        private static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
        private static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;

        /* renamed from: in */
        private ByteOrder f4361in = ByteOrder.BIG_ENDIAN;

        /* renamed from: ip */
        private long f4363ip = 0;

        public C1604a(byte[] bArr) {
            super(bArr);
            this.f4362io = bArr.length;
        }

        /* renamed from: eJ */
        public long m40323eJ() {
            return this.f4363ip;
        }

        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        public void readFully(byte[] bArr) throws IOException {
            long length = this.f4363ip + bArr.length;
            this.f4363ip = length;
            if (length <= this.f4362io) {
                if (super.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public int readInt() throws IOException {
            long j = this.f4363ip + 4;
            this.f4363ip = j;
            if (j <= this.f4362io) {
                int read = super.read();
                int read2 = super.read();
                int read3 = super.read();
                int read4 = super.read();
                if ((read | read2 | read3 | read4) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f4361in;
                if (byteOrder == LITTLE_ENDIAN) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == BIG_ENDIAN) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                StringBuilder m8728C = C22128a.m8728C("Invalid byte order: ");
                m8728C.append(this.f4361in);
                throw new IOException(m8728C.toString());
            }
            throw new EOFException();
        }

        public long readLong() throws IOException {
            long j = this.f4363ip + 8;
            this.f4363ip = j;
            if (j <= this.f4362io) {
                int read = super.read();
                int read2 = super.read();
                int read3 = super.read();
                int read4 = super.read();
                int read5 = super.read();
                int read6 = super.read();
                int read7 = super.read();
                int read8 = super.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f4361in;
                if (byteOrder == LITTLE_ENDIAN) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == BIG_ENDIAN) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                StringBuilder m8728C = C22128a.m8728C("Invalid byte order: ");
                m8728C.append(this.f4361in);
                throw new IOException(m8728C.toString());
            }
            throw new EOFException();
        }

        public short readShort() throws IOException {
            long j = this.f4363ip + 2;
            this.f4363ip = j;
            if (j <= this.f4362io) {
                int read = super.read();
                int read2 = super.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f4361in;
                if (byteOrder == LITTLE_ENDIAN) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == BIG_ENDIAN) {
                    return (short) ((read << 8) + read2);
                }
                StringBuilder m8728C = C22128a.m8728C("Invalid byte order: ");
                m8728C.append(this.f4361in);
                throw new IOException(m8728C.toString());
            }
            throw new EOFException();
        }

        public long readUnsignedInt() throws IOException {
            return readInt() & 4294967295L;
        }

        public int readUnsignedShort() throws IOException {
            long j = this.f4363ip + 2;
            this.f4363ip = j;
            if (j <= this.f4362io) {
                int read = super.read();
                int read2 = super.read();
                if ((read | read2) < 0) {
                    throw new EOFException();
                }
                ByteOrder byteOrder = this.f4361in;
                if (byteOrder == LITTLE_ENDIAN) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == BIG_ENDIAN) {
                    return (read << 8) + read2;
                }
                StringBuilder m8728C = C22128a.m8728C("Invalid byte order: ");
                m8728C.append(this.f4361in);
                throw new IOException(m8728C.toString());
            }
            throw new EOFException();
        }

        public void seek(long j) throws IOException {
            this.f4363ip = 0L;
            reset();
            if (skip(j) == j) {
                return;
            }
            throw new IOException("Couldn't seek up to the byteCount");
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.f4361in = byteOrder;
        }

        @Override // java.io.ByteArrayInputStream, java.io.InputStream
        public long skip(long j) {
            long skip = super.skip(Math.min(j, this.f4362io - this.f4363ip));
            this.f4363ip += skip;
            return skip;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.ac$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ac$b.class */
    public static class C1605b {
        public final byte[] bytes;
        public final int format;
        public final int numberOfComponents;

        private C1605b(int i, int i2, byte[] bArr) {
            this.format = i;
            this.numberOfComponents = i2;
            this.bytes = bArr;
        }

        /* renamed from: a */
        public static C1605b m40322a(long j, ByteOrder byteOrder) {
            return m40320a(new long[]{j}, byteOrder);
        }

        /* renamed from: a */
        public static C1605b m40320a(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1602ac.f4336hN[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j : jArr) {
                wrap.putInt((int) j);
            }
            return new C1605b(4, jArr.length, wrap.array());
        }

        /* renamed from: aD */
        public static C1605b m40319aD(String str) {
            byte[] bytes = C22128a.m8619g2(str, (char) 0).getBytes(C1602ac.f4351ic);
            return new C1605b(2, bytes.length, bytes);
        }

        /* renamed from: b */
        public Object m40318b(ByteOrder byteOrder) {
            byte b;
            boolean z;
            try {
                C1604a c1604a = new C1604a(this.bytes);
                c1604a.setByteOrder(byteOrder);
                switch (this.format) {
                    case 1:
                    case 6:
                        byte[] bArr = this.bytes;
                        return (bArr.length != 1 || bArr[0] < 0 || bArr[0] > 1) ? new String(this.bytes, C1602ac.f4351ic) : new String(new char[]{(char) (this.bytes[0] + 48)});
                    case 2:
                    case 7:
                        int i = 0;
                        if (this.numberOfComponents >= C1602ac.f4337hO.length) {
                            int i2 = 0;
                            while (true) {
                                z = true;
                                if (i2 < C1602ac.f4337hO.length) {
                                    if (this.bytes[i2] != C1602ac.f4337hO[i2]) {
                                        z = false;
                                    } else {
                                        i2++;
                                    }
                                }
                            }
                            i = 0;
                            if (z) {
                                i = C1602ac.f4337hO.length;
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        while (i < this.numberOfComponents && (b = this.bytes[i]) != 0) {
                            if (b >= 32) {
                                sb.append((char) b);
                            } else {
                                sb.append('?');
                            }
                            i++;
                        }
                        return sb.toString();
                    case 3:
                        int[] iArr = new int[this.numberOfComponents];
                        for (int i3 = 0; i3 < this.numberOfComponents; i3++) {
                            iArr[i3] = c1604a.readUnsignedShort();
                        }
                        return iArr;
                    case 4:
                        long[] jArr = new long[this.numberOfComponents];
                        for (int i4 = 0; i4 < this.numberOfComponents; i4++) {
                            jArr[i4] = c1604a.readUnsignedInt();
                        }
                        return jArr;
                    case 5:
                        C1607d[] c1607dArr = new C1607d[this.numberOfComponents];
                        for (int i5 = 0; i5 < this.numberOfComponents; i5++) {
                            c1607dArr[i5] = new C1607d(c1604a.readUnsignedInt(), c1604a.readUnsignedInt());
                        }
                        return c1607dArr;
                    case 8:
                        int[] iArr2 = new int[this.numberOfComponents];
                        for (int i6 = 0; i6 < this.numberOfComponents; i6++) {
                            iArr2[i6] = c1604a.readShort();
                        }
                        return iArr2;
                    case 9:
                        int[] iArr3 = new int[this.numberOfComponents];
                        for (int i7 = 0; i7 < this.numberOfComponents; i7++) {
                            iArr3[i7] = c1604a.readInt();
                        }
                        return iArr3;
                    case 10:
                        C1607d[] c1607dArr2 = new C1607d[this.numberOfComponents];
                        for (int i8 = 0; i8 < this.numberOfComponents; i8++) {
                            c1607dArr2[i8] = new C1607d(c1604a.readInt(), c1604a.readInt());
                        }
                        return c1607dArr2;
                    case 11:
                        double[] dArr = new double[this.numberOfComponents];
                        for (int i9 = 0; i9 < this.numberOfComponents; i9++) {
                            dArr[i9] = c1604a.readFloat();
                        }
                        return dArr;
                    case 12:
                        double[] dArr2 = new double[this.numberOfComponents];
                        for (int i10 = 0; i10 < this.numberOfComponents; i10++) {
                            dArr2[i10] = c1604a.readDouble();
                        }
                        return dArr2;
                    default:
                        return null;
                }
            } catch (IOException e) {
                return null;
            }
        }

        public double getDoubleValue(ByteOrder byteOrder) {
            Object m40318b = m40318b(byteOrder);
            if (m40318b != null) {
                if (m40318b instanceof String) {
                    return Double.parseDouble((String) m40318b);
                }
                if (m40318b instanceof long[]) {
                    long[] jArr = (long[]) m40318b;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return jArr[0];
                } else if (m40318b instanceof int[]) {
                    int[] iArr = (int[]) m40318b;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                } else if (m40318b instanceof double[]) {
                    double[] dArr = (double[]) m40318b;
                    if (dArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return dArr[0];
                } else if (!(m40318b instanceof C1607d[])) {
                    throw new NumberFormatException("Couldn't find a double value");
                } else {
                    C1607d[] c1607dArr = (C1607d[]) m40318b;
                    if (c1607dArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return c1607dArr[0].calculate();
                }
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        public int getIntValue(ByteOrder byteOrder) {
            Object m40318b = m40318b(byteOrder);
            if (m40318b != null) {
                if (m40318b instanceof String) {
                    return Integer.parseInt((String) m40318b);
                }
                if (m40318b instanceof long[]) {
                    long[] jArr = (long[]) m40318b;
                    if (jArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return (int) jArr[0];
                } else if (!(m40318b instanceof int[])) {
                    throw new NumberFormatException("Couldn't find a integer value");
                } else {
                    int[] iArr = (int[]) m40318b;
                    if (iArr.length != 1) {
                        throw new NumberFormatException("There are more than one component");
                    }
                    return iArr[0];
                }
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        public String getStringValue(ByteOrder byteOrder) {
            Object m40318b = m40318b(byteOrder);
            if (m40318b == null) {
                return null;
            }
            if (m40318b instanceof String) {
                return (String) m40318b;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (m40318b instanceof long[]) {
                long[] jArr = (long[]) m40318b;
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
            } else if (m40318b instanceof int[]) {
                int[] iArr = (int[]) m40318b;
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
            } else if (m40318b instanceof double[]) {
                double[] dArr = (double[]) m40318b;
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
            } else if (!(m40318b instanceof C1607d[])) {
                return null;
            } else {
                C1607d[] c1607dArr = (C1607d[]) m40318b;
                int i7 = 0;
                while (i7 < c1607dArr.length) {
                    sb.append(c1607dArr[i7].numerator);
                    sb.append('/');
                    sb.append(c1607dArr[i7].denominator);
                    int i8 = i7 + 1;
                    i7 = i8;
                    if (i8 != c1607dArr.length) {
                        sb.append(",");
                        i7 = i8;
                    }
                }
                return sb.toString();
            }
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("(");
            m8728C.append(C1602ac.f4335hM[this.format]);
            m8728C.append(", data length:");
            return C22128a.m8697J2(m8728C, this.bytes.length, ")");
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.ac$c */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ac$c.class */
    public static class C1606c {
        public final String name;
        public final int number;
        public final int primaryFormat;
        public final int secondaryFormat;

        private C1606c(String str, int i, int i2) {
            this.name = str;
            this.number = i;
            this.primaryFormat = i2;
            this.secondaryFormat = -1;
        }

        private C1606c(String str, int i, int i2, int i3) {
            this.name = str;
            this.number = i;
            this.primaryFormat = i2;
            this.secondaryFormat = i3;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.ac$d */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ac$d.class */
    public static class C1607d {
        public final long denominator;
        public final long numerator;

        private C1607d(long j, long j2) {
            if (j2 == 0) {
                this.numerator = 0L;
                this.denominator = 1L;
                return;
            }
            this.numerator = j;
            this.denominator = j2;
        }

        public double calculate() {
            return this.numerator / this.denominator;
        }

        public String toString() {
            return this.numerator + StringConstant.SLASH + this.denominator;
        }
    }

    /* JADX WARN: Type inference failed for: r0v175, types: [com.freshchat.consumer.sdk.j.ac$c[], com.freshchat.consumer.sdk.j.ac$c[][]] */
    static {
        C1606c[] c1606cArr;
        C1606c[] c1606cArr2 = {new C1606c("ImageWidth", 256, 3, 4), new C1606c("ImageLength", 257, 3, 4), new C1606c("BitsPerSample", 258, 3), new C1606c("Compression", 259, 3), new C1606c("PhotometricInterpretation", 262, 3), new C1606c("ImageDescription", 270, 2), new C1606c("Make", 271, 2), new C1606c("Model", 272, 2), new C1606c("StripOffsets", 273, 3, 4), new C1606c("Orientation", 274, 3), new C1606c("SamplesPerPixel", 277, 3), new C1606c("RowsPerStrip", 278, 3, 4), new C1606c("StripByteCounts", 279, 3, 4), new C1606c("XResolution", 282, 5), new C1606c("YResolution", 283, 5), new C1606c("PlanarConfiguration", 284, 3), new C1606c("ResolutionUnit", 296, 3), new C1606c("TransferFunction", 301, 3), new C1606c("Software", 305, 2), new C1606c("DateTime", 306, 2), new C1606c("Artist", 315, 2), new C1606c("WhitePoint", 318, 5), new C1606c("PrimaryChromaticities", 319, 5), new C1606c("JPEGInterchangeFormat", 513, 4), new C1606c("JPEGInterchangeFormatLength", 514, 4), new C1606c("YCbCrCoefficients", 529, 5), new C1606c("YCbCrSubSampling", 530, 3), new C1606c("YCbCrPositioning", 531, 3), new C1606c("ReferenceBlackWhite", 532, 5), new C1606c("Copyright", 33432, 2), new C1606c("ExifIFDPointer", 34665, 4), new C1606c("GPSInfoIFDPointer", 34853, 4)};
        f4338hP = c1606cArr2;
        C1606c[] c1606cArr3 = {new C1606c("ExposureTime", 33434, 5), new C1606c("FNumber", 33437, 5), new C1606c("ExposureProgram", 34850, 3), new C1606c("SpectralSensitivity", 34852, 2), new C1606c("ISOSpeedRatings", 34855, 3), new C1606c("OECF", 34856, 7), new C1606c("ExifVersion", 36864, 2), new C1606c("DateTimeOriginal", 36867, 2), new C1606c("DateTimeDigitized", 36868, 2), new C1606c("ComponentsConfiguration", 37121, 7), new C1606c("CompressedBitsPerPixel", 37122, 5), new C1606c("ShutterSpeedValue", 37377, 10), new C1606c("ApertureValue", 37378, 5), new C1606c("BrightnessValue", 37379, 10), new C1606c("ExposureBiasValue", 37380, 10), new C1606c("MaxApertureValue", 37381, 5), new C1606c("SubjectDistance", 37382, 5), new C1606c("MeteringMode", 37383, 3), new C1606c("LightSource", 37384, 3), new C1606c("Flash", 37385, 3), new C1606c("FocalLength", 37386, 5), new C1606c("SubjectArea", 37396, 3), new C1606c("MakerNote", 37500, 7), new C1606c("UserComment", 37510, 7), new C1606c("SubSecTime", 37520, 2), new C1606c("SubSecTimeOriginal", 37521, 2), new C1606c("SubSecTimeDigitized", 37522, 2), new C1606c("FlashpixVersion", 40960, 7), new C1606c("ColorSpace", 40961, 3), new C1606c("PixelXDimension", 40962, 3, 4), new C1606c("PixelYDimension", 40963, 3, 4), new C1606c("RelatedSoundFile", 40964, 2), new C1606c("InteroperabilityIFDPointer", 40965, 4), new C1606c("FlashEnergy", 41483, 5), new C1606c("SpatialFrequencyResponse", 41484, 7), new C1606c("FocalPlaneXResolution", 41486, 5), new C1606c("FocalPlaneYResolution", 41487, 5), new C1606c("FocalPlaneResolutionUnit", 41488, 3), new C1606c("SubjectLocation", 41492, 3), new C1606c("ExposureIndex", 41493, 5), new C1606c("SensingMethod", 41495, 3), new C1606c("FileSource", 41728, 7), new C1606c("SceneType", 41729, 7), new C1606c("CFAPattern", 41730, 7), new C1606c("CustomRendered", 41985, 3), new C1606c("ExposureMode", 41986, 3), new C1606c("WhiteBalance", 41987, 3), new C1606c("DigitalZoomRatio", 41988, 5), new C1606c("FocalLengthIn35mmFilm", 41989, 3), new C1606c("SceneCaptureType", 41990, 3), new C1606c("GainControl", 41991, 3), new C1606c("Contrast", 41992, 3), new C1606c("Saturation", 41993, 3), new C1606c("Sharpness", 41994, 3), new C1606c("DeviceSettingDescription", 41995, 7), new C1606c("SubjectDistanceRange", 41996, 3), new C1606c("ImageUniqueID", 42016, 2)};
        f4339hQ = c1606cArr3;
        C1606c[] c1606cArr4 = {new C1606c("GPSVersionID", 0, 1), new C1606c("GPSLatitudeRef", 1, 2), new C1606c("GPSLatitude", 2, 5), new C1606c("GPSLongitudeRef", 3, 2), new C1606c("GPSLongitude", 4, 5), new C1606c("GPSAltitudeRef", 5, 1), new C1606c("GPSAltitude", 6, 5), new C1606c("GPSTimeStamp", 7, 5), new C1606c("GPSSatellites", 8, 2), new C1606c("GPSStatus", 9, 2), new C1606c("GPSMeasureMode", 10, 2), new C1606c("GPSDOP", 11, 5), new C1606c("GPSSpeedRef", 12, 2), new C1606c("GPSSpeed", 13, 5), new C1606c("GPSTrackRef", 14, 2), new C1606c("GPSTrack", 15, 5), new C1606c("GPSImgDirectionRef", 16, 2), new C1606c("GPSImgDirection", 17, 5), new C1606c("GPSMapDatum", 18, 2), new C1606c("GPSDestLatitudeRef", 19, 2), new C1606c("GPSDestLatitude", 20, 5), new C1606c("GPSDestLongitudeRef", 21, 2), new C1606c("GPSDestLongitude", 22, 5), new C1606c("GPSDestBearingRef", 23, 2), new C1606c("GPSDestBearing", 24, 5), new C1606c("GPSDestDistanceRef", 25, 2), new C1606c("GPSDestDistance", 26, 5), new C1606c("GPSProcessingMethod", 27, 7), new C1606c("GPSAreaInformation", 28, 7), new C1606c("GPSDateStamp", 29, 2), new C1606c("GPSDifferential", 30, 3)};
        f4340hR = c1606cArr4;
        C1606c[] c1606cArr5 = {new C1606c("InteroperabilityIndex", 1, 2)};
        f4341hS = c1606cArr5;
        C1606c[] c1606cArr6 = {new C1606c("ThumbnailImageWidth", 256, 3, 4), new C1606c("ThumbnailImageLength", 257, 3, 4), new C1606c("BitsPerSample", 258, 3), new C1606c("Compression", 259, 3), new C1606c("PhotometricInterpretation", 262, 3), new C1606c("ImageDescription", 270, 2), new C1606c("Make", 271, 2), new C1606c("Model", 272, 2), new C1606c("StripOffsets", 3, 4), new C1606c("Orientation", 274, 3), new C1606c("SamplesPerPixel", 277, 3), new C1606c("RowsPerStrip", 278, 3, 4), new C1606c("StripByteCounts", 279, 3, 4), new C1606c("XResolution", 282, 5), new C1606c("YResolution", 283, 5), new C1606c("PlanarConfiguration", 284, 3), new C1606c("ResolutionUnit", 296, 3), new C1606c("TransferFunction", 301, 3), new C1606c("Software", 305, 2), new C1606c("DateTime", 306, 2), new C1606c("Artist", 315, 2), new C1606c("WhitePoint", 318, 5), new C1606c("PrimaryChromaticities", 319, 5), new C1606c("JPEGInterchangeFormat", 513, 4), new C1606c("JPEGInterchangeFormatLength", 514, 4), new C1606c("YCbCrCoefficients", 529, 5), new C1606c("YCbCrSubSampling", 530, 3), new C1606c("YCbCrPositioning", 531, 3), new C1606c("ReferenceBlackWhite", 532, 5), new C1606c("Copyright", 33432, 2), new C1606c("ExifIFDPointer", 34665, 4), new C1606c("GPSInfoIFDPointer", 34853, 4)};
        f4342hT = c1606cArr6;
        ?? r0 = {c1606cArr2, c1606cArr3, c1606cArr4, c1606cArr5, c1606cArr6};
        f4343hU = r0;
        f4348hZ = new HashMap[r0.length];
        f4349ia = new HashMap[r0.length];
        Charset forName = Charset.forName("US-ASCII");
        f4351ic = forName;
        f4352ie = "Exif����".getBytes(forName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        f4334hL = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            C1606c[][] c1606cArr7 = f4343hU;
            if (i >= c1606cArr7.length) {
                f4353il = Pattern.compile(".*[1-9].*");
                f4354im = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            f4348hZ[i] = new HashMap();
            f4349ia[i] = new HashMap();
            for (C1606c c1606c : c1606cArr7[i]) {
                f4348hZ[i].put(Integer.valueOf(c1606c.number), c1606c);
                f4349ia[i].put(c1606c.name, c1606c);
            }
            i++;
        }
    }

    public C1602ac(String str) throws IOException {
        if (str != null) {
            this.f4355if = str;
            m40331eD();
            return;
        }
        throw new IllegalArgumentException("filename cannot be null");
    }

    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* renamed from: a */
    private void m40335a(C1604a c1604a, int i) throws IOException {
        int i2;
        if (c1604a.m40323eJ() + 2 > c1604a.f4362io) {
            return;
        }
        short readShort = c1604a.readShort();
        if (c1604a.m40323eJ() + (readShort * 12) > c1604a.f4362io) {
            return;
        }
        short s = 0;
        while (true) {
            short s2 = s;
            if (s2 >= readShort) {
                break;
            }
            int readUnsignedShort = c1604a.readUnsignedShort();
            int readUnsignedShort2 = c1604a.readUnsignedShort();
            int readInt = c1604a.readInt();
            long m40323eJ = c1604a.m40323eJ() + 4;
            C1606c c1606c = (C1606c) f4348hZ[i].get(Integer.valueOf(readUnsignedShort));
            if (c1606c != null && readUnsignedShort2 > 0) {
                int[] iArr = f4336hN;
                if (readUnsignedShort2 < iArr.length) {
                    int i3 = iArr[readUnsignedShort2] * readInt;
                    if (i3 > 4) {
                        long readUnsignedInt = c1604a.readUnsignedInt();
                        if (i3 + readUnsignedInt <= c1604a.f4362io) {
                            c1604a.seek(readUnsignedInt);
                        }
                    }
                    int m40325t = m40325t(readUnsignedShort);
                    if (m40325t >= 0) {
                        char c = 65535;
                        if (readUnsignedShort2 != 3) {
                            if (readUnsignedShort2 == 4) {
                                c = c1604a.readUnsignedInt();
                            } else if (readUnsignedShort2 == 8) {
                                i2 = c1604a.readShort();
                            } else if (readUnsignedShort2 == 9) {
                                i2 = c1604a.readInt();
                            }
                            if (c > 0 && c < c1604a.f4362io) {
                                c1604a.seek(c);
                                m40335a(c1604a, m40325t);
                            }
                        } else {
                            i2 = c1604a.readUnsignedShort();
                        }
                        c = i2;
                        if (c > 0) {
                            c1604a.seek(c);
                            m40335a(c1604a, m40325t);
                        }
                    } else {
                        byte[] bArr = new byte[iArr[readUnsignedShort2] * readInt];
                        c1604a.readFully(bArr);
                        this.f4356ig[i].put(c1606c.name, new C1605b(readUnsignedShort2, readInt, bArr));
                        if (c1604a.m40323eJ() == m40323eJ) {
                            s = (short) (s2 + 1);
                        }
                    }
                }
            }
            c1604a.seek(m40323eJ);
            s = (short) (s2 + 1);
        }
        if (c1604a.m40323eJ() + 4 > c1604a.f4362io) {
            return;
        }
        long readUnsignedInt2 = c1604a.readUnsignedInt();
        if (readUnsignedInt2 <= 8 || readUnsignedInt2 >= c1604a.f4362io) {
            return;
        }
        c1604a.seek(readUnsignedInt2);
        m40335a(c1604a, 4);
    }

    /* renamed from: a */
    private void m40334a(byte[] bArr, int i) throws IOException {
        ByteOrder byteOrder;
        C1604a c1604a = new C1604a(bArr);
        short readShort = c1604a.readShort();
        if (readShort == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (readShort != 19789) {
            throw new IOException(C22128a.m8668S1(readShort, C22128a.m8728C("Invalid byte order: ")));
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        this.f4357ih = byteOrder;
        c1604a.setByteOrder(this.f4357ih);
        int readUnsignedShort = c1604a.readUnsignedShort();
        if (readUnsignedShort == 42) {
            long readUnsignedInt = c1604a.readUnsignedInt();
            if (readUnsignedInt < 8 || readUnsignedInt >= bArr.length) {
                throw new IOException(C22128a.m8583p2("Invalid first Ifd offset: ", readUnsignedInt));
            }
            long j = readUnsignedInt - 8;
            if (j > 0 && c1604a.skip(j) != j) {
                throw new IOException(C22128a.m8583p2("Couldn't jump to first Ifd: ", j));
            }
            m40335a(c1604a, 0);
            String attribute = getAttribute(f4346hX.name);
            String attribute2 = getAttribute(f4347hY.name);
            if (attribute == null || attribute2 == null) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(attribute);
                int min = Math.min(Integer.parseInt(attribute2) + parseInt, bArr.length) - parseInt;
                if (parseInt <= 0 || min <= 0) {
                    return;
                }
                this.f4358ii = true;
                this.f4359ij = i + parseInt;
                this.f4360ik = min;
                return;
            } catch (NumberFormatException e) {
                return;
            }
        }
        throw new IOException(C22128a.m8668S1(readUnsignedShort, C22128a.m8728C("Invalid exif start: ")));
    }

    /* renamed from: aC */
    private C1605b m40333aC(String str) {
        for (int i = 0; i < f4343hU.length; i++) {
            Object obj = this.f4356ig[i].get(str);
            if (obj != null) {
                return (C1605b) obj;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00e1 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f8 A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m40332b(java.io.InputStream r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.C1602ac.m40332b(java.io.InputStream):void");
    }

    /* renamed from: eD */
    private void m40331eD() throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f4355if);
            for (int i = 0; i < f4343hU.length; i++) {
                this.f4356ig[i] = new HashMap();
            }
            m40332b(fileInputStream);
        } catch (IOException e) {
        } catch (Throwable th) {
            m40330eE();
            throw th;
        }
        m40330eE();
    }

    /* renamed from: eE */
    private void m40330eE() {
        String attribute = getAttribute("DateTimeOriginal");
        if (attribute != null) {
            this.f4356ig[0].put("DateTime", C1605b.m40319aD(attribute));
        }
        if (getAttribute("ImageWidth") == null) {
            this.f4356ig[0].put("ImageWidth", C1605b.m40322a(0L, this.f4357ih));
        }
        if (getAttribute("ImageLength") == null) {
            this.f4356ig[0].put("ImageLength", C1605b.m40322a(0L, this.f4357ih));
        }
        if (getAttribute("Orientation") == null) {
            this.f4356ig[0].put("Orientation", C1605b.m40322a(0L, this.f4357ih));
        }
        if (getAttribute("LightSource") == null) {
            this.f4356ig[1].put("LightSource", C1605b.m40322a(0L, this.f4357ih));
        }
    }

    /* renamed from: t */
    private static int m40325t(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = f4345hW;
            if (i2 < iArr.length) {
                if (f4344hV[i2].number == i) {
                    return iArr[i2];
                }
                i2++;
            } else {
                return -1;
            }
        }
    }

    public String getAttribute(String str) {
        C1605b m40333aC = m40333aC(str);
        if (m40333aC != null) {
            if (!f4350ib.contains(str)) {
                return m40333aC.getStringValue(this.f4357ih);
            }
            if (!str.equals("GPSTimeStamp")) {
                try {
                    return Double.toString(m40333aC.getDoubleValue(this.f4357ih));
                } catch (NumberFormatException e) {
                    return null;
                }
            }
            int i = m40333aC.format;
            if (i != 5 && i != 10) {
                return null;
            }
            C1607d[] c1607dArr = (C1607d[]) m40333aC.m40318b(this.f4357ih);
            if (c1607dArr.length == 3) {
                return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) c1607dArr[0].numerator) / ((float) c1607dArr[0].denominator))), Integer.valueOf((int) (((float) c1607dArr[1].numerator) / ((float) c1607dArr[1].denominator))), Integer.valueOf((int) (((float) c1607dArr[2].numerator) / ((float) c1607dArr[2].denominator))));
            }
            return null;
        }
        return null;
    }

    public int getAttributeInt(String str, int i) {
        C1605b m40333aC = m40333aC(str);
        if (m40333aC == null) {
            return i;
        }
        try {
            return m40333aC.getIntValue(this.f4357ih);
        } catch (NumberFormatException e) {
            return i;
        }
    }
}
