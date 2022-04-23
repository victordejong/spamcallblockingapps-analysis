package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.q;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/aa.class */
public interface aa {
    int a(long j);

    int a(q qVar, DecoderInputBuffer decoderInputBuffer, boolean z);

    boolean a();

    void b() throws IOException;
}
