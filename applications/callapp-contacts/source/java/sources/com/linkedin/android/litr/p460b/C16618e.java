package com.linkedin.android.litr.p460b;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.p470h.C16655a;
/* renamed from: com.linkedin.android.litr.b.e */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/e.class */
public final class C16618e implements AbstractC16615b {

    /* renamed from: a */
    private final boolean f58474a;

    /* renamed from: b */
    private final boolean f58475b;

    /* renamed from: c */
    private MediaCodec f58476c;

    /* renamed from: d */
    private boolean f58477d;

    /* renamed from: e */
    private boolean f58478e;

    /* renamed from: f */
    private final MediaCodec.BufferInfo f58479f;

    public C16618e() {
        this(true);
    }

    public C16618e(boolean z) {
        this(z, false);
    }

    public C16618e(boolean z, boolean z2) {
        this.f58477d = true;
        this.f58479f = new MediaCodec.BufferInfo();
        this.f58474a = z;
        this.f58475b = z2;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: a */
    public final int mo6889a(long j) {
        return this.f58476c.dequeueInputBuffer(j);
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: a */
    public final Surface mo6891a() {
        return this.f58476c.createInputSurface();
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: a */
    public final C16616c mo6890a(int i) {
        if (i >= 0) {
            return new C16616c(i, Build.VERSION.SDK_INT >= 21 ? this.f58476c.getInputBuffer(i) : this.f58476c.getInputBuffers()[i], null);
        }
        return null;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: a */
    public final void mo6888a(MediaFormat mediaFormat) throws TrackTranscoderException {
        if (!mediaFormat.containsKey("color-format")) {
            mediaFormat.setInteger("color-format", 2130708361);
        }
        MediaCodec m6811a = C16655a.m6811a(mediaFormat, null, true, TrackTranscoderException.EnumC16646a.ENCODER_NOT_FOUND, TrackTranscoderException.EnumC16646a.ENCODER_FORMAT_NOT_FOUND, TrackTranscoderException.EnumC16646a.ENCODER_CONFIGURATION_ERROR, this.f58474a, this.f58475b);
        this.f58476c = m6811a;
        this.f58477d = m6811a == null;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: a */
    public final void mo6887a(C16616c c16616c) {
        this.f58476c.queueInputBuffer(c16616c.f58465a, c16616c.f58467c.offset, c16616c.f58467c.size, c16616c.f58467c.presentationTimeUs, c16616c.f58467c.flags);
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: b */
    public final C16616c mo6885b(int i) {
        if (i >= 0) {
            return new C16616c(i, Build.VERSION.SDK_INT >= 21 ? this.f58476c.getOutputBuffer(i) : this.f58476c.getOutputBuffers()[i], this.f58479f);
        }
        return null;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: b */
    public final void mo6886b() throws TrackTranscoderException {
        try {
            if (this.f58478e) {
                return;
            }
            this.f58476c.start();
            this.f58478e = true;
        } catch (Exception e) {
            throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.INTERNAL_CODEC_ERROR, e);
        }
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: c */
    public final void mo6883c(int i) {
        this.f58476c.releaseOutputBuffer(i, false);
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: c */
    public final boolean mo6884c() {
        return this.f58478e;
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: d */
    public final void mo6882d() {
        this.f58476c.signalEndOfInputStream();
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: e */
    public final int mo6881e() {
        return this.f58476c.dequeueOutputBuffer(this.f58479f, 0L);
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: f */
    public final MediaFormat mo6880f() {
        return this.f58476c.getOutputFormat();
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: g */
    public final void mo6879g() {
        if (this.f58478e) {
            this.f58476c.stop();
            this.f58478e = false;
        }
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: h */
    public final void mo6878h() {
        if (!this.f58477d) {
            this.f58476c.release();
            this.f58477d = true;
        }
    }

    @Override // com.linkedin.android.litr.p460b.AbstractC16615b
    /* renamed from: i */
    public final String mo6877i() throws TrackTranscoderException {
        try {
            return this.f58476c.getName();
        } catch (IllegalStateException e) {
            throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.CODEC_IN_RELEASED_STATE, e);
        }
    }
}
