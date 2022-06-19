package com.google.android.exoplayer2.extractor.p004ts;

import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.p004ts.TsPayloadReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
/* renamed from: com.google.android.exoplayer2.extractor.ts.SectionPayloadReader */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/SectionPayloadReader.class */
public interface SectionPayloadReader {
    void consume(ParsableByteArray parsableByteArray);

    void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator);
}
