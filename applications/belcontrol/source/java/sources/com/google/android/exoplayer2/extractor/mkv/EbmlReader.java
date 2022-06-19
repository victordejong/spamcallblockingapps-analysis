package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.ExtractorInput;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mkv/EbmlReader.class */
public interface EbmlReader {
    void init(EbmlReaderOutput ebmlReaderOutput);

    boolean read(ExtractorInput extractorInput);

    void reset();
}
