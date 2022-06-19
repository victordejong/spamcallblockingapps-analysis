package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.SeekMap;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ogg/OggSeeker.class */
public interface OggSeeker {
    SeekMap createSeekMap();

    long read(ExtractorInput extractorInput);

    long startSeek(long j);
}
