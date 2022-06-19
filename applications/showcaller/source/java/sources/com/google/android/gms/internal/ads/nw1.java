package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nw1.class */
public final class nw1 {

    /* renamed from: a */
    public final C7021u4 f27340a;

    /* renamed from: b */
    public final int f27341b;

    /* renamed from: c */
    public final int f27342c = 0;

    /* renamed from: d */
    public final int f27343d;

    /* renamed from: e */
    public final int f27344e;

    /* renamed from: f */
    public final int f27345f;

    /* renamed from: g */
    public final int f27346g;

    /* renamed from: h */
    public final int f27347h;

    /* renamed from: i */
    public final x51[] f27348i;

    public nw1(C7021u4 c7021u4, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, x51[] x51VarArr) {
        this.f27340a = c7021u4;
        this.f27341b = i;
        boolean z2 = false;
        this.f27343d = i3;
        this.f27344e = i4;
        this.f27345f = i5;
        this.f27346g = i6;
        this.f27348i = x51VarArr;
        int minBufferSize = AudioTrack.getMinBufferSize(i4, i5, i6);
        C7173y8.m8895d(minBufferSize != -2 ? true : z2);
        this.f27347h = C7101wa.m9696c0(minBufferSize * 4, ((int) m12806b(250000L)) * i3, Math.max(minBufferSize, ((int) m12806b(750000L)) * i3));
    }

    /* renamed from: a */
    public final long m12807a(long j) {
        return (j * 1000000) / this.f27344e;
    }

    /* renamed from: b */
    public final long m12806b(long j) {
        return (j * this.f27344e) / 1000000;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0109 -> B:19:0x00ce). Please submit an issue!!! */
    /* renamed from: c */
    public final AudioTrack m12805c(boolean z, h83 h83Var, int i) {
        AudioTrack audioTrack;
        AudioFormat build;
        AudioFormat build2;
        try {
            int i2 = C7101wa.f31475a;
            if (i2 >= 29) {
                build2 = new AudioFormat.Builder().setSampleRate(this.f27344e).setChannelMask(this.f27345f).setEncoding(this.f27346g).build();
                audioTrack = new AudioTrack.Builder().setAudioAttributes(h83Var.m14723a()).setAudioFormat(build2).setTransferMode(1).setBufferSizeInBytes(this.f27347h).setSessionId(i).setOffloadedPlayback(false).build();
            } else if (i2 >= 21) {
                AudioAttributes m14723a = h83Var.m14723a();
                build = new AudioFormat.Builder().setSampleRate(this.f27344e).setChannelMask(this.f27345f).setEncoding(this.f27346g).build();
                audioTrack = new AudioTrack(m14723a, build, this.f27347h, 1, i);
            } else {
                int i3 = h83Var.f23827c;
                audioTrack = i == 0 ? new AudioTrack(3, this.f27344e, this.f27345f, this.f27346g, this.f27347h, 1) : new AudioTrack(3, this.f27344e, this.f27345f, this.f27346g, this.f27347h, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception e) {
            }
            throw new zzds(state, this.f27344e, this.f27345f, this.f27347h, this.f27340a, false, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e2) {
            throw new zzds(0, this.f27344e, this.f27345f, this.f27347h, this.f27340a, false, e2);
        }
    }
}
