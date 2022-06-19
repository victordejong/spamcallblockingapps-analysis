package com.google.android.exoplayer2;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.drm.AbstractC10963h;
import com.google.android.exoplayer2.drm.C10974n;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
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
    public final Class<? extends AbstractC10963h> exoMediaCryptoType;
    public final float frameRate;
    private int hashCode;
    public final int height;

    /* renamed from: id */
    public final String f34777id;
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

    /* renamed from: com.google.android.exoplayer2.Format$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/Format$a.class */
    public static final class C10828a {

        /* renamed from: A */
        public int f34778A;

        /* renamed from: B */
        public int f34779B;

        /* renamed from: C */
        public int f34780C;

        /* renamed from: D */
        Class<? extends AbstractC10963h> f34781D;

        /* renamed from: a */
        public String f34782a;

        /* renamed from: b */
        public String f34783b;

        /* renamed from: c */
        public String f34784c;

        /* renamed from: d */
        public int f34785d;

        /* renamed from: e */
        public int f34786e;

        /* renamed from: f */
        public int f34787f;

        /* renamed from: g */
        public int f34788g;

        /* renamed from: h */
        public String f34789h;

        /* renamed from: i */
        public Metadata f34790i;

        /* renamed from: j */
        String f34791j;

        /* renamed from: k */
        public String f34792k;

        /* renamed from: l */
        public int f34793l;

        /* renamed from: m */
        public List<byte[]> f34794m;

        /* renamed from: n */
        public DrmInitData f34795n;

        /* renamed from: o */
        public long f34796o;

        /* renamed from: p */
        public int f34797p;

        /* renamed from: q */
        public int f34798q;

        /* renamed from: r */
        public float f34799r;

        /* renamed from: s */
        public int f34800s;

        /* renamed from: t */
        public float f34801t;

        /* renamed from: u */
        public byte[] f34802u;

        /* renamed from: v */
        public int f34803v;

        /* renamed from: w */
        public ColorInfo f34804w;

        /* renamed from: x */
        public int f34805x;

        /* renamed from: y */
        public int f34806y;

        /* renamed from: z */
        public int f34807z;

        public C10828a() {
            this.f34787f = -1;
            this.f34788g = -1;
            this.f34793l = -1;
            this.f34796o = Long.MAX_VALUE;
            this.f34797p = -1;
            this.f34798q = -1;
            this.f34799r = -1.0f;
            this.f34801t = 1.0f;
            this.f34803v = -1;
            this.f34805x = -1;
            this.f34806y = -1;
            this.f34807z = -1;
            this.f34780C = -1;
        }

        private C10828a(Format format) {
            this.f34782a = format.f34777id;
            this.f34783b = format.label;
            this.f34784c = format.language;
            this.f34785d = format.selectionFlags;
            this.f34786e = format.roleFlags;
            this.f34787f = format.averageBitrate;
            this.f34788g = format.peakBitrate;
            this.f34789h = format.codecs;
            this.f34790i = format.metadata;
            this.f34791j = format.containerMimeType;
            this.f34792k = format.sampleMimeType;
            this.f34793l = format.maxInputSize;
            this.f34794m = format.initializationData;
            this.f34795n = format.drmInitData;
            this.f34796o = format.subsampleOffsetUs;
            this.f34797p = format.width;
            this.f34798q = format.height;
            this.f34799r = format.frameRate;
            this.f34800s = format.rotationDegrees;
            this.f34801t = format.pixelWidthHeightRatio;
            this.f34802u = format.projectionData;
            this.f34803v = format.stereoMode;
            this.f34804w = format.colorInfo;
            this.f34805x = format.channelCount;
            this.f34806y = format.sampleRate;
            this.f34807z = format.pcmEncoding;
            this.f34778A = format.encoderDelay;
            this.f34779B = format.encoderPadding;
            this.f34780C = format.accessibilityChannel;
            this.f34781D = format.exoMediaCryptoType;
        }

        /* renamed from: a */
        public final C10828a m22320a(int i) {
            this.f34782a = Integer.toString(i);
            return this;
        }

        /* renamed from: a */
        public final Format m22321a() {
            return new Format(this);
        }
    }

    Format(Parcel parcel) {
        this.f34777id = parcel.readString();
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
            this.initializationData.add((byte[]) C11593a.m20020b(parcel.createByteArray()));
        }
        DrmInitData drmInitData = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = parcel.readLong();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.frameRate = parcel.readFloat();
        this.rotationDegrees = parcel.readInt();
        this.pixelWidthHeightRatio = parcel.readFloat();
        this.projectionData = C11599af.m19982a(parcel) ? parcel.createByteArray() : null;
        this.stereoMode = parcel.readInt();
        this.colorInfo = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.channelCount = parcel.readInt();
        this.sampleRate = parcel.readInt();
        this.pcmEncoding = parcel.readInt();
        this.encoderDelay = parcel.readInt();
        this.encoderPadding = parcel.readInt();
        this.accessibilityChannel = parcel.readInt();
        this.exoMediaCryptoType = drmInitData != null ? C10974n.class : null;
    }

    private Format(C10828a c10828a) {
        this.f34777id = c10828a.f34782a;
        this.label = c10828a.f34783b;
        this.language = C11599af.m19944b(c10828a.f34784c);
        this.selectionFlags = c10828a.f34785d;
        this.roleFlags = c10828a.f34786e;
        int i = c10828a.f34787f;
        this.averageBitrate = i;
        int i2 = c10828a.f34788g;
        this.peakBitrate = i2;
        this.bitrate = i2 != -1 ? i2 : i;
        this.codecs = c10828a.f34789h;
        this.metadata = c10828a.f34790i;
        this.containerMimeType = c10828a.f34791j;
        this.sampleMimeType = c10828a.f34792k;
        this.maxInputSize = c10828a.f34793l;
        this.initializationData = c10828a.f34794m == null ? Collections.emptyList() : c10828a.f34794m;
        DrmInitData drmInitData = c10828a.f34795n;
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = c10828a.f34796o;
        this.width = c10828a.f34797p;
        this.height = c10828a.f34798q;
        this.frameRate = c10828a.f34799r;
        this.rotationDegrees = c10828a.f34800s == -1 ? 0 : c10828a.f34800s;
        this.pixelWidthHeightRatio = c10828a.f34801t == -1.0f ? 1.0f : c10828a.f34801t;
        this.projectionData = c10828a.f34802u;
        this.stereoMode = c10828a.f34803v;
        this.colorInfo = c10828a.f34804w;
        this.channelCount = c10828a.f34805x;
        this.sampleRate = c10828a.f34806y;
        this.pcmEncoding = c10828a.f34807z;
        this.encoderDelay = c10828a.f34778A == -1 ? 0 : c10828a.f34778A;
        this.encoderPadding = c10828a.f34779B == -1 ? 0 : c10828a.f34779B;
        this.accessibilityChannel = c10828a.f34780C;
        if (c10828a.f34781D != null || drmInitData == null) {
            this.exoMediaCryptoType = c10828a.f34781D;
        } else {
            this.exoMediaCryptoType = C10974n.class;
        }
    }

    @Deprecated
    public static Format createAudioContainerFormat(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, List<byte[]> list, int i4, int i5, String str6) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34783b = str2;
        c10828a.f34784c = str6;
        c10828a.f34785d = i4;
        c10828a.f34786e = i5;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str5;
        c10828a.f34790i = metadata;
        c10828a.f34791j = str3;
        c10828a.f34792k = str4;
        c10828a.f34794m = list;
        c10828a.f34805x = i2;
        c10828a.f34806y = i3;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34784c = str4;
        c10828a.f34785d = i8;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str3;
        c10828a.f34790i = metadata;
        c10828a.f34792k = str2;
        c10828a.f34793l = i2;
        c10828a.f34794m = list;
        c10828a.f34795n = drmInitData;
        c10828a.f34805x = i3;
        c10828a.f34806y = i4;
        c10828a.f34807z = i5;
        c10828a.f34778A = i6;
        c10828a.f34779B = i7;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34784c = str4;
        c10828a.f34785d = i6;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str3;
        c10828a.f34792k = str2;
        c10828a.f34793l = i2;
        c10828a.f34794m = list;
        c10828a.f34795n = drmInitData;
        c10828a.f34805x = i3;
        c10828a.f34806y = i4;
        c10828a.f34807z = i5;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34784c = str4;
        c10828a.f34785d = i5;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str3;
        c10828a.f34792k = str2;
        c10828a.f34793l = i2;
        c10828a.f34794m = list;
        c10828a.f34795n = drmInitData;
        c10828a.f34805x = i3;
        c10828a.f34806y = i4;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34783b = str2;
        c10828a.f34784c = str6;
        c10828a.f34785d = i2;
        c10828a.f34786e = i3;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str5;
        c10828a.f34791j = str3;
        c10828a.f34792k = str4;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createImageSampleFormat(String str, String str2, int i, List<byte[]> list, String str3) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34784c = str3;
        c10828a.f34785d = i;
        c10828a.f34792k = str2;
        c10828a.f34794m = list;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createSampleFormat(String str, String str2) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34792k = str2;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createTextContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34783b = str2;
        c10828a.f34784c = str6;
        c10828a.f34785d = i2;
        c10828a.f34786e = i3;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str5;
        c10828a.f34791j = str3;
        c10828a.f34792k = str4;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createTextContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6, int i4) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34783b = str2;
        c10828a.f34784c = str6;
        c10828a.f34785d = i2;
        c10828a.f34786e = i3;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str5;
        c10828a.f34791j = str3;
        c10828a.f34792k = str4;
        c10828a.f34780C = i4;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createTextSampleFormat(String str, String str2, int i, String str3) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34784c = str3;
        c10828a.f34785d = i;
        c10828a.f34792k = str2;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createTextSampleFormat(String str, String str2, int i, String str3, int i2, long j, List<byte[]> list) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34784c = str3;
        c10828a.f34785d = i;
        c10828a.f34792k = str2;
        c10828a.f34794m = list;
        c10828a.f34796o = j;
        c10828a.f34780C = i2;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createVideoContainerFormat(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, float f, List<byte[]> list, int i4, int i5) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34783b = str2;
        c10828a.f34785d = i4;
        c10828a.f34786e = i5;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str5;
        c10828a.f34790i = metadata;
        c10828a.f34791j = str3;
        c10828a.f34792k = str4;
        c10828a.f34794m = list;
        c10828a.f34797p = i2;
        c10828a.f34798q = i3;
        c10828a.f34799r = f;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str3;
        c10828a.f34792k = str2;
        c10828a.f34793l = i2;
        c10828a.f34794m = list;
        c10828a.f34795n = drmInitData;
        c10828a.f34797p = i3;
        c10828a.f34798q = i4;
        c10828a.f34799r = f;
        c10828a.f34800s = i5;
        c10828a.f34801t = f2;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str3;
        c10828a.f34792k = str2;
        c10828a.f34793l = i2;
        c10828a.f34794m = list;
        c10828a.f34795n = drmInitData;
        c10828a.f34797p = i3;
        c10828a.f34798q = i4;
        c10828a.f34799r = f;
        c10828a.f34800s = i5;
        c10828a.f34801t = f2;
        c10828a.f34802u = bArr;
        c10828a.f34803v = i6;
        c10828a.f34804w = colorInfo;
        return c10828a.m22321a();
    }

    @Deprecated
    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, DrmInitData drmInitData) {
        C10828a c10828a = new C10828a();
        c10828a.f34782a = str;
        c10828a.f34787f = i;
        c10828a.f34788g = i;
        c10828a.f34789h = str3;
        c10828a.f34792k = str2;
        c10828a.f34793l = i2;
        c10828a.f34794m = list;
        c10828a.f34795n = drmInitData;
        c10828a.f34797p = i3;
        c10828a.f34798q = i4;
        c10828a.f34799r = f;
        return c10828a.m22321a();
    }

    public static String toLogString(Format format) {
        if (format == null) {
            return JsonReaderKt.NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(format.f34777id);
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
        if (format.width != -1 && format.height != -1) {
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

    public final C10828a buildUpon() {
        return new C10828a();
    }

    @Deprecated
    public final Format copyWithBitrate(int i) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34787f = i;
        buildUpon.f34788g = i;
        return buildUpon.m22321a();
    }

    @Deprecated
    public final Format copyWithDrmInitData(DrmInitData drmInitData) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34795n = drmInitData;
        return buildUpon.m22321a();
    }

    public final Format copyWithExoMediaCryptoType(Class<? extends AbstractC10963h> cls) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34781D = cls;
        return buildUpon.m22321a();
    }

    @Deprecated
    public final Format copyWithFrameRate(float f) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34799r = f;
        return buildUpon.m22321a();
    }

    @Deprecated
    public final Format copyWithGaplessInfo(int i, int i2) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34778A = i;
        buildUpon.f34779B = i2;
        return buildUpon.m22321a();
    }

    @Deprecated
    public final Format copyWithLabel(String str) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34783b = str;
        return buildUpon.m22321a();
    }

    @Deprecated
    public final Format copyWithManifestFormatInfo(Format format) {
        return withManifestFormatInfo(format);
    }

    @Deprecated
    public final Format copyWithMaxInputSize(int i) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34793l = i;
        return buildUpon.m22321a();
    }

    @Deprecated
    public final Format copyWithMetadata(Metadata metadata) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34790i = metadata;
        return buildUpon.m22321a();
    }

    @Deprecated
    public final Format copyWithSubsampleOffsetUs(long j) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34796o = j;
        return buildUpon.m22321a();
    }

    @Deprecated
    public final Format copyWithVideoSize(int i, int i2) {
        C10828a buildUpon = buildUpon();
        buildUpon.f34797p = i;
        buildUpon.f34798q = i2;
        return buildUpon.m22321a();
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
        return (i2 == 0 || (i = format.hashCode) == 0 || i2 == i) && this.selectionFlags == format.selectionFlags && this.roleFlags == format.roleFlags && this.averageBitrate == format.averageBitrate && this.peakBitrate == format.peakBitrate && this.maxInputSize == format.maxInputSize && this.subsampleOffsetUs == format.subsampleOffsetUs && this.width == format.width && this.height == format.height && this.rotationDegrees == format.rotationDegrees && this.stereoMode == format.stereoMode && this.channelCount == format.channelCount && this.sampleRate == format.sampleRate && this.pcmEncoding == format.pcmEncoding && this.encoderDelay == format.encoderDelay && this.encoderPadding == format.encoderPadding && this.accessibilityChannel == format.accessibilityChannel && Float.compare(this.frameRate, format.frameRate) == 0 && Float.compare(this.pixelWidthHeightRatio, format.pixelWidthHeightRatio) == 0 && C11599af.m19973a(this.exoMediaCryptoType, format.exoMediaCryptoType) && C11599af.m19973a((Object) this.f34777id, (Object) format.f34777id) && C11599af.m19973a((Object) this.label, (Object) format.label) && C11599af.m19973a((Object) this.codecs, (Object) format.codecs) && C11599af.m19973a((Object) this.containerMimeType, (Object) format.containerMimeType) && C11599af.m19973a((Object) this.sampleMimeType, (Object) format.sampleMimeType) && C11599af.m19973a((Object) this.language, (Object) format.language) && Arrays.equals(this.projectionData, format.projectionData) && C11599af.m19973a(this.metadata, format.metadata) && C11599af.m19973a(this.colorInfo, format.colorInfo) && C11599af.m19973a(this.drmInitData, format.drmInitData) && initializationDataEquals(format);
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
            String str = this.f34777id;
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
            Class<? extends AbstractC10963h> cls = this.exoMediaCryptoType;
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
        return "Format(" + this.f34777id + ", " + this.label + ", " + this.containerMimeType + ", " + this.sampleMimeType + ", " + this.codecs + ", " + this.bitrate + ", " + this.language + ", [" + this.width + ", " + this.height + ", " + this.frameRate + "], [" + this.channelCount + ", " + this.sampleRate + "])";
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (r0 == 1) goto L13;
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
        parcel.writeString(this.f34777id);
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
        C11599af.m19981a(parcel, z);
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
