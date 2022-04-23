package com.linkedin.android.litr.b;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.h.a;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/d.class */
public final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f33669a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33670b;

    /* renamed from: c  reason: collision with root package name */
    private MediaCodec f33671c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33672d;
    private boolean e;
    private final MediaCodec.BufferInfo f;

    public d() {
        this(true);
    }

    public d(boolean z) {
        this(z, false);
    }

    public d(boolean z, boolean z2) {
        this.f = new MediaCodec.BufferInfo();
        this.f33669a = z;
        this.f33670b = z2;
    }

    @Override // com.linkedin.android.litr.b.a
    public final c a(int i) {
        if (i < 0) {
            return null;
        }
        return new c(i, Build.VERSION.SDK_INT >= 21 ? this.f33671c.getInputBuffer(i) : this.f33671c.getInputBuffers()[i], null);
    }

    @Override // com.linkedin.android.litr.b.a
    public final void a() throws TrackTranscoderException {
        MediaCodec mediaCodec = this.f33671c;
        if (mediaCodec == null) {
            throw new IllegalStateException("Codec is not initialized");
        } else if (!this.f33672d) {
            try {
                mediaCodec.start();
                this.f33672d = true;
            } catch (Exception e) {
                throw new TrackTranscoderException(TrackTranscoderException.a.INTERNAL_CODEC_ERROR, e);
            }
        }
    }

    @Override // com.linkedin.android.litr.b.a
    public final void a(int i, boolean z) {
        this.f33671c.releaseOutputBuffer(i, z);
    }

    @Override // com.linkedin.android.litr.b.a
    public final void a(MediaFormat mediaFormat, Surface surface) throws TrackTranscoderException {
        MediaCodec a2 = a.a(mediaFormat, surface, false, TrackTranscoderException.a.DECODER_NOT_FOUND, TrackTranscoderException.a.DECODER_FORMAT_NOT_FOUND, TrackTranscoderException.a.DECODER_CONFIGURATION_ERROR, this.f33669a, this.f33670b);
        this.f33671c = a2;
        this.e = a2 == null;
    }

    @Override // com.linkedin.android.litr.b.a
    public final void a(c cVar) {
        this.f33671c.queueInputBuffer(cVar.f33666a, cVar.f33668c.offset, cVar.f33668c.size, cVar.f33668c.presentationTimeUs, cVar.f33668c.flags);
    }

    @Override // com.linkedin.android.litr.b.a
    public final c b(int i) {
        if (i < 0) {
            return null;
        }
        return new c(i, Build.VERSION.SDK_INT >= 21 ? this.f33671c.getOutputBuffer(i) : this.f33671c.getOutputBuffers()[i], this.f);
    }

    @Override // com.linkedin.android.litr.b.a
    public final boolean b() {
        return this.f33672d;
    }

    @Override // com.linkedin.android.litr.b.a
    public final int c() {
        return this.f33671c.dequeueInputBuffer(0L);
    }

    @Override // com.linkedin.android.litr.b.a
    public final int d() {
        return this.f33671c.dequeueOutputBuffer(this.f, 0L);
    }

    @Override // com.linkedin.android.litr.b.a
    public final MediaFormat e() {
        return this.f33671c.getOutputFormat();
    }

    @Override // com.linkedin.android.litr.b.a
    public final void f() {
        if (this.f33672d) {
            this.f33671c.stop();
            this.f33672d = false;
        }
    }

    @Override // com.linkedin.android.litr.b.a
    public final void g() {
        if (!this.e) {
            this.f33671c.release();
            this.e = true;
        }
    }

    @Override // com.linkedin.android.litr.b.a
    public final String h() throws TrackTranscoderException {
        try {
            return this.f33671c.getName();
        } catch (IllegalStateException e) {
            throw new TrackTranscoderException(TrackTranscoderException.a.CODEC_IN_RELEASED_STATE, e);
        }
    }
}
