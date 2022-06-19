package com.callapp.contacts.util.video.videoFilters;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.util.Log;
import com.linkedin.android.litr.p461c.C16628c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter.class */
public class FrameSequenceAnimationOverlayFilter extends BaseOverlayGlFilter {

    /* renamed from: a */
    private static final String f28497a = "FrameSequenceAnimationOverlayFilter";

    /* renamed from: b */
    private final AnimationFrameProvider f28498b;

    /* renamed from: c */
    private Frame f28499c;

    /* renamed from: d */
    private long f28500d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame.class */
    static class Frame {

        /* renamed from: a */
        private int f28501a;

        /* renamed from: b */
        private long f28502b;

        /* renamed from: c */
        private Frame f28503c;

        private Frame(int i, long j) {
            this.f28501a = i;
            this.f28502b = j;
        }
    }

    public FrameSequenceAnimationOverlayFilter(AnimationFrameProvider animationFrameProvider, RectF rectF) {
        super(rectF);
        this.f28498b = animationFrameProvider;
    }

    public FrameSequenceAnimationOverlayFilter(AnimationFrameProvider animationFrameProvider, C16628c c16628c) {
        super(c16628c);
        this.f28498b = animationFrameProvider;
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6874a() {
        Frame frame;
        super.mo6874a();
        int i = 0;
        Frame frame2 = null;
        Frame frame3 = null;
        Frame frame4 = null;
        while (true) {
            Frame frame5 = frame4;
            if (i >= this.f28498b.getFrameCount()) {
                break;
            }
            this.f28498b.mo26885a();
            Bitmap nextFrame = this.f28498b.getNextFrame();
            if (nextFrame == null) {
                Log.e(f28497a, "Error loading GIF frame ".concat(String.valueOf(i)));
                frame = frame5;
            } else {
                Frame frame6 = new Frame(m26883a(nextFrame), this.f28498b.getNextFrameDurationNs());
                if (i == 0) {
                    frame3 = frame6;
                }
                if (frame5 != null) {
                    frame5.f28503c = frame6;
                }
                nextFrame.recycle();
                frame = frame6;
                frame2 = frame6;
            }
            i++;
            frame4 = frame;
        }
        if (frame2 != null) {
            frame2.f28503c = frame3;
        }
        if (frame3 != null) {
            this.f28499c = frame3;
            this.f28500d = frame3.f28502b;
        }
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6872a(long j) {
        Frame frame = this.f28499c;
        if (frame == null) {
            return;
        }
        if (j > this.f28500d) {
            Frame frame2 = frame.f28503c;
            this.f28499c = frame2;
            this.f28500d += frame2.f28502b;
        }
        m26884a(this.f28499c.f28501a);
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo6871a(float[] fArr, int i) {
        super.mo6871a(fArr, i);
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: b */
    public final void mo6870b() {
        super.mo6870b();
        int frameCount = this.f28498b.getFrameCount();
        int[] iArr = new int[frameCount];
        Frame frame = this.f28499c;
        for (int i = 0; i < frameCount; i++) {
            iArr[i] = frame.f28501a;
            frame.f28501a = 0;
            frame = frame.f28503c;
        }
        GLES20.glDeleteTextures(frameCount, iArr, 0);
    }
}
