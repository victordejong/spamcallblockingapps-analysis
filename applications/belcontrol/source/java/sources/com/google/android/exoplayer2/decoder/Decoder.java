package com.google.android.exoplayer2.decoder;

import java.lang.Exception;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/decoder/Decoder.class */
public interface Decoder<I, O, E extends Exception> {
    I dequeueInputBuffer();

    O dequeueOutputBuffer();

    void flush();

    String getName();

    void queueInputBuffer(I i);

    void release();
}
