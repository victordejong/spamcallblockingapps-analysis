package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.decoder.f;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/g.class */
public final class g extends f {

    /* renamed from: d  reason: collision with root package name */
    public int f22410d;
    public int e;
    public ByteBuffer[] f;
    public int[] g;
    public int h;
    private final f.a<g> i;

    public g(f.a<g> aVar) {
        this.i = aVar;
    }

    @Override // com.google.android.exoplayer2.decoder.f
    public final void f() {
        this.i.releaseOutputBuffer(this);
    }
}
