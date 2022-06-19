package com.linkedin.android.litr.p460b;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.p470h.C16655a;
/* renamed from: com.linkedin.android.litr.b.d */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/d.class */
public final class C16617d implements AbstractC16614a {

    /* renamed from: a */
    private final boolean f58468a;

    /* renamed from: b */
    private final boolean f58469b;

    /* renamed from: c */
    private MediaCodec f58470c;

    /* renamed from: d */
    private boolean f58471d;

    /* renamed from: e */
    private boolean f58472e;

    /* renamed from: f */
    private final MediaCodec.BufferInfo f58473f;

    public C16617d() {
        this(true);
    }

    public C16617d(boolean z) {
        this(z, false);
    }

    public C16617d(boolean z, boolean z2) {
        this.f58473f = new MediaCodec.BufferInfo();
        this.f58468a = z;
        this.f58469b = z2;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: a */
    public final C16616c mo6903a(int i) {
        if (i >= 0) {
            return new C16616c(i, Build.VERSION.SDK_INT >= 21 ? this.f58470c.getInputBuffer(i) : this.f58470c.getInputBuffers()[i], null);
        }
        return null;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: a */
    public final void mo6904a() throws TrackTranscoderException {
        MediaCodec mediaCodec = this.f58470c;
        if (mediaCodec != null) {
            if (this.f58471d) {
                return;
            }
            try {
                mediaCodec.start();
                this.f58471d = true;
                return;
            } catch (Exception e) {
                throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.INTERNAL_CODEC_ERROR, e);
            }
        }
        throw new IllegalStateException("Codec is not initialized");
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: a */
    public final void mo6902a(int i, boolean z) {
        this.f58470c.releaseOutputBuffer(i, z);
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: a */
    public final void mo6901a(MediaFormat mediaFormat, Surface surface) throws TrackTranscoderException {
        MediaCodec m6811a = C16655a.m6811a(mediaFormat, surface, false, TrackTranscoderException.EnumC16646a.DECODER_NOT_FOUND, TrackTranscoderException.EnumC16646a.DECODER_FORMAT_NOT_FOUND, TrackTranscoderException.EnumC16646a.DECODER_CONFIGURATION_ERROR, this.f58468a, this.f58469b);
        this.f58470c = m6811a;
        this.f58472e = m6811a == null;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: a */
    public final void mo6900a(C16616c c16616c) {
        this.f58470c.queueInputBuffer(c16616c.f58465a, c16616c.f58467c.offset, c16616c.f58467c.size, c16616c.f58467c.presentationTimeUs, c16616c.f58467c.flags);
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: b */
    public final C16616c mo6898b(int i) {
        if (i >= 0) {
            return new C16616c(i, Build.VERSION.SDK_INT >= 21 ? this.f58470c.getOutputBuffer(i) : this.f58470c.getOutputBuffers()[i], this.f58473f);
        }
        return null;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: b */
    public final boolean mo6899b() {
        return this.f58471d;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: c */
    public final int mo6897c() {
        return this.f58470c.dequeueInputBuffer(0L);
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: d */
    public final int mo6896d() {
        return this.f58470c.dequeueOutputBuffer(this.f58473f, 0L);
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: e */
    public final MediaFormat mo6895e() {
        return this.f58470c.getOutputFormat();
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: f */
    public final void mo6894f() {
        if (this.f58471d) {
            this.f58470c.stop();
            this.f58471d = false;
        }
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: g */
    public final void mo6893g() {
        if (!this.f58472e) {
            this.f58470c.release();
            this.f58472e = true;
        }
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16614a
    /* renamed from: h */
    public final String mo6892h() throws TrackTranscoderException {
        try {
            return this.f58470c.getName();
        } catch (IllegalStateException e) {
            throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.CODEC_IN_RELEASED_STATE, e);
        }
    }
}
