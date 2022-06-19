package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.decoder.C10930b;
import com.google.android.exoplayer2.mediacodec.AbstractC11184f;
import com.google.android.exoplayer2.util.C11599af;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.mediacodec.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/j.class */
public final class C11190j implements AbstractC11184f {

    /* renamed from: a */
    private final MediaCodec f36748a;

    /* renamed from: b */
    private ByteBuffer[] f36749b;

    /* renamed from: c */
    private ByteBuffer[] f36750c;

    /* renamed from: com.google.android.exoplayer2.mediacodec.j$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/j$a.class */
    public static final class C11192a implements AbstractC11184f.AbstractC11185a {
        @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f.AbstractC11185a
        /* renamed from: b */
        public final AbstractC11184f mo21216b(MediaCodec mediaCodec) {
            return new C11190j(mediaCodec);
        }
    }

    private C11190j(MediaCodec mediaCodec) {
        this.f36748a = mediaCodec;
    }

    /* renamed from: a */
    public /* synthetic */ void m21224a(AbstractC11184f.AbstractC11186b abstractC11186b, MediaCodec mediaCodec, long j, long j2) {
        abstractC11186b.mo19680a(j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final int mo21228a(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f36748a.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer == -3 && C11599af.f38648a < 21) {
                this.f36750c = this.f36748a.getOutputBuffers();
            }
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final ByteBuffer mo21233a(int i) {
        return C11599af.f38648a >= 21 ? this.f36748a.getInputBuffer(i) : ((ByteBuffer[]) C11599af.m19974a(this.f36749b))[i];
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21234a() {
        this.f36748a.start();
        if (C11599af.f38648a < 21) {
            this.f36749b = this.f36748a.getInputBuffers();
            this.f36750c = this.f36748a.getOutputBuffers();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21232a(int i, int i2, long j, int i3) {
        this.f36748a.queueInputBuffer(i, 0, i2, j, i3);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21231a(int i, long j) {
        this.f36748a.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21230a(int i, C10930b c10930b, long j) {
        this.f36748a.queueSecureInputBuffer(i, 0, c10930b.f35353i, j, 0);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21229a(int i, boolean z) {
        this.f36748a.releaseOutputBuffer(i, z);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21227a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto) {
        this.f36748a.configure(mediaFormat, surface, mediaCrypto, 0);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21226a(Bundle bundle) {
        this.f36748a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21225a(Surface surface) {
        this.f36748a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21223a(final AbstractC11184f.AbstractC11186b abstractC11186b, Handler handler) {
        this.f36748a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$j$jiVH4GxxEL_IJCS_k_ncHqSFCZQ
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                C11190j.this.m21224a(abstractC11186b, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: b */
    public final int mo21222b() {
        return this.f36748a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: b */
    public final ByteBuffer mo21221b(int i) {
        return C11599af.f38648a >= 21 ? this.f36748a.getOutputBuffer(i) : ((ByteBuffer[]) C11599af.m19974a(this.f36750c))[i];
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: c */
    public final MediaFormat mo21220c() {
        return this.f36748a.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: c */
    public final void mo21219c(int i) {
        this.f36748a.setVideoScalingMode(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: d */
    public final void mo21218d() {
        this.f36748a.flush();
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: e */
    public final void mo21217e() {
        this.f36749b = null;
        this.f36750c = null;
        this.f36748a.release();
    }
}
