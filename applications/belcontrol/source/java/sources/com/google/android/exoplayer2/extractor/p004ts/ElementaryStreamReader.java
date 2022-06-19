package com.google.android.exoplayer2.extractor.p004ts;

import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.p004ts.TsPayloadReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
/* renamed from: com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/ElementaryStreamReader.class */
public interface ElementaryStreamReader {
    void consume(ParsableByteArray parsableByteArray);

    void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator);

    void packetFinished();

    void packetStarted(long j, boolean z);

    void seek();
}
