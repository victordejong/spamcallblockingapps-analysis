package androidx.media2.exoplayer.external;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.drm.AbstractC1471m;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2012m;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Format.class */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new Parcelable.Creator<Format>() { // from class: androidx.media2.exoplayer.external.Format.1
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
    public final int bitrate;
    public final int channelCount;
    public final String codecs;
    public final ColorInfo colorInfo;
    public final String containerMimeType;
    public final DrmInitData drmInitData;
    public final int encoderDelay;
    public final int encoderPadding;
    public final Class<? extends AbstractC1471m> exoMediaCryptoType;
    public final float frameRate;
    private int hashCode;
    public final int height;

    /* renamed from: id */
    public final String f5072id;
    public final List<byte[]> initializationData;
    public final String label;
    public final String language;
    public final int maxInputSize;
    public final Metadata metadata;
    public final int pcmEncoding;
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

    Format(Parcel parcel) {
        this.f5072id = parcel.readString();
        this.label = parcel.readString();
        this.selectionFlags = parcel.readInt();
        this.roleFlags = parcel.readInt();
        this.bitrate = parcel.readInt();
        this.codecs = parcel.readString();
        this.metadata = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.containerMimeType = parcel.readString();
        this.sampleMimeType = parcel.readString();
        this.maxInputSize = parcel.readInt();
        int readInt = parcel.readInt();
        this.initializationData = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.initializationData.add(parcel.createByteArray());
        }
        this.drmInitData = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.subsampleOffsetUs = parcel.readLong();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.frameRate = parcel.readFloat();
        this.rotationDegrees = parcel.readInt();
        this.pixelWidthHeightRatio = parcel.readFloat();
        this.projectionData = C1996ac.m41664a(parcel) ? parcel.createByteArray() : null;
        this.stereoMode = parcel.readInt();
        this.colorInfo = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.channelCount = parcel.readInt();
        this.sampleRate = parcel.readInt();
        this.pcmEncoding = parcel.readInt();
        this.encoderDelay = parcel.readInt();
        this.encoderPadding = parcel.readInt();
        this.language = parcel.readString();
        this.accessibilityChannel = parcel.readInt();
        this.exoMediaCryptoType = null;
    }

    Format(String str, String str2, int i, int i2, int i3, String str3, Metadata metadata, String str4, String str5, int i4, List<byte[]> list, DrmInitData drmInitData, long j, int i5, int i6, float f, int i7, float f2, byte[] bArr, int i8, ColorInfo colorInfo, int i9, int i10, int i11, int i12, int i13, String str6, int i14, Class<? extends AbstractC1471m> cls) {
        this.f5072id = str;
        this.label = str2;
        this.selectionFlags = i;
        this.roleFlags = i2;
        this.bitrate = i3;
        this.codecs = str3;
        this.metadata = metadata;
        this.containerMimeType = str4;
        this.sampleMimeType = str5;
        this.maxInputSize = i4;
        this.initializationData = list == null ? Collections.emptyList() : list;
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = j;
        this.width = i5;
        this.height = i6;
        this.frameRate = f;
        this.rotationDegrees = i7 == -1 ? 0 : i7;
        this.pixelWidthHeightRatio = f2 == -1.0f ? 1.0f : f2;
        this.projectionData = bArr;
        this.stereoMode = i8;
        this.colorInfo = colorInfo;
        this.channelCount = i9;
        this.sampleRate = i10;
        this.pcmEncoding = i11;
        this.encoderDelay = i12 == -1 ? 0 : i12;
        this.encoderPadding = i13 == -1 ? 0 : i13;
        this.language = C1996ac.m41631b(str6);
        this.accessibilityChannel = i14;
        this.exoMediaCryptoType = cls;
    }

    @Deprecated
    public static Format createAudioContainerFormat(String str, String str2, String str3, String str4, int i, int i2, int i3, List<byte[]> list, int i4, String str5) {
        return createAudioContainerFormat(str, null, str2, str3, str4, null, i, i2, i3, list, i4, 0, str5);
    }

    public static Format createAudioContainerFormat(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, List<byte[]> list, int i4, int i5, String str6) {
        return new Format(str, str2, i4, i5, i, str5, metadata, str3, str4, -1, list, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, -1, -1, -1, str6, -1, null);
    }

    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        return new Format(str, null, i8, 0, i, str3, metadata, null, str2, i2, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, i6, i7, str4, -1, null);
    }

    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return createAudioSampleFormat(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, drmInitData, i6, str4, null);
    }

    public static Format createAudioSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        return createAudioSampleFormat(str, str2, str3, i, i2, i3, i4, -1, list, drmInitData, i5, str4);
    }

    @Deprecated
    public static Format createContainerFormat(String str, String str2, String str3, String str4, int i, int i2, String str5) {
        return createContainerFormat(str, null, str2, str3, str4, i, i2, 0, str5);
    }

    public static Format createContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, -1, null);
    }

    public static Format createImageSampleFormat(String str, String str2, String str3, int i, int i2, List<byte[]> list, String str4, DrmInitData drmInitData) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1, null);
    }

    public static Format createSampleFormat(String str, String str2, long j) {
        return new Format(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    public static Format createSampleFormat(String str, String str2, String str3, int i, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, -1, null, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    public static Format createTextContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        return createTextContainerFormat(str, str2, str3, str4, str5, i, i2, i3, str6, -1);
    }

    public static Format createTextContainerFormat(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6, int i4) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, i4, null);
    }

    public static Format createTextSampleFormat(String str, String str2, int i, String str3) {
        return createTextSampleFormat(str, str2, i, str3, null);
    }

    public static Format createTextSampleFormat(String str, String str2, int i, String str3, DrmInitData drmInitData) {
        return createTextSampleFormat(str, str2, null, -1, i, str3, -1, drmInitData, Long.MAX_VALUE, Collections.emptyList());
    }

    public static Format createTextSampleFormat(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData) {
        return createTextSampleFormat(str, str2, str3, i, i2, str4, i3, drmInitData, Long.MAX_VALUE, Collections.emptyList());
    }

    public static Format createTextSampleFormat(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData, long j, List<byte[]> list) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i3, null);
    }

    public static Format createTextSampleFormat(String str, String str2, String str3, int i, int i2, String str4, DrmInitData drmInitData, long j) {
        return createTextSampleFormat(str, str2, str3, i, i2, str4, -1, drmInitData, j, Collections.emptyList());
    }

    @Deprecated
    public static Format createVideoContainerFormat(String str, String str2, String str3, String str4, int i, int i2, int i3, float f, List<byte[]> list, int i4) {
        return createVideoContainerFormat(str, null, str2, str3, str4, null, i, i2, i3, f, list, i4, 0);
    }

    public static Format createVideoContainerFormat(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, float f, List<byte[]> list, int i4, int i5) {
        return new Format(str, str2, i4, i5, i, str5, metadata, str3, str4, -1, list, null, Long.MAX_VALUE, i2, i3, f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        return createVideoSampleFormat(str, str2, str3, i, i2, i3, i4, f, list, i5, f2, null, -1, null, drmInitData);
    }

    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, i2, list, drmInitData, Long.MAX_VALUE, i3, i4, f, i5, f2, bArr, i6, colorInfo, -1, -1, -1, -1, -1, null, -1, null);
    }

    public static Format createVideoSampleFormat(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, DrmInitData drmInitData) {
        return createVideoSampleFormat(str, str2, str3, i, i2, i3, i4, f, list, -1, -1.0f, drmInitData);
    }

    public static String toLogString(Format format) {
        if (format == null) {
            return JsonReaderKt.NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(format.f5072id);
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

    public final Format copyWithAdjustments(DrmInitData drmInitData, Metadata metadata) {
        return (drmInitData == this.drmInitData && metadata == this.metadata) ? this : new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, this.bitrate, this.codecs, metadata, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, drmInitData, this.subsampleOffsetUs, this.width, this.height, this.frameRate, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.language, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithBitrate(int i) {
        return new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, i, this.codecs, this.metadata, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, this.drmInitData, this.subsampleOffsetUs, this.width, this.height, this.frameRate, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.language, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithContainerInfo(String str, String str2, String str3, String str4, Metadata metadata, int i, int i2, int i3, int i4, int i5, String str5) {
        Metadata metadata2 = this.metadata;
        if (metadata2 != null) {
            metadata = metadata2.copyWithAppendedEntriesFrom(metadata);
        }
        return new Format(str, str2, i5, this.roleFlags, i, str4, metadata, this.containerMimeType, str3, this.maxInputSize, this.initializationData, this.drmInitData, this.subsampleOffsetUs, i2, i3, this.frameRate, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, i4, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, str5, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithDrmInitData(DrmInitData drmInitData) {
        return copyWithAdjustments(drmInitData, this.metadata);
    }

    public final Format copyWithExoMediaCryptoType(Class<? extends AbstractC1471m> cls) {
        return new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, this.bitrate, this.codecs, this.metadata, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, this.drmInitData, this.subsampleOffsetUs, this.width, this.height, this.frameRate, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.language, this.accessibilityChannel, cls);
    }

    public final Format copyWithFrameRate(float f) {
        return new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, this.bitrate, this.codecs, this.metadata, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, this.drmInitData, this.subsampleOffsetUs, this.width, this.height, f, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.language, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithGaplessInfo(int i, int i2) {
        return new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, this.bitrate, this.codecs, this.metadata, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, this.drmInitData, this.subsampleOffsetUs, this.width, this.height, this.frameRate, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, i, i2, this.language, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithManifestFormatInfo(Format format) {
        String str;
        if (this == format) {
            return this;
        }
        int m41568g = C2012m.m41568g(this.sampleMimeType);
        String str2 = format.f5072id;
        String str3 = format.label;
        if (str3 == null) {
            str3 = this.label;
        }
        String str4 = this.language;
        if ((m41568g == 3 || m41568g == 1) && (str = format.language) != null) {
            str4 = str;
        }
        int i = this.bitrate;
        int i2 = i;
        if (i == -1) {
            i2 = format.bitrate;
        }
        String str5 = this.codecs;
        if (str5 == null) {
            String m41656a = C1996ac.m41656a(format.codecs, m41568g);
            if (C1996ac.m41614h(m41656a).length == 1) {
                str5 = m41656a;
            }
        }
        Metadata metadata = this.metadata;
        Metadata copyWithAppendedEntriesFrom = metadata == null ? format.metadata : metadata.copyWithAppendedEntriesFrom(format.metadata);
        float f = this.frameRate;
        if (f == -1.0f && m41568g == 2) {
            f = format.frameRate;
        }
        return new Format(str2, str3, this.selectionFlags | format.selectionFlags, this.roleFlags | format.roleFlags, i2, str5, copyWithAppendedEntriesFrom, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, DrmInitData.createSessionCreationData(format.drmInitData, this.drmInitData), this.subsampleOffsetUs, this.width, this.height, f, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, str4, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithMaxInputSize(int i) {
        return new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, this.bitrate, this.codecs, this.metadata, this.containerMimeType, this.sampleMimeType, i, this.initializationData, this.drmInitData, this.subsampleOffsetUs, this.width, this.height, this.frameRate, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.language, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithMetadata(Metadata metadata) {
        return copyWithAdjustments(this.drmInitData, metadata);
    }

    public final Format copyWithRotationDegrees(int i) {
        return new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, this.bitrate, this.codecs, this.metadata, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, this.drmInitData, this.subsampleOffsetUs, this.width, this.height, this.frameRate, i, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.language, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithSubsampleOffsetUs(long j) {
        return new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, this.bitrate, this.codecs, this.metadata, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, this.drmInitData, j, this.width, this.height, this.frameRate, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.language, this.accessibilityChannel, this.exoMediaCryptoType);
    }

    public final Format copyWithVideoSize(int i, int i2) {
        return new Format(this.f5072id, this.label, this.selectionFlags, this.roleFlags, this.bitrate, this.codecs, this.metadata, this.containerMimeType, this.sampleMimeType, this.maxInputSize, this.initializationData, this.drmInitData, this.subsampleOffsetUs, i, i2, this.frameRate, this.rotationDegrees, this.pixelWidthHeightRatio, this.projectionData, this.stereoMode, this.colorInfo, this.channelCount, this.sampleRate, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.language, this.accessibilityChannel, this.exoMediaCryptoType);
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
        return (i2 == 0 || (i = format.hashCode) == 0 || i2 == i) && this.selectionFlags == format.selectionFlags && this.roleFlags == format.roleFlags && this.bitrate == format.bitrate && this.maxInputSize == format.maxInputSize && this.subsampleOffsetUs == format.subsampleOffsetUs && this.width == format.width && this.height == format.height && this.rotationDegrees == format.rotationDegrees && this.stereoMode == format.stereoMode && this.channelCount == format.channelCount && this.sampleRate == format.sampleRate && this.pcmEncoding == format.pcmEncoding && this.encoderDelay == format.encoderDelay && this.encoderPadding == format.encoderPadding && this.accessibilityChannel == format.accessibilityChannel && Float.compare(this.frameRate, format.frameRate) == 0 && Float.compare(this.pixelWidthHeightRatio, format.pixelWidthHeightRatio) == 0 && C1996ac.m41658a(this.exoMediaCryptoType, format.exoMediaCryptoType) && C1996ac.m41658a((Object) this.f5072id, (Object) format.f5072id) && C1996ac.m41658a((Object) this.label, (Object) format.label) && C1996ac.m41658a((Object) this.codecs, (Object) format.codecs) && C1996ac.m41658a((Object) this.containerMimeType, (Object) format.containerMimeType) && C1996ac.m41658a((Object) this.sampleMimeType, (Object) format.sampleMimeType) && C1996ac.m41658a((Object) this.language, (Object) format.language) && Arrays.equals(this.projectionData, format.projectionData) && C1996ac.m41658a(this.metadata, format.metadata) && C1996ac.m41658a(this.colorInfo, format.colorInfo) && C1996ac.m41658a(this.drmInitData, format.drmInitData) && initializationDataEquals(format);
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
            String str = this.f5072id;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.label;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.selectionFlags;
            int i3 = this.roleFlags;
            int i4 = this.bitrate;
            String str3 = this.codecs;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            Metadata metadata = this.metadata;
            int hashCode4 = metadata == null ? 0 : metadata.hashCode();
            String str4 = this.containerMimeType;
            int hashCode5 = str4 == null ? 0 : str4.hashCode();
            String str5 = this.sampleMimeType;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            int i5 = this.maxInputSize;
            int i6 = (int) this.subsampleOffsetUs;
            int i7 = this.width;
            int i8 = this.height;
            int floatToIntBits = Float.floatToIntBits(this.frameRate);
            int i9 = this.rotationDegrees;
            int floatToIntBits2 = Float.floatToIntBits(this.pixelWidthHeightRatio);
            int i10 = this.stereoMode;
            int i11 = this.channelCount;
            int i12 = this.sampleRate;
            int i13 = this.pcmEncoding;
            int i14 = this.encoderDelay;
            int i15 = this.encoderPadding;
            String str6 = this.language;
            int hashCode7 = str6 == null ? 0 : str6.hashCode();
            int i16 = this.accessibilityChannel;
            Class<? extends AbstractC1471m> cls = this.exoMediaCryptoType;
            if (cls != null) {
                i = cls.hashCode();
            }
            this.hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + floatToIntBits) * 31) + i9) * 31) + floatToIntBits2) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + hashCode7) * 31) + i16) * 31) + i;
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
        String str = this.f5072id;
        String str2 = this.label;
        String str3 = this.containerMimeType;
        String str4 = this.sampleMimeType;
        String str5 = this.codecs;
        int i = this.bitrate;
        String str6 = this.language;
        int i2 = this.width;
        int i3 = this.height;
        float f = this.frameRate;
        int i4 = this.channelCount;
        int i5 = this.sampleRate;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str4);
        sb.append(", ");
        sb.append(str5);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str6);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append("], [");
        sb.append(i4);
        sb.append(", ");
        sb.append(i5);
        sb.append("])");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5072id);
        parcel.writeString(this.label);
        parcel.writeInt(this.selectionFlags);
        parcel.writeInt(this.roleFlags);
        parcel.writeInt(this.bitrate);
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
        C1996ac.m41663a(parcel, z);
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
        parcel.writeString(this.language);
        parcel.writeInt(this.accessibilityChannel);
    }
}
