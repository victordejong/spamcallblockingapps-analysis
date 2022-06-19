package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.decoder.AbstractC10936f;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.video.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/g.class */
public final class C11656g extends AbstractC10936f {

    /* renamed from: d */
    public int f38879d;

    /* renamed from: e */
    public int f38880e;

    /* renamed from: f */
    public ByteBuffer[] f38881f;

    /* renamed from: g */
    public int[] f38882g;

    /* renamed from: h */
    public int f38883h;

    /* renamed from: i */
    private final AbstractC10936f.AbstractC10937a<C11656g> f38884i;

    public C11656g(AbstractC10936f.AbstractC10937a<C11656g> abstractC10937a) {
        this.f38884i = abstractC10937a;
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10936f
    /* renamed from: f */
    public final void mo19678f() {
        this.f38884i.releaseOutputBuffer(this);
    }
}
