package p012b.p061l.p062a;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
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
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
/* renamed from: b.l.a.a */
/* loaded from: classes-dex2jar.jar:b/l/a/a.class */
public class C1047a {

    /* renamed from: E */
    public static final C1050c[] f4368E;

    /* renamed from: F */
    public static final C1050c[][] f4369F;

    /* renamed from: H */
    public static final HashMap<Integer, C1050c>[] f4371H;

    /* renamed from: I */
    public static final HashMap<String, C1050c>[] f4372I;

    /* renamed from: L */
    public static final Charset f4375L;

    /* renamed from: M */
    public static final byte[] f4376M;

    /* renamed from: r */
    public static SimpleDateFormat f4382r;

    /* renamed from: a */
    public final String f4391a;

    /* renamed from: b */
    public final AssetManager.AssetInputStream f4392b;

    /* renamed from: c */
    public int f4393c;

    /* renamed from: d */
    public final HashMap<String, C1049b>[] f4394d = new HashMap[f4369F.length];

    /* renamed from: e */
    public Set<Integer> f4395e = new HashSet(f4369F.length);

    /* renamed from: f */
    public ByteOrder f4396f = ByteOrder.BIG_ENDIAN;

    /* renamed from: g */
    public int f4397g;

    /* renamed from: h */
    public int f4398h;

    /* renamed from: i */
    public int f4399i;

    /* renamed from: j */
    public int f4400j;

    /* renamed from: k */
    public int f4401k;

    /* renamed from: l */
    public int f4402l;

    /* renamed from: m */
    public static final int[] f4377m = {8, 8, 8};

    /* renamed from: n */
    public static final int[] f4378n = {8};

    /* renamed from: o */
    public static final byte[] f4379o = {-1, -40, -1};

    /* renamed from: p */
    public static final byte[] f4380p = {79, 76, 89, 77, 80, 0};

    /* renamed from: q */
    public static final byte[] f4381q = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* renamed from: s */
    public static final String[] f4383s = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};

    /* renamed from: t */
    public static final int[] f4384t = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};

    /* renamed from: u */
    public static final byte[] f4385u = {65, 83, 67, 73, 73, 0, 0, 0};

    /* renamed from: v */
    public static final C1050c[] f4386v = {new C1050c("NewSubfileType", 254, 4), new C1050c("SubfileType", 255, 4), new C1050c("ImageWidth", 256, 3, 4), new C1050c("ImageLength", 257, 3, 4), new C1050c("BitsPerSample", 258, 3), new C1050c("Compression", 259, 3), new C1050c("PhotometricInterpretation", 262, 3), new C1050c("ImageDescription", 270, 2), new C1050c("Make", 271, 2), new C1050c("Model", 272, 2), new C1050c("StripOffsets", 273, 3, 4), new C1050c("Orientation", 274, 3), new C1050c("SamplesPerPixel", 277, 3), new C1050c("RowsPerStrip", 278, 3, 4), new C1050c("StripByteCounts", 279, 3, 4), new C1050c("XResolution", 282, 5), new C1050c("YResolution", 283, 5), new C1050c("PlanarConfiguration", 284, 3), new C1050c("ResolutionUnit", 296, 3), new C1050c("TransferFunction", 301, 3), new C1050c("Software", 305, 2), new C1050c("DateTime", 306, 2), new C1050c("Artist", 315, 2), new C1050c("WhitePoint", 318, 5), new C1050c("PrimaryChromaticities", 319, 5), new C1050c("SubIFDPointer", 330, 4), new C1050c("JPEGInterchangeFormat", 513, 4), new C1050c("JPEGInterchangeFormatLength", 514, 4), new C1050c("YCbCrCoefficients", 529, 5), new C1050c("YCbCrSubSampling", 530, 3), new C1050c("YCbCrPositioning", 531, 3), new C1050c("ReferenceBlackWhite", 532, 5), new C1050c("Copyright", 33432, 2), new C1050c("ExifIFDPointer", 34665, 4), new C1050c("GPSInfoIFDPointer", 34853, 4), new C1050c("SensorTopBorder", 4, 4), new C1050c("SensorLeftBorder", 5, 4), new C1050c("SensorBottomBorder", 6, 4), new C1050c("SensorRightBorder", 7, 4), new C1050c("ISO", 23, 3), new C1050c("JpgFromRaw", 46, 7)};

    /* renamed from: w */
    public static final C1050c[] f4387w = {new C1050c("ExposureTime", 33434, 5), new C1050c("FNumber", 33437, 5), new C1050c("ExposureProgram", 34850, 3), new C1050c("SpectralSensitivity", 34852, 2), new C1050c("PhotographicSensitivity", 34855, 3), new C1050c("OECF", 34856, 7), new C1050c("ExifVersion", 36864, 2), new C1050c("DateTimeOriginal", 36867, 2), new C1050c("DateTimeDigitized", 36868, 2), new C1050c("ComponentsConfiguration", 37121, 7), new C1050c("CompressedBitsPerPixel", 37122, 5), new C1050c("ShutterSpeedValue", 37377, 10), new C1050c("ApertureValue", 37378, 5), new C1050c("BrightnessValue", 37379, 10), new C1050c("ExposureBiasValue", 37380, 10), new C1050c("MaxApertureValue", 37381, 5), new C1050c("SubjectDistance", 37382, 5), new C1050c("MeteringMode", 37383, 3), new C1050c("LightSource", 37384, 3), new C1050c("Flash", 37385, 3), new C1050c("FocalLength", 37386, 5), new C1050c("SubjectArea", 37396, 3), new C1050c("MakerNote", 37500, 7), new C1050c("UserComment", 37510, 7), new C1050c("SubSecTime", 37520, 2), new C1050c("SubSecTimeOriginal", 37521, 2), new C1050c("SubSecTimeDigitized", 37522, 2), new C1050c("FlashpixVersion", 40960, 7), new C1050c("ColorSpace", 40961, 3), new C1050c("PixelXDimension", 40962, 3, 4), new C1050c("PixelYDimension", 40963, 3, 4), new C1050c("RelatedSoundFile", 40964, 2), new C1050c("InteroperabilityIFDPointer", 40965, 4), new C1050c("FlashEnergy", 41483, 5), new C1050c("SpatialFrequencyResponse", 41484, 7), new C1050c("FocalPlaneXResolution", 41486, 5), new C1050c("FocalPlaneYResolution", 41487, 5), new C1050c("FocalPlaneResolutionUnit", 41488, 3), new C1050c("SubjectLocation", 41492, 3), new C1050c("ExposureIndex", 41493, 5), new C1050c("SensingMethod", 41495, 3), new C1050c("FileSource", 41728, 7), new C1050c("SceneType", 41729, 7), new C1050c("CFAPattern", 41730, 7), new C1050c("CustomRendered", 41985, 3), new C1050c("ExposureMode", 41986, 3), new C1050c("WhiteBalance", 41987, 3), new C1050c("DigitalZoomRatio", 41988, 5), new C1050c("FocalLengthIn35mmFilm", 41989, 3), new C1050c("SceneCaptureType", 41990, 3), new C1050c("GainControl", 41991, 3), new C1050c("Contrast", 41992, 3), new C1050c("Saturation", 41993, 3), new C1050c("Sharpness", 41994, 3), new C1050c("DeviceSettingDescription", 41995, 7), new C1050c("SubjectDistanceRange", 41996, 3), new C1050c("ImageUniqueID", 42016, 2), new C1050c("DNGVersion", 50706, 1), new C1050c("DefaultCropSize", 50720, 3, 4)};

    /* renamed from: x */
    public static final C1050c[] f4388x = {new C1050c("GPSVersionID", 0, 1), new C1050c("GPSLatitudeRef", 1, 2), new C1050c("GPSLatitude", 2, 5), new C1050c("GPSLongitudeRef", 3, 2), new C1050c("GPSLongitude", 4, 5), new C1050c("GPSAltitudeRef", 5, 1), new C1050c("GPSAltitude", 6, 5), new C1050c("GPSTimeStamp", 7, 5), new C1050c("GPSSatellites", 8, 2), new C1050c("GPSStatus", 9, 2), new C1050c("GPSMeasureMode", 10, 2), new C1050c("GPSDOP", 11, 5), new C1050c("GPSSpeedRef", 12, 2), new C1050c("GPSSpeed", 13, 5), new C1050c("GPSTrackRef", 14, 2), new C1050c("GPSTrack", 15, 5), new C1050c("GPSImgDirectionRef", 16, 2), new C1050c("GPSImgDirection", 17, 5), new C1050c("GPSMapDatum", 18, 2), new C1050c("GPSDestLatitudeRef", 19, 2), new C1050c("GPSDestLatitude", 20, 5), new C1050c("GPSDestLongitudeRef", 21, 2), new C1050c("GPSDestLongitude", 22, 5), new C1050c("GPSDestBearingRef", 23, 2), new C1050c("GPSDestBearing", 24, 5), new C1050c("GPSDestDistanceRef", 25, 2), new C1050c("GPSDestDistance", 26, 5), new C1050c("GPSProcessingMethod", 27, 7), new C1050c("GPSAreaInformation", 28, 7), new C1050c("GPSDateStamp", 29, 2), new C1050c("GPSDifferential", 30, 3)};

    /* renamed from: y */
    public static final C1050c[] f4389y = {new C1050c("InteroperabilityIndex", 1, 2)};

    /* renamed from: z */
    public static final C1050c[] f4390z = {new C1050c("NewSubfileType", 254, 4), new C1050c("SubfileType", 255, 4), new C1050c("ThumbnailImageWidth", 256, 3, 4), new C1050c("ThumbnailImageLength", 257, 3, 4), new C1050c("BitsPerSample", 258, 3), new C1050c("Compression", 259, 3), new C1050c("PhotometricInterpretation", 262, 3), new C1050c("ImageDescription", 270, 2), new C1050c("Make", 271, 2), new C1050c("Model", 272, 2), new C1050c("StripOffsets", 273, 3, 4), new C1050c("Orientation", 274, 3), new C1050c("SamplesPerPixel", 277, 3), new C1050c("RowsPerStrip", 278, 3, 4), new C1050c("StripByteCounts", 279, 3, 4), new C1050c("XResolution", 282, 5), new C1050c("YResolution", 283, 5), new C1050c("PlanarConfiguration", 284, 3), new C1050c("ResolutionUnit", 296, 3), new C1050c("TransferFunction", 301, 3), new C1050c("Software", 305, 2), new C1050c("DateTime", 306, 2), new C1050c("Artist", 315, 2), new C1050c("WhitePoint", 318, 5), new C1050c("PrimaryChromaticities", 319, 5), new C1050c("SubIFDPointer", 330, 4), new C1050c("JPEGInterchangeFormat", 513, 4), new C1050c("JPEGInterchangeFormatLength", 514, 4), new C1050c("YCbCrCoefficients", 529, 5), new C1050c("YCbCrSubSampling", 530, 3), new C1050c("YCbCrPositioning", 531, 3), new C1050c("ReferenceBlackWhite", 532, 5), new C1050c("Copyright", 33432, 2), new C1050c("ExifIFDPointer", 34665, 4), new C1050c("GPSInfoIFDPointer", 34853, 4), new C1050c("DNGVersion", 50706, 1), new C1050c("DefaultCropSize", 50720, 3, 4)};

    /* renamed from: A */
    public static final C1050c f4364A = new C1050c("StripOffsets", 273, 3);

    /* renamed from: B */
    public static final C1050c[] f4365B = {new C1050c("ThumbnailImage", 256, 7), new C1050c("CameraSettingsIFDPointer", 8224, 4), new C1050c("ImageProcessingIFDPointer", 8256, 4)};

    /* renamed from: C */
    public static final C1050c[] f4366C = {new C1050c("PreviewImageStart", 257, 4), new C1050c("PreviewImageLength", 258, 4)};

    /* renamed from: D */
    public static final C1050c[] f4367D = {new C1050c("AspectFrame", 4371, 3)};

    /* renamed from: G */
    public static final C1050c[] f4370G = {new C1050c("SubIFDPointer", 330, 4), new C1050c("ExifIFDPointer", 34665, 4), new C1050c("GPSInfoIFDPointer", 34853, 4), new C1050c("InteroperabilityIFDPointer", 40965, 4), new C1050c("CameraSettingsIFDPointer", 8224, 1), new C1050c("ImageProcessingIFDPointer", 8256, 1)};

    /* renamed from: J */
    public static final HashSet<String> f4373J = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));

    /* renamed from: K */
    public static final HashMap<Integer, Integer> f4374K = new HashMap<>();

    /* renamed from: b.l.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$a.class */
    public static class C1048a extends InputStream implements DataInput {

        /* renamed from: e */
        public static final ByteOrder f4403e = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: f */
        public static final ByteOrder f4404f = ByteOrder.BIG_ENDIAN;

        /* renamed from: a */
        public DataInputStream f4405a;

        /* renamed from: b */
        public ByteOrder f4406b;

        /* renamed from: c */
        public final int f4407c;

        /* renamed from: d */
        public int f4408d;

        public C1048a(InputStream inputStream) throws IOException {
            this.f4406b = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f4405a = dataInputStream;
            int available = dataInputStream.available();
            this.f4407c = available;
            this.f4408d = 0;
            this.f4405a.mark(available);
        }

        public C1048a(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }

        /* renamed from: a */
        public int m34987a() {
            return this.f4408d;
        }

        /* renamed from: a */
        public void m34986a(ByteOrder byteOrder) {
            this.f4406b = byteOrder;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f4405a.available();
        }

        /* renamed from: b */
        public long m34985b() throws IOException {
            return readInt() & 4294967295L;
        }

        /* renamed from: d */
        public void m34984d(long j) throws IOException {
            int i = this.f4408d;
            if (i > j) {
                this.f4408d = 0;
                this.f4405a.reset();
                this.f4405a.mark(this.f4407c);
            } else {
                j -= i;
            }
            int i2 = (int) j;
            if (skipBytes(i2) != i2) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            this.f4408d++;
            return this.f4405a.read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.f4405a.read(bArr, i, i2);
            this.f4408d += read;
            return read;
        }

        @Override // java.io.DataInput
        public boolean readBoolean() throws IOException {
            this.f4408d++;
            return this.f4405a.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            int i = this.f4408d + 1;
            this.f4408d = i;
            if (i <= this.f4407c) {
                int read = this.f4405a.read();
                if (read >= 0) {
                    return (byte) read;
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() throws IOException {
            this.f4408d += 2;
            return this.f4405a.readChar();
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
            int length = this.f4408d + bArr.length;
            this.f4408d = length;
            if (length > this.f4407c) {
                throw new EOFException();
            } else if (this.f4405a.read(bArr, 0, bArr.length) != bArr.length) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.f4408d + i2;
            this.f4408d = i3;
            if (i3 > this.f4407c) {
                throw new EOFException();
            } else if (this.f4405a.read(bArr, i, i2) != i2) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            int i = this.f4408d + 4;
            this.f4408d = i;
            if (i <= this.f4407c) {
                int read = this.f4405a.read();
                int read2 = this.f4405a.read();
                int read3 = this.f4405a.read();
                int read4 = this.f4405a.read();
                if ((read | read2 | read3 | read4) >= 0) {
                    ByteOrder byteOrder = this.f4406b;
                    if (byteOrder == f4403e) {
                        return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == f4404f) {
                        return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                    }
                    throw new IOException("Invalid byte order: " + this.f4406b);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() throws IOException {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            int i = this.f4408d + 8;
            this.f4408d = i;
            if (i <= this.f4407c) {
                int read = this.f4405a.read();
                int read2 = this.f4405a.read();
                int read3 = this.f4405a.read();
                int read4 = this.f4405a.read();
                int read5 = this.f4405a.read();
                int read6 = this.f4405a.read();
                int read7 = this.f4405a.read();
                int read8 = this.f4405a.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                    ByteOrder byteOrder = this.f4406b;
                    if (byteOrder == f4403e) {
                        return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == f4404f) {
                        return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                    }
                    throw new IOException("Invalid byte order: " + this.f4406b);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i = this.f4408d + 2;
            this.f4408d = i;
            if (i <= this.f4407c) {
                int read = this.f4405a.read();
                int read2 = this.f4405a.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f4406b;
                    if (byteOrder == f4403e) {
                        return (short) ((read2 << 8) + read);
                    }
                    if (byteOrder == f4404f) {
                        return (short) ((read << 8) + read2);
                    }
                    throw new IOException("Invalid byte order: " + this.f4406b);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() throws IOException {
            this.f4408d += 2;
            return this.f4405a.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() throws IOException {
            this.f4408d++;
            return this.f4405a.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            int i = this.f4408d + 2;
            this.f4408d = i;
            if (i <= this.f4407c) {
                int read = this.f4405a.read();
                int read2 = this.f4405a.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f4406b;
                    if (byteOrder == f4403e) {
                        return (read2 << 8) + read;
                    }
                    if (byteOrder == f4404f) {
                        return (read << 8) + read2;
                    }
                    throw new IOException("Invalid byte order: " + this.f4406b);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int skipBytes(int i) throws IOException {
            int min = Math.min(i, this.f4407c - this.f4408d);
            int i2 = 0;
            while (i2 < min) {
                i2 += this.f4405a.skipBytes(min - i2);
            }
            this.f4408d += i2;
            return i2;
        }
    }

    /* renamed from: b.l.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$b.class */
    public static class C1049b {

        /* renamed from: a */
        public final int f4409a;

        /* renamed from: b */
        public final int f4410b;

        /* renamed from: c */
        public final byte[] f4411c;

        public C1049b(int i, int i2, byte[] bArr) {
            this.f4409a = i;
            this.f4410b = i2;
            this.f4411c = bArr;
        }

        /* renamed from: a */
        public static C1049b m34983a(int i, ByteOrder byteOrder) {
            return m34978a(new int[]{i}, byteOrder);
        }

        /* renamed from: a */
        public static C1049b m34982a(long j, ByteOrder byteOrder) {
            return m34977a(new long[]{j}, byteOrder);
        }

        /* renamed from: a */
        public static C1049b m34981a(C1051d dVar, ByteOrder byteOrder) {
            return m34976a(new C1051d[]{dVar}, byteOrder);
        }

        /* renamed from: a */
        public static C1049b m34980a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(C1047a.f4375L);
            return new C1049b(2, bytes.length, bytes);
        }

        /* renamed from: a */
        public static C1049b m34978a(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1047a.f4384t[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i : iArr) {
                wrap.putShort((short) i);
            }
            return new C1049b(3, iArr.length, wrap.array());
        }

        /* renamed from: a */
        public static C1049b m34977a(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1047a.f4384t[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j : jArr) {
                wrap.putInt((int) j);
            }
            return new C1049b(4, jArr.length, wrap.array());
        }

        /* renamed from: a */
        public static C1049b m34976a(C1051d[] dVarArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[C1047a.f4384t[5] * dVarArr.length]);
            wrap.order(byteOrder);
            for (C1051d dVar : dVarArr) {
                wrap.putInt((int) dVar.f4416a);
                wrap.putInt((int) dVar.f4417b);
            }
            return new C1049b(5, dVarArr.length, wrap.array());
        }

        /* renamed from: a */
        public double m34979a(ByteOrder byteOrder) {
            Object d = m34973d(byteOrder);
            if (d == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            } else if (d instanceof String) {
                return Double.parseDouble((String) d);
            } else {
                if (d instanceof long[]) {
                    long[] jArr = (long[]) d;
                    if (jArr.length == 1) {
                        return jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (d instanceof int[]) {
                    int[] iArr = (int[]) d;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (d instanceof double[]) {
                    double[] dArr = (double[]) d;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (d instanceof C1051d[]) {
                    C1051d[] dVarArr = (C1051d[]) d;
                    if (dVarArr.length == 1) {
                        return dVarArr[0].m34971a();
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a double value");
                }
            }
        }

        /* renamed from: b */
        public int m34975b(ByteOrder byteOrder) {
            Object d = m34973d(byteOrder);
            if (d == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            } else if (d instanceof String) {
                return Integer.parseInt((String) d);
            } else {
                if (d instanceof long[]) {
                    long[] jArr = (long[]) d;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (d instanceof int[]) {
                    int[] iArr = (int[]) d;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a integer value");
                }
            }
        }

        /* renamed from: c */
        public String m34974c(ByteOrder byteOrder) {
            Object d = m34973d(byteOrder);
            if (d == null) {
                return null;
            }
            if (d instanceof String) {
                return (String) d;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            if (d instanceof long[]) {
                long[] jArr = (long[]) d;
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
            } else if (d instanceof int[]) {
                int[] iArr = (int[]) d;
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
            } else if (d instanceof double[]) {
                double[] dArr = (double[]) d;
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
            } else if (!(d instanceof C1051d[])) {
                return null;
            } else {
                C1051d[] dVarArr = (C1051d[]) d;
                while (i3 < dVarArr.length) {
                    sb.append(dVarArr[i3].f4416a);
                    sb.append('/');
                    sb.append(dVarArr[i3].f4417b);
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

        /* JADX WARN: Removed duplicated region for block: B:230:0x03e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m34973d(java.nio.ByteOrder r10) {
            /*
                Method dump skipped, instructions count: 1020
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p061l.p062a.C1047a.C1049b.m34973d(java.nio.ByteOrder):java.lang.Object");
        }

        public String toString() {
            return "(" + C1047a.f4383s[this.f4409a] + ", data length:" + this.f4411c.length + ")";
        }
    }

    /* renamed from: b.l.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$c.class */
    public static class C1050c {

        /* renamed from: a */
        public final int f4412a;

        /* renamed from: b */
        public final String f4413b;

        /* renamed from: c */
        public final int f4414c;

        /* renamed from: d */
        public final int f4415d;

        public C1050c(String str, int i, int i2) {
            this.f4413b = str;
            this.f4412a = i;
            this.f4414c = i2;
            this.f4415d = -1;
        }

        public C1050c(String str, int i, int i2, int i3) {
            this.f4413b = str;
            this.f4412a = i;
            this.f4414c = i2;
            this.f4415d = i3;
        }

        /* renamed from: a */
        public boolean m34972a(int i) {
            int i2;
            int i3 = this.f4414c;
            if (i3 == 7 || i == 7 || i3 == i || (i2 = this.f4415d) == i) {
                return true;
            }
            if ((i3 == 4 || i2 == 4) && i == 3) {
                return true;
            }
            if ((this.f4414c == 9 || this.f4415d == 9) && i == 8) {
                return true;
            }
            return (this.f4414c == 12 || this.f4415d == 12) && i == 11;
        }
    }

    /* renamed from: b.l.a.a$d */
    /* loaded from: classes-dex2jar.jar:b/l/a/a$d.class */
    public static class C1051d {

        /* renamed from: a */
        public final long f4416a;

        /* renamed from: b */
        public final long f4417b;

        public C1051d(long j, long j2) {
            if (j2 == 0) {
                this.f4416a = 0L;
                this.f4417b = 1L;
                return;
            }
            this.f4416a = j;
            this.f4417b = j2;
        }

        /* renamed from: a */
        public double m34971a() {
            double d = this.f4416a;
            double d2 = this.f4417b;
            Double.isNaN(d);
            Double.isNaN(d2);
            return d / d2;
        }

        public String toString() {
            return this.f4416a + "/" + this.f4417b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v57, types: [b.l.a.a$c[], b.l.a.a$c[][]] */
    static {
        C1050c[] cVarArr;
        Arrays.asList(1, 6, 3, 8);
        Arrays.asList(2, 7, 4, 5);
        C1050c[] cVarArr2 = {new C1050c("ColorSpace", 55, 3)};
        f4368E = cVarArr2;
        C1050c[] cVarArr3 = f4386v;
        f4369F = new C1050c[]{cVarArr3, f4387w, f4388x, f4389y, f4390z, cVarArr3, f4365B, f4366C, f4367D, cVarArr2};
        new C1050c("JPEGInterchangeFormat", 513, 4);
        new C1050c("JPEGInterchangeFormatLength", 514, 4);
        C1050c[][] cVarArr4 = f4369F;
        f4371H = new HashMap[cVarArr4.length];
        f4372I = new HashMap[cVarArr4.length];
        Charset forName = Charset.forName("US-ASCII");
        f4375L = forName;
        f4376M = "Exif����".getBytes(forName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        f4382r = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        for (int i = 0; i < f4369F.length; i++) {
            f4371H[i] = new HashMap<>();
            f4372I[i] = new HashMap<>();
            for (C1050c cVar : f4369F[i]) {
                f4371H[i].put(Integer.valueOf(cVar.f4412a), cVar);
                f4372I[i].put(cVar.f4413b, cVar);
            }
        }
        f4374K.put(Integer.valueOf(f4370G[0].f4412a), 5);
        f4374K.put(Integer.valueOf(f4370G[1].f4412a), 1);
        f4374K.put(Integer.valueOf(f4370G[2].f4412a), 2);
        f4374K.put(Integer.valueOf(f4370G[3].f4412a), 3);
        f4374K.put(Integer.valueOf(f4370G[4].f4412a), 7);
        f4374K.put(Integer.valueOf(f4370G[5].f4412a), 8);
        Pattern.compile(".*[1-9].*");
        Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
    }

    public C1047a(String str) throws IOException {
        Throwable th;
        if (str != null) {
            FileInputStream fileInputStream = null;
            this.f4392b = null;
            this.f4391a = str;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    m35009a((InputStream) fileInputStream2);
                    m35010a((Closeable) fileInputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    m35010a((Closeable) fileInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            throw new IllegalArgumentException("filename cannot be null");
        }
    }

    /* renamed from: a */
    public static void m35010a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static long[] m35008a(Object obj) {
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                jArr[i] = iArr[i];
            }
            return jArr;
        } else if (obj instanceof long[]) {
            return (long[]) obj;
        } else {
            return null;
        }
    }

    /* renamed from: d */
    public static boolean m34990d(byte[] bArr) throws IOException {
        int i = 0;
        while (true) {
            byte[] bArr2 = f4379o;
            if (i >= bArr2.length) {
                return true;
            }
            if (bArr[i] != bArr2[i]) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: a */
    public final int m35011a(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (m34990d(bArr)) {
            return 4;
        }
        if (m34996b(bArr)) {
            return 9;
        }
        if (m35004a(bArr)) {
            return 7;
        }
        return m34993c(bArr) ? 10 : 0;
    }

    /* renamed from: a */
    public int m35006a(String str, int i) {
        C1049b b = m34998b(str);
        if (b == null) {
            return i;
        }
        try {
            return b.m34975b(this.f4396f);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    /* renamed from: a */
    public String m35007a(String str) {
        C1049b b = m34998b(str);
        if (b == null) {
            return null;
        }
        if (!f4373J.contains(str)) {
            return b.m34974c(this.f4396f);
        }
        if (str.equals("GPSTimeStamp")) {
            int i = b.f4409a;
            if (i == 5 || i == 10) {
                C1051d[] dVarArr = (C1051d[]) b.m34973d(this.f4396f);
                if (dVarArr != null && dVarArr.length == 3) {
                    return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) dVarArr[0].f4416a) / ((float) dVarArr[0].f4417b))), Integer.valueOf((int) (((float) dVarArr[1].f4416a) / ((float) dVarArr[1].f4417b))), Integer.valueOf((int) (((float) dVarArr[2].f4416a) / ((float) dVarArr[2].f4417b))));
                }
                Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(dVarArr));
                return null;
            }
            Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + b.f4409a);
            return null;
        }
        try {
            return Double.toString(b.m34979a(this.f4396f));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final void m35017a() {
        String a = m35007a("DateTimeOriginal");
        if (a != null && m35007a("DateTime") == null) {
            this.f4394d[0].put("DateTime", C1049b.m34980a(a));
        }
        if (m35007a("ImageWidth") == null) {
            this.f4394d[0].put("ImageWidth", C1049b.m34982a(0L, this.f4396f));
        }
        if (m35007a("ImageLength") == null) {
            this.f4394d[0].put("ImageLength", C1049b.m34982a(0L, this.f4396f));
        }
        if (m35007a("Orientation") == null) {
            this.f4394d[0].put("Orientation", C1049b.m34982a(0L, this.f4396f));
        }
        if (m35007a("LightSource") == null) {
            this.f4394d[1].put("LightSource", C1049b.m34982a(0L, this.f4396f));
        }
    }

    /* renamed from: a */
    public final void m35016a(int i, int i2) throws IOException {
        if (!this.f4394d[i].isEmpty() && !this.f4394d[i2].isEmpty()) {
            C1049b bVar = this.f4394d[i].get("ImageLength");
            C1049b bVar2 = this.f4394d[i].get("ImageWidth");
            C1049b bVar3 = this.f4394d[i2].get("ImageLength");
            C1049b bVar4 = this.f4394d[i2].get("ImageWidth");
            if (bVar != null && bVar2 != null && bVar3 != null && bVar4 != null) {
                int b = bVar.m34975b(this.f4396f);
                int b2 = bVar2.m34975b(this.f4396f);
                int b3 = bVar3.m34975b(this.f4396f);
                int b4 = bVar4.m34975b(this.f4396f);
                if (b < b3 && b2 < b4) {
                    HashMap<String, C1049b>[] hashMapArr = this.f4394d;
                    HashMap<String, C1049b> hashMap = hashMapArr[i];
                    hashMapArr[i] = hashMapArr[i2];
                    hashMapArr[i2] = hashMap;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m35015a(C1048a aVar) throws IOException {
        m34995c(aVar);
        C1049b bVar = this.f4394d[1].get("MakerNote");
        if (bVar != null) {
            C1048a aVar2 = new C1048a(bVar.f4411c);
            aVar2.m34986a(this.f4396f);
            byte[] bArr = new byte[f4380p.length];
            aVar2.readFully(bArr);
            aVar2.m34984d(0L);
            byte[] bArr2 = new byte[f4381q.length];
            aVar2.readFully(bArr2);
            if (Arrays.equals(bArr, f4380p)) {
                aVar2.m34984d(8L);
            } else if (Arrays.equals(bArr2, f4381q)) {
                aVar2.m34984d(12L);
            }
            m35001b(aVar2, 6);
            C1049b bVar2 = this.f4394d[7].get("PreviewImageStart");
            C1049b bVar3 = this.f4394d[7].get("PreviewImageLength");
            if (!(bVar2 == null || bVar3 == null)) {
                this.f4394d[5].put("JPEGInterchangeFormat", bVar2);
                this.f4394d[5].put("JPEGInterchangeFormatLength", bVar3);
            }
            C1049b bVar4 = this.f4394d[8].get("AspectFrame");
            if (bVar4 != null) {
                int[] iArr = (int[]) bVar4.m34973d(this.f4396f);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                } else if (iArr[2] > iArr[0] && iArr[3] > iArr[1]) {
                    int i = (iArr[2] - iArr[0]) + 1;
                    int i2 = (iArr[3] - iArr[1]) + 1;
                    int i3 = i;
                    int i4 = i2;
                    if (i < i2) {
                        int i5 = i + i2;
                        i4 = i5 - i2;
                        i3 = i5 - i4;
                    }
                    C1049b a = C1049b.m34983a(i3, this.f4396f);
                    C1049b a2 = C1049b.m34983a(i4, this.f4396f);
                    this.f4394d[0].put("ImageWidth", a);
                    this.f4394d[0].put("ImageLength", a2);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m35014a(C1048a aVar, int i) throws IOException {
        ByteOrder e = m34989e(aVar);
        this.f4396f = e;
        aVar.m34986a(e);
        int readUnsignedShort = aVar.readUnsignedShort();
        int i2 = this.f4393c;
        if (i2 == 7 || i2 == 10 || readUnsignedShort == 42) {
            int readInt = aVar.readInt();
            if (readInt < 8 || readInt >= i) {
                throw new IOException("Invalid first Ifd offset: " + readInt);
            }
            int i3 = readInt - 8;
            if (i3 > 0 && aVar.skipBytes(i3) != i3) {
                throw new IOException("Couldn't jump to first Ifd: " + i3);
            }
            return;
        }
        throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ee A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0213 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35013a(p012b.p061l.p062a.C1047a.C1048a r8, int r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p061l.p062a.C1047a.m35013a(b.l.a.a$a, int, int):void");
    }

    /* renamed from: a */
    public final void m35012a(C1048a aVar, HashMap hashMap) throws IOException {
        int i;
        int i2;
        C1049b bVar = (C1049b) hashMap.get("JPEGInterchangeFormat");
        C1049b bVar2 = (C1049b) hashMap.get("JPEGInterchangeFormatLength");
        if (bVar != null && bVar2 != null) {
            int b = bVar.m34975b(this.f4396f);
            int min = Math.min(bVar2.m34975b(this.f4396f), aVar.available() - b);
            int i3 = this.f4393c;
            if (i3 == 4 || i3 == 9 || i3 == 10) {
                i2 = this.f4398h;
            } else {
                i = b;
                if (i3 == 7) {
                    i2 = this.f4399i;
                }
                if (i > 0 && min > 0 && this.f4391a == null && this.f4392b == null) {
                    aVar.m34984d(i);
                    aVar.readFully(new byte[min]);
                    return;
                }
                return;
            }
            i = b + i2;
            if (i > 0) {
            }
        }
    }

    /* renamed from: a */
    public final void m35009a(InputStream inputStream) throws IOException {
        for (int i = 0; i < f4369F.length; i++) {
            try {
                this.f4394d[i] = new HashMap<>();
            } catch (IOException e) {
            } catch (Throwable th) {
                m35017a();
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        this.f4393c = m35011a(bufferedInputStream);
        C1048a aVar = new C1048a(bufferedInputStream);
        switch (this.f4393c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
                m34995c(aVar);
                break;
            case 4:
                m35013a(aVar, 0, 0);
                break;
            case 7:
                m35015a(aVar);
                break;
            case 9:
                m35002b(aVar);
                break;
            case 10:
                m34992d(aVar);
                break;
        }
        m34988f(aVar);
        m35017a();
    }

    /* renamed from: a */
    public final void m35003a(byte[] bArr, int i) throws IOException {
        C1048a aVar = new C1048a(bArr);
        m35014a(aVar, bArr.length);
        m35001b(aVar, i);
    }

    /* renamed from: a */
    public final boolean m35005a(HashMap hashMap) throws IOException {
        C1049b bVar;
        C1049b bVar2 = (C1049b) hashMap.get("BitsPerSample");
        if (bVar2 == null) {
            return false;
        }
        int[] iArr = (int[]) bVar2.m34973d(this.f4396f);
        if (Arrays.equals(f4377m, iArr)) {
            return true;
        }
        if (this.f4393c != 3 || (bVar = (C1049b) hashMap.get("PhotometricInterpretation")) == null) {
            return false;
        }
        int b = bVar.m34975b(this.f4396f);
        if (b != 1 || !Arrays.equals(iArr, f4378n)) {
            return b == 6 && Arrays.equals(iArr, f4377m);
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m35004a(byte[] bArr) throws IOException {
        C1048a aVar = new C1048a(bArr);
        ByteOrder e = m34989e(aVar);
        this.f4396f = e;
        aVar.m34986a(e);
        short readShort = aVar.readShort();
        aVar.close();
        return readShort == 20306 || readShort == 21330;
    }

    /* renamed from: b */
    public final C1049b m34998b(String str) {
        String str2 = str;
        if ("ISOSpeedRatings".equals(str)) {
            str2 = "PhotographicSensitivity";
        }
        for (int i = 0; i < f4369F.length; i++) {
            C1049b bVar = this.f4394d[i].get(str2);
            if (bVar != null) {
                return bVar;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m35002b(C1048a aVar) throws IOException {
        aVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        aVar.read(bArr);
        aVar.skipBytes(4);
        aVar.read(bArr2);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        m35013a(aVar, i, 5);
        aVar.m34984d(i2);
        aVar.m34986a(ByteOrder.BIG_ENDIAN);
        int readInt = aVar.readInt();
        for (int i3 = 0; i3 < readInt; i3++) {
            int readUnsignedShort = aVar.readUnsignedShort();
            int readUnsignedShort2 = aVar.readUnsignedShort();
            if (readUnsignedShort == f4364A.f4412a) {
                short readShort = aVar.readShort();
                short readShort2 = aVar.readShort();
                C1049b a = C1049b.m34983a((int) readShort, this.f4396f);
                C1049b a2 = C1049b.m34983a((int) readShort2, this.f4396f);
                this.f4394d[0].put("ImageLength", a);
                this.f4394d[0].put("ImageWidth", a2);
                return;
            }
            aVar.skipBytes(readUnsignedShort2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01a0  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35001b(p012b.p061l.p062a.C1047a.C1048a r7, int r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p061l.p062a.C1047a.m35001b(b.l.a.a$a, int):void");
    }

    /* renamed from: b */
    public final void m35000b(C1048a aVar, HashMap hashMap) throws IOException {
        C1049b bVar = (C1049b) hashMap.get("StripOffsets");
        C1049b bVar2 = (C1049b) hashMap.get("StripByteCounts");
        if (bVar != null && bVar2 != null) {
            long[] a = m35008a(bVar.m34973d(this.f4396f));
            long[] a2 = m35008a(bVar2.m34973d(this.f4396f));
            if (a == null) {
                Log.w("ExifInterface", "stripOffsets should not be null.");
            } else if (a2 == null) {
                Log.w("ExifInterface", "stripByteCounts should not be null.");
            } else {
                long j = 0;
                for (long j2 : a2) {
                    j += j2;
                }
                byte[] bArr = new byte[(int) j];
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < a.length; i3++) {
                    int i4 = (int) a[i3];
                    int i5 = (int) a2[i3];
                    int i6 = i4 - i;
                    if (i6 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                    }
                    aVar.m34984d(i6);
                    byte[] bArr2 = new byte[i5];
                    aVar.read(bArr2);
                    i = i + i6 + i5;
                    System.arraycopy(bArr2, 0, bArr, i2, i5);
                    i2 += i5;
                }
            }
        }
    }

    /* renamed from: b */
    public final void m34999b(InputStream inputStream) throws IOException {
        m35016a(0, 5);
        m35016a(0, 4);
        m35016a(5, 4);
        C1049b bVar = this.f4394d[1].get("PixelXDimension");
        C1049b bVar2 = this.f4394d[1].get("PixelYDimension");
        if (!(bVar == null || bVar2 == null)) {
            this.f4394d[0].put("ImageWidth", bVar);
            this.f4394d[0].put("ImageLength", bVar2);
        }
        if (this.f4394d[4].isEmpty() && m34997b(this.f4394d[5])) {
            HashMap<String, C1049b>[] hashMapArr = this.f4394d;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        if (!m34997b(this.f4394d[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
    }

    /* renamed from: b */
    public final boolean m34997b(HashMap hashMap) throws IOException {
        C1049b bVar = (C1049b) hashMap.get("ImageLength");
        C1049b bVar2 = (C1049b) hashMap.get("ImageWidth");
        if (bVar == null || bVar2 == null) {
            return false;
        }
        return bVar.m34975b(this.f4396f) <= 512 && bVar2.m34975b(this.f4396f) <= 512;
    }

    /* renamed from: b */
    public final boolean m34996b(byte[] bArr) throws IOException {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i = 0; i < bytes.length; i++) {
            if (bArr[i] != bytes[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public final void m34995c(C1048a aVar) throws IOException {
        C1049b bVar;
        m35014a(aVar, aVar.available());
        m35001b(aVar, 0);
        m34991d(aVar, 0);
        m34991d(aVar, 5);
        m34991d(aVar, 4);
        m34999b((InputStream) aVar);
        if (this.f4393c == 8 && (bVar = this.f4394d[1].get("MakerNote")) != null) {
            C1048a aVar2 = new C1048a(bVar.f4411c);
            aVar2.m34986a(this.f4396f);
            aVar2.m34984d(6L);
            m35001b(aVar2, 9);
            C1049b bVar2 = this.f4394d[9].get("ColorSpace");
            if (bVar2 != null) {
                this.f4394d[1].put("ColorSpace", bVar2);
            }
        }
    }

    /* renamed from: c */
    public final void m34994c(C1048a aVar, int i) throws IOException {
        C1049b bVar;
        C1049b bVar2 = this.f4394d[i].get("ImageLength");
        C1049b bVar3 = this.f4394d[i].get("ImageWidth");
        if ((bVar2 == null || bVar3 == null) && (bVar = this.f4394d[i].get("JPEGInterchangeFormat")) != null) {
            m35013a(aVar, bVar.m34975b(this.f4396f), i);
        }
    }

    /* renamed from: c */
    public final boolean m34993c(byte[] bArr) throws IOException {
        C1048a aVar = new C1048a(bArr);
        ByteOrder e = m34989e(aVar);
        this.f4396f = e;
        aVar.m34986a(e);
        short readShort = aVar.readShort();
        aVar.close();
        return readShort == 85;
    }

    /* renamed from: d */
    public final void m34992d(C1048a aVar) throws IOException {
        m34995c(aVar);
        if (this.f4394d[0].get("JpgFromRaw") != null) {
            m35013a(aVar, this.f4402l, 5);
        }
        C1049b bVar = this.f4394d[0].get("ISO");
        C1049b bVar2 = this.f4394d[1].get("PhotographicSensitivity");
        if (bVar != null && bVar2 == null) {
            this.f4394d[1].put("PhotographicSensitivity", bVar);
        }
    }

    /* renamed from: d */
    public final void m34991d(C1048a aVar, int i) throws IOException {
        C1049b bVar;
        C1049b bVar2;
        C1049b bVar3 = this.f4394d[i].get("DefaultCropSize");
        C1049b bVar4 = this.f4394d[i].get("SensorTopBorder");
        C1049b bVar5 = this.f4394d[i].get("SensorLeftBorder");
        C1049b bVar6 = this.f4394d[i].get("SensorBottomBorder");
        C1049b bVar7 = this.f4394d[i].get("SensorRightBorder");
        if (bVar3 != null) {
            if (bVar3.f4409a == 5) {
                C1051d[] dVarArr = (C1051d[]) bVar3.m34973d(this.f4396f);
                if (dVarArr == null || dVarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(dVarArr));
                    return;
                }
                bVar = C1049b.m34981a(dVarArr[0], this.f4396f);
                bVar2 = C1049b.m34981a(dVarArr[1], this.f4396f);
            } else {
                int[] iArr = (int[]) bVar3.m34973d(this.f4396f);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                bVar = C1049b.m34983a(iArr[0], this.f4396f);
                bVar2 = C1049b.m34983a(iArr[1], this.f4396f);
            }
            this.f4394d[i].put("ImageWidth", bVar);
            this.f4394d[i].put("ImageLength", bVar2);
        } else if (bVar4 == null || bVar5 == null || bVar6 == null || bVar7 == null) {
            m34994c(aVar, i);
        } else {
            int b = bVar4.m34975b(this.f4396f);
            int b2 = bVar6.m34975b(this.f4396f);
            int b3 = bVar7.m34975b(this.f4396f);
            int b4 = bVar5.m34975b(this.f4396f);
            if (b2 > b && b3 > b4) {
                C1049b a = C1049b.m34983a(b2 - b, this.f4396f);
                C1049b a2 = C1049b.m34983a(b3 - b4, this.f4396f);
                this.f4394d[i].put("ImageLength", a);
                this.f4394d[i].put("ImageWidth", a2);
            }
        }
    }

    /* renamed from: e */
    public final ByteOrder m34989e(C1048a aVar) throws IOException {
        short readShort = aVar.readShort();
        if (readShort == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    /* renamed from: f */
    public final void m34988f(C1048a aVar) throws IOException {
        HashMap<String, C1049b> hashMap = this.f4394d[4];
        C1049b bVar = hashMap.get("Compression");
        if (bVar != null) {
            int b = bVar.m34975b(this.f4396f);
            this.f4397g = b;
            if (b != 1) {
                if (b == 6) {
                    m35012a(aVar, hashMap);
                    return;
                } else if (b != 7) {
                    return;
                }
            }
            if (m35005a((HashMap) hashMap)) {
                m35000b(aVar, hashMap);
                return;
            }
            return;
        }
        this.f4397g = 6;
        m35012a(aVar, hashMap);
    }
}
