package com.google.android.exoplayer2;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.drm.n;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/Format.class */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new Parcelable.Creator<Format>() { // from class: com.google.android.exoplayer2.Format.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Format createFromParcel(Parcel parcel) {
            return new Format(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Format[] newArray(int i) {
            return new Format[i];
        }
    };
    public static final int NO_VALUE = -1;
    public static final long OFFSET_SAMPLE_RELATIVE = Long.MAX_VALUE;
    public final int accessibilityChannel;
    public final int averageBitrate;
    public final int bitrate;
    public final int channelCount;
    public final String codecs;
    public final ColorInfo colorInfo;
    public final String containerMimeType;
    public final DrmInitData drmInitData;
    public final int encoderDelay;
    public final int encoderPadding;
    public final Class<? extends h> exoMediaCryptoType;
    public final float frameRate;
    private int hashCode;
    public final int height;
    public final String id;
    public final List<byte[]> initializationData;
    public final String label;
    public final String language;
    public final int maxInputSize;
    public final Metadata metadata;
    public final int pcmEncoding;
    public final int peakBitrate;
    public final float pixelWidthHeightRatio;
    public final byte[] projectionData;
    public final int roleFlags;
    public final int rotationDegrees;
    public final String sampleMimeType;
    public final int sampleRate;
    public final int selectionFlags;
    public final int stereoMode;
    public final long subsampleOffsetUs;
    public final int width;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/Format$a.class */
    public static final class a {
        public int A;
        public int B;
        public int C;
        Class<? extends h> D;

        /* renamed from: a  reason: collision with root package name */
        public String f20603a;

        /* renamed from: b  reason: collision with root package name */
        public String f20604b;

        /* renamed from: c  reason: collision with root package name */
        public String f20605c;

        /* renamed from: d  reason: collision with root package name */
        public int f20606d;
        public int e;
        public int f;
        public int g;
        public String h;
        public Metadata i;
        String j;
        public String k;
        public int l;
        public List<byte[]> m;
        public DrmInitData n;
        public long o;
        public int p;
        public int q;
        public float r;
        public int s;
        public float t;
        public byte[] u;
        public int v;
        public ColorInfo w;
        public int x;
        public int y;
        public int z;

        public a() {
            this.f = -1;
            this.g = -1;
            this.l = -1;
            this.o = Long.MAX_VALUE;
            this.p = -1;
            this.q = -1;
            this.r = -1.0f;
            this.t = 1.0f;
            this.v = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.C = -1;
        }

        private a(Format format) {
            this.f20603a = format.id;
            this.f20604b = format.label;
            this.f20605c = format.language;
            this.f20606d = format.selectionFlags;
            this.e = format.roleFlags;
            this.f = format.averageBitrate;
            this.g = format.peakBitrate;
            this.h = format.codecs;
            this.i = format.metadata;
            this.j = format.containerMimeType;
            this.k = format.sampleMimeType;
            this.l = format.maxInputSize;
            this.m = format.initializationData;
            this.n = format.drmInitData;
            this.o = format.subsampleOffsetUs;
            this.p = format.width;
            this.q = format.height;
            this.r = format.frameRate;
            this.s = format.rotationDegrees;
            this.t = format.pixelWidthHeightRatio;
            this.u = format.projectionData;
            this.v = format.stereoMode;
            this.w = format.colorInfo;
            this.x = format.channelCount;
            this.y = format.sampleRate;
            this.z = format.pcmEncoding;
            this.A = format.encoderDelay;
            this.B = format.encoderPadding;
            this.C = format.accessibilityChannel;
            this.D = format.exoMediaCryptoType;
        }

        public final a a(int i) {
            this.f20603a = Integer.toString(i);
            return this;
        }

        public final Format a() {
            return new Format(this);
        }
    }

    Format(Parcel parcel) {
        this.id = parcel.readString();
        this.label = parcel.readString();
        this.language = parcel.readString();
        this.selectionFlags = parcel.readInt();
        this.roleFlags = parcel.readInt();
        int readInt = parcel.readInt();
        this.averageBitrate = readInt;
        int readInt2 = parcel.readInt();
        this.peakBitrate = readInt2;
        this.bitrate = readInt2 != -1 ? readInt2 : readInt;
        this.codecs = parcel.readString();
        this.metadata = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.containerMimeType = parcel.readString();
        this.sampleMimeType = parcel.readString();
        this.maxInputSize = parcel.readInt();
        int readInt3 = parcel.readInt();
        this.initializationData = new ArrayList(readInt3);
        for (int i = 0; i < readInt3; i++) {
            this.initializationData.add((byte[]) com.google.android.exoplayer2.util.a.b(parcel.createByteArray()));
        }
        DrmInitData drmInitData = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = parcel.readLong();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.frameRate = parcel.readFloat();
        this.rotationDegrees = parcel.readInt();
        this.pixelWidthHeightRatio = parcel.readFloat();
        boolean a2 = af.a(parcel);
        Class cls = null;
        this.projectionData = a2 ? parcel.createByteArray() : null;
        this.stereoMode = parcel.readInt();
        this.colorInfo = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.channelCount = parcel.readInt();
        this.sampleRate = parcel.readInt();
        this.pcmEncoding = parcel.readInt();
        this.encoderDelay = parcel.readInt();
        this.encoderPadding = parcel.readInt();
        this.accessibilityChannel = parcel.readInt();
        this.exoMediaCryptoType = drmInitData != null ? n.class : cls;
    }

    private Format(a aVar) {
        this.id = aVar.f20603a;
        this.label = aVar.f20604b;
        this.language = af.b(aVar.f20605c);
        this.selectionFlags = aVar.f20606d;
        this.roleFlags = aVar.e;
        int i = aVar.f;
        this.averageBitrate = i;
        int i2 = aVar.g;
        this.peakBitrate = i2;
        this.bitrate = i2 != -1 ? i2 : i;
        this.codecs = aVar.h;
        this.metadata = aVar.i;
        this.containerMimeType = aVar.j;
        this.sampleMimeType = aVar.k;
        this.maxInputSize = aVar.l;
        this.initializationData = aVar.m == null ? Collections.emptyList() : aVar.m;
        DrmInitData drmInitData = aVar.n;
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = aVar.o;
        this.width = aVar.p;
        this.height = aVar.q;
        this.frameRate = aVar.r;
        int i3 = 0;
        this.rotationDegrees = aVar.s == -1 ? 0 : aVar.s;
        this.pixelWidthHeightRatio = aVar.t == -1.0f ? 1.0f : aVar.t;
        this.projectionData = aVar.u;
        this.stereoMode = aVar.v;
        this.colorInfo = aVar.w;
        this.channelCount = aVar.x;
        this.sampleRate = aVar.y;
        this.pcmEncoding = aVar.z;
        this.encoderDelay = aVar.A == -1 ? 0 : aVar.A;
        if (aVar.B != -1) {
            i3 = aVar.B;
        }
        this.encoderPadding = i3;
        this.accessibilityChannel = aVar.C;
        if (aVar.D != null || drmInitData == null) {
            this.exoMediaCryptoType = aVar.D;
        } else {
            this.exoMediaCryptoType = n.class;
        }
    }

    @Deprecated
    public static Format createAudioContainerFormat(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, List<byte[]> list, int i4, int i5, String str6) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20604b = str2;
        aVar.f20605c = str6;
        aVar.f20606d = i4;
        aVar.e = i5;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str5;
        aVar.i = metadata;
        aVar.j = str3;
        aVar.k = str4;
        aVar.m = list;
        aVar.x = i2;
        aVar.y = i3;
        return aVar.a();
    }

    @Deprecated
    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20605c = str4;
        aVar.f20606d = i8;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str3;
        aVar.i = metadata;
        aVar.k = str2;
        aVar.l = i2;
        aVar.m = list;
        aVar.n = drmInitData;
        aVar.x = i3;
        aVar.y = i4;
        aVar.z = i5;
        aVar.A = i6;
        aVar.B = i7;
        return aVar.a();
    }

    @Deprecated
    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20605c = str4;
        aVar.f20606d = i6;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str3;
        aVar.k = str2;
        aVar.l = i2;
        aVar.m = list;
        aVar.n = drmInitData;
        aVar.x = i3;
        aVar.y = i4;
        aVar.z = i5;
        return aVar.a();
    }

    @Deprecated
    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20605c = str4;
        aVar.f20606d = i5;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str3;
        aVar.k = str2;
        aVar.l = i2;
        aVar.m = list;
        aVar.n = drmInitData;
        aVar.x = i3;
        aVar.y = i4;
        return aVar.a();
    }

    @Deprecated
    public static Format createContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20604b = str2;
        aVar.f20605c = str6;
        aVar.f20606d = i2;
        aVar.e = i3;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str5;
        aVar.j = str3;
        aVar.k = str4;
        return aVar.a();
    }

    @Deprecated
    public static Format createImageSampleFormat(String str, String str2, int i, List<byte[]> list, String str3) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20605c = str3;
        aVar.f20606d = i;
        aVar.k = str2;
        aVar.m = list;
        return aVar.a();
    }

    @Deprecated
    public static Format createSampleFormat(String str, String str2) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.k = str2;
        return aVar.a();
    }

    @Deprecated
    public static Format createTextContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20604b = str2;
        aVar.f20605c = str6;
        aVar.f20606d = i2;
        aVar.e = i3;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str5;
        aVar.j = str3;
        aVar.k = str4;
        return aVar.a();
    }

    @Deprecated
    public static Format createTextContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6, int i4) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20604b = str2;
        aVar.f20605c = str6;
        aVar.f20606d = i2;
        aVar.e = i3;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str5;
        aVar.j = str3;
        aVar.k = str4;
        aVar.C = i4;
        return aVar.a();
    }

    @Deprecated
    public static Format createTextSampleFormat(String str, String str2, int i, String str3) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20605c = str3;
        aVar.f20606d = i;
        aVar.k = str2;
        return aVar.a();
    }

    @Deprecated
    public static Format createTextSampleFormat(String str, String str2, int i, String str3, int i2, long j, List<byte[]> list) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20605c = str3;
        aVar.f20606d = i;
        aVar.k = str2;
        aVar.m = list;
        aVar.o = j;
        aVar.C = i2;
        return aVar.a();
    }

    @Deprecated
    public static Format createVideoContainerFormat(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, float f, List<byte[]> list, int i4, int i5) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f20604b = str2;
        aVar.f20606d = i4;
        aVar.e = i5;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str5;
        aVar.i = metadata;
        aVar.j = str3;
        aVar.k = str4;
        aVar.m = list;
        aVar.p = i2;
        aVar.q = i3;
        aVar.r = f;
        return aVar.a();
    }

    @Deprecated
    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str3;
        aVar.k = str2;
        aVar.l = i2;
        aVar.m = list;
        aVar.n = drmInitData;
        aVar.p = i3;
        aVar.q = i4;
        aVar.r = f;
        aVar.s = i5;
        aVar.t = f2;
        return aVar.a();
    }

    @Deprecated
    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str3;
        aVar.k = str2;
        aVar.l = i2;
        aVar.m = list;
        aVar.n = drmInitData;
        aVar.p = i3;
        aVar.q = i4;
        aVar.r = f;
        aVar.s = i5;
        aVar.t = f2;
        aVar.u = bArr;
        aVar.v = i6;
        aVar.w = colorInfo;
        return aVar.a();
    }

    @Deprecated
    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, DrmInitData drmInitData) {
        a aVar = new a();
        aVar.f20603a = str;
        aVar.f = i;
        aVar.g = i;
        aVar.h = str3;
        aVar.k = str2;
        aVar.l = i2;
        aVar.m = list;
        aVar.n = drmInitData;
        aVar.p = i3;
        aVar.q = i4;
        aVar.r = f;
        return aVar.a();
    }

    public static String toLogString(Format format) {
        if (format == null) {
            return JsonReaderKt.NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(format.id);
        sb.append(", mimeType=");
        sb.append(format.sampleMimeType);
        if (format.bitrate != -1) {
            sb.append(", bitrate=");
            sb.append(format.bitrate);
        }
        if (format.codecs != null) {
            sb.append(", codecs=");
            sb.append(format.codecs);
        }
        if (!(format.width == -1 || format.height == -1)) {
            sb.append(", res=");
            sb.append(format.width);
            sb.append("x");
            sb.append(format.height);
        }
        if (format.frameRate != -1.0f) {
            sb.append(", fps=");
            sb.append(format.frameRate);
        }
        if (format.channelCount != -1) {
            sb.append(", channels=");
            sb.append(format.channelCount);
        }
        if (format.sampleRate != -1) {
            sb.append(", sample_rate=");
            sb.append(format.sampleRate);
        }
        if (format.language != null) {
            sb.append(", language=");
            sb.append(format.language);
        }
        if (format.label != null) {
            sb.append(", label=");
            sb.append(format.label);
        }
        return sb.toString();
    }

    public final a buildUpon() {
        return new a();
    }

    @Deprecated
    public final Format copyWithBitrate(int i) {
        a buildUpon = buildUpon();
        buildUpon.f = i;
        buildUpon.g = i;
        return buildUpon.a();
    }

    @Deprecated
    public final Format copyWithDrmInitData(DrmInitData drmInitData) {
        a buildUpon = buildUpon();
        buildUpon.n = drmInitData;
        return buildUpon.a();
    }

    public final Format copyWithExoMediaCryptoType(Class<? extends h> cls) {
        a buildUpon = buildUpon();
        buildUpon.D = cls;
        return buildUpon.a();
    }

    @Deprecated
    public final Format copyWithFrameRate(float f) {
        a buildUpon = buildUpon();
        buildUpon.r = f;
        return buildUpon.a();
    }

    @Deprecated
    public final Format copyWithGaplessInfo(int i, int i2) {
        a buildUpon = buildUpon();
        buildUpon.A = i;
        buildUpon.B = i2;
        return buildUpon.a();
    }

    @Deprecated
    public final Format copyWithLabel(String str) {
        a buildUpon = buildUpon();
        buildUpon.f20604b = str;
        return buildUpon.a();
    }

    @Deprecated
    public final Format copyWithManifestFormatInfo(Format format) {
        return withManifestFormatInfo(format);
    }

    @Deprecated
    public final Format copyWithMaxInputSize(int i) {
        a buildUpon = buildUpon();
        buildUpon.l = i;
        return buildUpon.a();
    }

    @Deprecated
    public final Format copyWithMetadata(Metadata metadata) {
        a buildUpon = buildUpon();
        buildUpon.i = metadata;
        return buildUpon.a();
    }

    @Deprecated
    public final Format copyWithSubsampleOffsetUs(long j) {
        a buildUpon = buildUpon();
        buildUpon.o = j;
        return buildUpon.a();
    }

    @Deprecated
    public final Format copyWithVideoSize(int i, int i2) {
        a buildUpon = buildUpon();
        buildUpon.p = i;
        buildUpon.q = i2;
        return buildUpon.a();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        int i2 = this.hashCode;
        return (i2 == 0 || (i = format.hashCode) == 0 || i2 == i) && this.selectionFlags == format.selectionFlags && this.roleFlags == format.roleFlags && this.averageBitrate == format.averageBitrate && this.peakBitrate == format.peakBitrate && this.maxInputSize == format.maxInputSize && this.subsampleOffsetUs == format.subsampleOffsetUs && this.width == format.width && this.height == format.height && this.rotationDegrees == format.rotationDegrees && this.stereoMode == format.stereoMode && this.channelCount == format.channelCount && this.sampleRate == format.sampleRate && this.pcmEncoding == format.pcmEncoding && this.encoderDelay == format.encoderDelay && this.encoderPadding == format.encoderPadding && this.accessibilityChannel == format.accessibilityChannel && Float.compare(this.frameRate, format.frameRate) == 0 && Float.compare(this.pixelWidthHeightRatio, format.pixelWidthHeightRatio) == 0 && af.a(this.exoMediaCryptoType, format.exoMediaCryptoType) && af.a((Object) this.id, (Object) format.id) && af.a((Object) this.label, (Object) format.label) && af.a((Object) this.codecs, (Object) format.codecs) && af.a((Object) this.containerMimeType, (Object) format.containerMimeType) && af.a((Object) this.sampleMimeType, (Object) format.sampleMimeType) && af.a((Object) this.language, (Object) format.language) && Arrays.equals(this.projectionData, format.projectionData) && af.a(this.metadata, format.metadata) && af.a(this.colorInfo, format.colorInfo) && af.a(this.drmInitData, format.drmInitData) && initializationDataEquals(format);
    }

    public final int getPixelCount() {
        int i;
        int i2 = this.width;
        if (i2 == -1 || (i = this.height) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final int hashCode() {
        if (this.hashCode == 0) {
            String str = this.id;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.label;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.language;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            int i2 = this.selectionFlags;
            int i3 = this.roleFlags;
            int i4 = this.averageBitrate;
            int i5 = this.peakBitrate;
            String str4 = this.codecs;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            Metadata metadata = this.metadata;
            int hashCode5 = metadata == null ? 0 : metadata.hashCode();
            String str5 = this.containerMimeType;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            String str6 = this.sampleMimeType;
            int hashCode7 = str6 == null ? 0 : str6.hashCode();
            int i6 = this.maxInputSize;
            int i7 = (int) this.subsampleOffsetUs;
            int i8 = this.width;
            int i9 = this.height;
            int floatToIntBits = Float.floatToIntBits(this.frameRate);
            int i10 = this.rotationDegrees;
            int floatToIntBits2 = Float.floatToIntBits(this.pixelWidthHeightRatio);
            int i11 = this.stereoMode;
            int i12 = this.channelCount;
            int i13 = this.sampleRate;
            int i14 = this.pcmEncoding;
            int i15 = this.encoderDelay;
            int i16 = this.encoderPadding;
            int i17 = this.accessibilityChannel;
            Class<? extends h> cls = this.exoMediaCryptoType;
            if (cls != null) {
                i = cls.hashCode();
            }
            this.hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + floatToIntBits) * 31) + i10) * 31) + floatToIntBits2) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + i16) * 31) + i17) * 31) + i;
        }
        return this.hashCode;
    }

    public final boolean initializationDataEquals(Format format) {
        if (this.initializationData.size() != format.initializationData.size()) {
            return false;
        }
        for (int i = 0; i < this.initializationData.size(); i++) {
            if (!Arrays.equals(this.initializationData.get(i), format.initializationData.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        return "Format(" + this.id + ", " + this.label + ", " + this.containerMimeType + ", " + this.sampleMimeType + ", " + this.codecs + ", " + this.bitrate + ", " + this.language + ", [" + this.width + ", " + this.height + ", " + this.frameRate + "], [" + this.channelCount + ", " + this.sampleRate + "])";
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (r0 == 1) goto L_0x003c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.Format withManifestFormatInfo(com.google.android.exoplayer2.Format r5) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.Format.withManifestFormatInfo(com.google.android.exoplayer2.Format):com.google.android.exoplayer2.Format");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.label);
        parcel.writeString(this.language);
        parcel.writeInt(this.selectionFlags);
        parcel.writeInt(this.roleFlags);
        parcel.writeInt(this.averageBitrate);
        parcel.writeInt(this.peakBitrate);
        parcel.writeString(this.codecs);
        boolean z = false;
        parcel.writeParcelable(this.metadata, 0);
        parcel.writeString(this.containerMimeType);
        parcel.writeString(this.sampleMimeType);
        parcel.writeInt(this.maxInputSize);
        int size = this.initializationData.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.initializationData.get(i2));
        }
        parcel.writeParcelable(this.drmInitData, 0);
        parcel.writeLong(this.subsampleOffsetUs);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeFloat(this.frameRate);
        parcel.writeInt(this.rotationDegrees);
        parcel.writeFloat(this.pixelWidthHeightRatio);
        if (this.projectionData != null) {
            z = true;
        }
        af.a(parcel, z);
        byte[] bArr = this.projectionData;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.stereoMode);
        parcel.writeParcelable(this.colorInfo, i);
        parcel.writeInt(this.channelCount);
        parcel.writeInt(this.sampleRate);
        parcel.writeInt(this.pcmEncoding);
        parcel.writeInt(this.encoderDelay);
        parcel.writeInt(this.encoderPadding);
        parcel.writeInt(this.accessibilityChannel);
    }
}
