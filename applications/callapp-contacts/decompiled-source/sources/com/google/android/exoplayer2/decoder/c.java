package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.decoder.DecoderException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/c.class */
public interface c<I, O, E extends DecoderException> {
    I a() throws DecoderException;

    void a(I i) throws DecoderException;

    O b() throws DecoderException;

    void c();

    void d();
}
