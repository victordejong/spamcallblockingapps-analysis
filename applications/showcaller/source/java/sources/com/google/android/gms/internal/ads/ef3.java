package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ef3.class */
public final class ef3 {

    /* renamed from: a */
    private final MediaCodec f22126a;

    /* renamed from: b */
    private ByteBuffer[] f22127b;

    /* renamed from: c */
    private ByteBuffer[] f22128c;

    public /* synthetic */ ef3(MediaCodec mediaCodec, Surface surface, he3 he3Var) {
        this.f22126a = mediaCodec;
        if (C7101wa.f31475a < 21) {
            this.f22127b = mediaCodec.getInputBuffers();
            this.f22128c = mediaCodec.getOutputBuffers();
        }
    }

    /* renamed from: a */
    public final int m15508a() {
        return this.f22126a.dequeueInputBuffer(0L);
    }

    /* renamed from: b */
    public final int m15507b(MediaCodec.BufferInfo bufferInfo) {
        int i;
        do {
            int dequeueOutputBuffer = this.f22126a.dequeueOutputBuffer(bufferInfo, 0L);
            i = dequeueOutputBuffer;
            if (dequeueOutputBuffer == -3) {
                if (C7101wa.f31475a < 21) {
                    this.f22128c = this.f22126a.getOutputBuffers();
                }
                i = -3;
            }
        } while (i == -3);
        return i;
    }

    /* renamed from: c */
    public final MediaFormat m15506c() {
        return this.f22126a.getOutputFormat();
    }

    /* renamed from: d */
    public final ByteBuffer m15505d(int i) {
        return C7101wa.f31475a >= 21 ? this.f22126a.getInputBuffer(i) : ((ByteBuffer[]) C7101wa.m9719I(this.f22127b))[i];
    }

    /* renamed from: e */
    public final ByteBuffer m15504e(int i) {
        return C7101wa.f31475a >= 21 ? this.f22126a.getOutputBuffer(i) : ((ByteBuffer[]) C7101wa.m9719I(this.f22128c))[i];
    }

    /* renamed from: f */
    public final void m15503f(int i, int i2, int i3, long j, int i4) {
        this.f22126a.queueInputBuffer(i, 0, i3, j, i4);
    }

    /* renamed from: g */
    public final void m15502g(int i, int i2, C7202z0 c7202z0, long j, int i3) {
        this.f22126a.queueSecureInputBuffer(i, 0, c7202z0.m8638b(), j, 0);
    }

    /* renamed from: h */
    public final void m15501h(int i, boolean z) {
        this.f22126a.releaseOutputBuffer(i, z);
    }

    /* renamed from: i */
    public final void m15500i(int i, long j) {
        this.f22126a.releaseOutputBuffer(i, j);
    }

    /* renamed from: j */
    public final void m15499j() {
        this.f22126a.flush();
    }

    /* renamed from: k */
    public final void m15498k() {
        this.f22127b = null;
        this.f22128c = null;
        this.f22126a.release();
    }

    /* renamed from: l */
    public final void m15497l(Surface surface) {
        this.f22126a.setOutputSurface(surface);
    }

    /* renamed from: m */
    public final void m15496m(Bundle bundle) {
        this.f22126a.setParameters(bundle);
    }

    /* renamed from: n */
    public final void m15495n(int i) {
        this.f22126a.setVideoScalingMode(i);
    }
}
