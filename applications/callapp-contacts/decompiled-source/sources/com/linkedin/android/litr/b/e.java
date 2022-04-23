package com.linkedin.android.litr.b;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.h.a;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/e.class */
public final class e implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f33673a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33674b;

    /* renamed from: c  reason: collision with root package name */
    private MediaCodec f33675c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33676d;
    private boolean e;
    private final MediaCodec.BufferInfo f;

    public e() {
        this(true);
    }

    public e(boolean z) {
        this(z, false);
    }

    public e(boolean z, boolean z2) {
        this.f33676d = true;
        this.f = new MediaCodec.BufferInfo();
        this.f33673a = z;
        this.f33674b = z2;
    }

    @Override // com.linkedin.android.litr.b.b
    public final int a(long j) {
        return this.f33675c.dequeueInputBuffer(j);
    }

    @Override // com.linkedin.android.litr.b.b
    public final Surface a() {
        return this.f33675c.createInputSurface();
    }

    @Override // com.linkedin.android.litr.b.b
    public final c a(int i) {
        if (i < 0) {
            return null;
        }
        return new c(i, Build.VERSION.SDK_INT >= 21 ? this.f33675c.getInputBuffer(i) : this.f33675c.getInputBuffers()[i], null);
    }

    @Override // com.linkedin.android.litr.b.b
    public final void a(MediaFormat mediaFormat) throws TrackTranscoderException {
        if (!mediaFormat.containsKey("color-format")) {
            mediaFormat.setInteger("color-format", 2130708361);
        }
        MediaCodec a2 = a.a(mediaFormat, null, true, TrackTranscoderException.a.ENCODER_NOT_FOUND, TrackTranscoderException.a.ENCODER_FORMAT_NOT_FOUND, TrackTranscoderException.a.ENCODER_CONFIGURATION_ERROR, this.f33673a, this.f33674b);
        this.f33675c = a2;
        this.f33676d = a2 == null;
    }

    @Override // com.linkedin.android.litr.b.b
    public final void a(c cVar) {
        this.f33675c.queueInputBuffer(cVar.f33666a, cVar.f33668c.offset, cVar.f33668c.size, cVar.f33668c.presentationTimeUs, cVar.f33668c.flags);
    }

    @Override // com.linkedin.android.litr.b.b
    public final c b(int i) {
        if (i < 0) {
            return null;
        }
        return new c(i, Build.VERSION.SDK_INT >= 21 ? this.f33675c.getOutputBuffer(i) : this.f33675c.getOutputBuffers()[i], this.f);
    }

    @Override // com.linkedin.android.litr.b.b
    public final void b() throws TrackTranscoderException {
        try {
            if (!this.e) {
                this.f33675c.start();
                this.e = true;
            }
        } catch (Exception e) {
            throw new TrackTranscoderException(TrackTranscoderException.a.INTERNAL_CODEC_ERROR, e);
        }
    }

    @Override // com.linkedin.android.litr.b.b
    public final void c(int i) {
        this.f33675c.releaseOutputBuffer(i, false);
    }

    @Override // com.linkedin.android.litr.b.b
    public final boolean c() {
        return this.e;
    }

    @Override // com.linkedin.android.litr.b.b
    public final void d() {
        this.f33675c.signalEndOfInputStream();
    }

    @Override // com.linkedin.android.litr.b.b
    public final int e() {
        return this.f33675c.dequeueOutputBuffer(this.f, 0L);
    }

    @Override // com.linkedin.android.litr.b.b
    public final MediaFormat f() {
        return this.f33675c.getOutputFormat();
    }

    @Override // com.linkedin.android.litr.b.b
    public final void g() {
        if (this.e) {
            this.f33675c.stop();
            this.e = false;
        }
    }

    @Override // com.linkedin.android.litr.b.b
    public final void h() {
        if (!this.f33676d) {
            this.f33675c.release();
            this.f33676d = true;
        }
    }

    @Override // com.linkedin.android.litr.b.b
    public final String i() throws TrackTranscoderException {
        try {
            return this.f33675c.getName();
        } catch (IllegalStateException e) {
            throw new TrackTranscoderException(TrackTranscoderException.a.CODEC_IN_RELEASED_STATE, e);
        }
    }
}
