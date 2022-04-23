package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.decoder.b;
import com.google.android.exoplayer2.mediacodec.f;
import com.google.android.exoplayer2.util.af;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/j.class */
public final class j implements f {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f21433a;

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer[] f21434b;

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f21435c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/j$a.class */
    public static final class a implements f.a {
        @Override // com.google.android.exoplayer2.mediacodec.f.a
        public final f b(MediaCodec mediaCodec) {
            return new j(mediaCodec);
        }
    }

    private j(MediaCodec mediaCodec) {
        this.f21433a = mediaCodec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(f.b bVar, MediaCodec mediaCodec, long j, long j2) {
        bVar.a(j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final int a(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f21433a.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer == -3 && af.f22275a < 21) {
                this.f21435c = this.f21433a.getOutputBuffers();
            }
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final ByteBuffer a(int i) {
        return af.f22275a >= 21 ? this.f21433a.getInputBuffer(i) : ((ByteBuffer[]) af.a(this.f21434b))[i];
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a() {
        this.f21433a.start();
        if (af.f22275a < 21) {
            this.f21434b = this.f21433a.getInputBuffers();
            this.f21435c = this.f21433a.getOutputBuffers();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(int i, int i2, long j, int i3) {
        this.f21433a.queueInputBuffer(i, 0, i2, j, i3);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(int i, long j) {
        this.f21433a.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(int i, b bVar, long j) {
        this.f21433a.queueSecureInputBuffer(i, 0, bVar.i, j, 0);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(int i, boolean z) {
        this.f21433a.releaseOutputBuffer(i, z);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto) {
        this.f21433a.configure(mediaFormat, surface, mediaCrypto, 0);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(Bundle bundle) {
        this.f21433a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(Surface surface) {
        this.f21433a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(final f.b bVar, Handler handler) {
        this.f21433a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$j$jiVH4GxxEL_IJCS_k_ncHqSFCZQ
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                j.this.a(bVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final int b() {
        return this.f21433a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final ByteBuffer b(int i) {
        return af.f22275a >= 21 ? this.f21433a.getOutputBuffer(i) : ((ByteBuffer[]) af.a(this.f21435c))[i];
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final MediaFormat c() {
        return this.f21433a.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void c(int i) {
        this.f21433a.setVideoScalingMode(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void d() {
        this.f21433a.flush();
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void e() {
        this.f21434b = null;
        this.f21435c = null;
        this.f21433a.release();
    }
}
