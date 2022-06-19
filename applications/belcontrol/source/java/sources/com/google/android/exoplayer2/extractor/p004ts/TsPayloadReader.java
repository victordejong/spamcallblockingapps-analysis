package com.google.android.exoplayer2.extractor.p004ts;

import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.ts.TsPayloadReader */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/TsPayloadReader.class */
public interface TsPayloadReader {

    /* renamed from: com.google.android.exoplayer2.extractor.ts.TsPayloadReader$DvbSubtitleInfo */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo.class */
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

    /* renamed from: com.google.android.exoplayer2.extractor.ts.TsPayloadReader$EsInfo */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo.class */
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

    /* renamed from: com.google.android.exoplayer2.extractor.ts.TsPayloadReader$Factory */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory.class */
    public interface Factory {
        SparseArray<TsPayloadReader> createInitialPayloadReaders();

        TsPayloadReader createPayloadReader(int i, EsInfo esInfo);
    }

    /* renamed from: com.google.android.exoplayer2.extractor.ts.TsPayloadReader$TrackIdGenerator */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator.class */
    public static final class TrackIdGenerator {
        private static final int ID_UNSET = Integer.MIN_VALUE;
        private final int firstTrackId;
        private String formatId;
        private final String formatIdPrefix;
        private int trackId;
        private final int trackIdIncrement;

        public TrackIdGenerator(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public TrackIdGenerator(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = "";
            }
            this.formatIdPrefix = str;
            this.firstTrackId = i2;
            this.trackIdIncrement = i3;
            this.trackId = Integer.MIN_VALUE;
        }

        private void maybeThrowUninitializedError() {
            if (this.trackId != Integer.MIN_VALUE) {
                return;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public void generateNewId() {
            int i = this.trackId;
            this.trackId = i == Integer.MIN_VALUE ? this.firstTrackId : i + this.trackIdIncrement;
            this.formatId = this.formatIdPrefix + this.trackId;
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

    void consume(ParsableByteArray parsableByteArray, boolean z);

    void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TrackIdGenerator trackIdGenerator);

    void seek();
}
