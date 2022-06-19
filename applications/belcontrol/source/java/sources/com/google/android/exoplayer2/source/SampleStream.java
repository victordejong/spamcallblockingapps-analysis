package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/SampleStream.class */
public interface SampleStream {
    boolean isReady();

    void maybeThrowError();

    int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z);

    int skipData(long j);
}
