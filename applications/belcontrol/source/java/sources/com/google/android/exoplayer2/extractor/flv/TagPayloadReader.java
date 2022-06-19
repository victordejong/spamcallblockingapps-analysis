package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.ParsableByteArray;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader.class */
public abstract class TagPayloadReader {
    public final TrackOutput output;

    public TagPayloadReader(TrackOutput trackOutput) {
        this.output = trackOutput;
    }

    public final void consume(ParsableByteArray parsableByteArray, long j) {
        if (parseHeader(parsableByteArray)) {
            parsePayload(parsableByteArray, j);
        }
    }

    public abstract boolean parseHeader(ParsableByteArray parsableByteArray);

    public abstract void parsePayload(ParsableByteArray parsableByteArray, long j);

    public abstract void seek();
}
