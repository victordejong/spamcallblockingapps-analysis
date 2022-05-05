package androidx.media2.exoplayer.external.extractor.p007ts;

import android.util.SparseArray;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.text.cea.Cea708InitializationData;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.DefaultTsPayloadReaderFactory */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory.class */
public final class DefaultTsPayloadReaderFactory implements TsPayloadReader.Factory {
    public static final int DESCRIPTOR_TAG_CAPTION_SERVICE = 134;
    public static final int FLAG_ALLOW_NON_IDR_KEYFRAMES = 1;
    public static final int FLAG_DETECT_ACCESS_UNITS = 8;
    public static final int FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS = 64;
    public static final int FLAG_IGNORE_AAC_STREAM = 2;
    public static final int FLAG_IGNORE_H264_STREAM = 4;
    public static final int FLAG_IGNORE_SPLICE_INFO_STREAM = 16;
    public static final int FLAG_OVERRIDE_CAPTION_DESCRIPTORS = 32;
    public final List<Format> closedCaptionFormats;
    public final int flags;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.DefaultTsPayloadReaderFactory$Flags */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory$Flags.class */
    public @interface Flags {
    }

    public DefaultTsPayloadReaderFactory() {
        this(0);
    }

    public DefaultTsPayloadReaderFactory(int i) {
        this(i, Collections.singletonList(Format.createTextSampleFormat(null, MimeTypes.APPLICATION_CEA608, 0, null)));
    }

    public DefaultTsPayloadReaderFactory(int i, List<Format> list) {
        this.flags = i;
        this.closedCaptionFormats = list;
    }

    private SeiReader buildSeiReader(TsPayloadReader.EsInfo esInfo) {
        return new SeiReader(getClosedCaptionFormats(esInfo));
    }

    private UserDataReader buildUserDataReader(TsPayloadReader.EsInfo esInfo) {
        return new UserDataReader(getClosedCaptionFormats(esInfo));
    }

    private List<Format> getClosedCaptionFormats(TsPayloadReader.EsInfo esInfo) {
        int i;
        String str;
        List<byte[]> list;
        if (isSet(32)) {
            return this.closedCaptionFormats;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(esInfo.descriptorBytes);
        List<Format> list2 = this.closedCaptionFormats;
        while (parsableByteArray.bytesLeft() > 0) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            if (readUnsignedByte == 134) {
                ArrayList arrayList = new ArrayList();
                int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                int i2 = 0;
                while (true) {
                    list2 = arrayList;
                    if (i2 < (readUnsignedByte3 & 31)) {
                        String readString = parsableByteArray.readString(3);
                        int readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                        boolean z = true;
                        boolean z2 = (readUnsignedByte4 & 128) != 0;
                        if (z2) {
                            i = readUnsignedByte4 & 63;
                            str = MimeTypes.APPLICATION_CEA708;
                        } else {
                            str = MimeTypes.APPLICATION_CEA608;
                            i = 1;
                        }
                        byte readUnsignedByte5 = (byte) parsableByteArray.readUnsignedByte();
                        parsableByteArray.skipBytes(1);
                        if (z2) {
                            if ((readUnsignedByte5 & 64) == 0) {
                                z = false;
                            }
                            list = Cea708InitializationData.buildData(z);
                        } else {
                            list = null;
                        }
                        arrayList.add(Format.createTextSampleFormat(null, str, null, -1, 0, readString, i, null, Long.MAX_VALUE, list));
                        i2++;
                    }
                }
            }
            parsableByteArray.setPosition(position + readUnsignedByte2);
        }
        return list2;
    }

    private boolean isSet(int i) {
        return (i & this.flags) != 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader.Factory
    public SparseArray<TsPayloadReader> createInitialPayloadReaders() {
        return new SparseArray<>();
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader.Factory
    public TsPayloadReader createPayloadReader(int i, TsPayloadReader.EsInfo esInfo) {
        if (i == 2) {
            return new PesReader(new H262Reader(buildUserDataReader(esInfo)));
        }
        if (i == 3 || i == 4) {
            return new PesReader(new MpegAudioReader(esInfo.language));
        }
        PesReader pesReader = null;
        PesReader pesReader2 = null;
        PesReader pesReader3 = null;
        SectionReader sectionReader = null;
        if (i == 15) {
            if (!isSet(2)) {
                pesReader3 = new PesReader(new AdtsReader(false, esInfo.language));
            }
            return pesReader3;
        } else if (i == 17) {
            if (!isSet(2)) {
                pesReader2 = new PesReader(new LatmReader(esInfo.language));
            }
            return pesReader2;
        } else if (i == 21) {
            return new PesReader(new Id3Reader());
        } else {
            if (i == 27) {
                if (!isSet(4)) {
                    pesReader = new PesReader(new H264Reader(buildSeiReader(esInfo), isSet(1), isSet(8)));
                }
                return pesReader;
            } else if (i == 36) {
                return new PesReader(new H265Reader(buildSeiReader(esInfo)));
            } else {
                if (i == 89) {
                    return new PesReader(new DvbSubtitleReader(esInfo.dvbSubtitleInfos));
                }
                if (i != 138) {
                    if (i == 172) {
                        return new PesReader(new Ac4Reader(esInfo.language));
                    }
                    if (i != 129) {
                        if (i != 130) {
                            if (i == 134) {
                                if (!isSet(16)) {
                                    sectionReader = new SectionReader(new SpliceInfoSectionReader());
                                }
                                return sectionReader;
                            } else if (i != 135) {
                                return null;
                            }
                        } else if (!isSet(64)) {
                            return null;
                        }
                    }
                    return new PesReader(new Ac3Reader(esInfo.language));
                }
                return new PesReader(new DtsReader(esInfo.language));
            }
        }
    }
}
