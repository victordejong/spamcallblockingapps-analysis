package androidx.media2.exoplayer.external.extractor.p007ts;

import android.util.SparseArray;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsPayloadReader */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsPayloadReader.class */
public interface TsPayloadReader {
    public static final int FLAG_DATA_ALIGNMENT_INDICATOR = 4;
    public static final int FLAG_PAYLOAD_UNIT_START_INDICATOR = 1;
    public static final int FLAG_RANDOM_ACCESS_INDICATOR = 2;

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsPayloadReader$DvbSubtitleInfo */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo.class */
    public static final class DvbSubtitleInfo {
        public final byte[] initializationData;
        public final String language;
        public final int type;

        public DvbSubtitleInfo(String str, int i, byte[] bArr) {
            this.language = str;
            this.type = i;
            this.initializationData = bArr;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsPayloadReader$EsInfo */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo.class */
    public static final class EsInfo {
        public final byte[] descriptorBytes;
        public final List<DvbSubtitleInfo> dvbSubtitleInfos;
        public final String language;
        public final int streamType;

        public EsInfo(int i, String str, List<DvbSubtitleInfo> list, byte[] bArr) {
            this.streamType = i;
            this.language = str;
            this.dvbSubtitleInfos = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.descriptorBytes = bArr;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsPayloadReader$Factory */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory.class */
    public interface Factory {
        SparseArray<TsPayloadReader> createInitialPayloadReaders();

        TsPayloadReader createPayloadReader(int i, EsInfo esInfo);
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsPayloadReader$Flags */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Flags.class */
    public @interface Flags {
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsPayloadReader$TrackIdGenerator */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator.class */
    public static final class TrackIdGenerator {
        public static final int ID_UNSET = Integer.MIN_VALUE;
        public final int firstTrackId;
        public String formatId;
        public final String formatIdPrefix;
        public int trackId;
        public final int trackIdIncrement;

        public TrackIdGenerator(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public TrackIdGenerator(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(12);
                sb.append(i);
                sb.append("/");
                str = sb.toString();
            } else {
                str = "";
            }
            this.formatIdPrefix = str;
            this.firstTrackId = i2;
            this.trackIdIncrement = i3;
            this.trackId = Integer.MIN_VALUE;
        }

        private void maybeThrowUninitializedError() {
            if (this.trackId == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void generateNewId() {
            int i = this.trackId;
            this.trackId = i == Integer.MIN_VALUE ? this.firstTrackId : i + this.trackIdIncrement;
            String str = this.formatIdPrefix;
            int i2 = this.trackId;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11);
            sb.append(str);
            sb.append(i2);
            this.formatId = sb.toString();
        }

        public String getFormatId() {
            maybeThrowUninitializedError();
            return this.formatId;
        }

        public int getTrackId() {
            maybeThrowUninitializedError();
            return this.trackId;
        }
    }

    void consume(ParsableByteArray parsableByteArray, int i) throws ParserException;

    void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TrackIdGenerator trackIdGenerator);

    void seek();
}
