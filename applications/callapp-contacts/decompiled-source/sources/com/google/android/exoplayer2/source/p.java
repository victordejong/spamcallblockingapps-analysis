package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.ai;
import com.google.android.exoplayer2.source.ab;
import com.google.android.exoplayer2.trackselection.c;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/p.class */
public interface p extends ab {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/p$a.class */
    public interface a extends ab.a<p> {
        void a(p pVar);
    }

    void D_() throws IOException;

    long a(long j, ai aiVar);

    long a(c[] cVarArr, boolean[] zArr, aa[] aaVarArr, boolean[] zArr2, long j);

    @Override // com.google.android.exoplayer2.source.ab
    void a(long j);

    void a(long j, boolean z);

    void a(a aVar, long j);

    long b(long j);

    TrackGroupArray b();

    long c();

    @Override // com.google.android.exoplayer2.source.ab
    boolean c(long j);

    @Override // com.google.android.exoplayer2.source.ab
    long d();

    @Override // com.google.android.exoplayer2.source.ab
    long e();

    @Override // com.google.android.exoplayer2.source.ab
    boolean f();
}
