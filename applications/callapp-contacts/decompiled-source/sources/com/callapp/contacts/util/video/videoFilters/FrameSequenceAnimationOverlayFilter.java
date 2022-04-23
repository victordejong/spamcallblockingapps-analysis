package com.callapp.contacts.util.video.videoFilters;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.util.Log;
import com.linkedin.android.litr.c.c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter.class */
public class FrameSequenceAnimationOverlayFilter extends BaseOverlayGlFilter {

    /* renamed from: a  reason: collision with root package name */
    private static final String f16357a = "FrameSequenceAnimationOverlayFilter";

    /* renamed from: b  reason: collision with root package name */
    private final AnimationFrameProvider f16358b;

    /* renamed from: c  reason: collision with root package name */
    private Frame f16359c;

    /* renamed from: d  reason: collision with root package name */
    private long f16360d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame.class */
    static class Frame {

        /* renamed from: a  reason: collision with root package name */
        private int f16361a;

        /* renamed from: b  reason: collision with root package name */
        private long f16362b;

        /* renamed from: c  reason: collision with root package name */
        private Frame f16363c;

        private Frame(int i, long j) {
            this.f16361a = i;
            this.f16362b = j;
        }
    }

    public FrameSequenceAnimationOverlayFilter(AnimationFrameProvider animationFrameProvider, RectF rectF) {
        super(rectF);
        this.f16358b = animationFrameProvider;
    }

    public FrameSequenceAnimationOverlayFilter(AnimationFrameProvider animationFrameProvider, c cVar) {
        super(cVar);
        this.f16358b = animationFrameProvider;
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.c.a
    public final void a() {
        super.a();
        Frame frame = null;
        Frame frame2 = null;
        Frame frame3 = null;
        for (int i = 0; i < this.f16358b.getFrameCount(); i++) {
            this.f16358b.a();
            Bitmap nextFrame = this.f16358b.getNextFrame();
            if (nextFrame == null) {
                Log.e(f16357a, "Error loading GIF frame ".concat(String.valueOf(i)));
                frame3 = frame3;
            } else {
                Frame frame4 = new Frame(a(nextFrame), this.f16358b.getNextFrameDurationNs());
                if (i == 0) {
                    frame2 = frame4;
                }
                if (frame3 != null) {
                    frame3.f16363c = frame4;
                }
                nextFrame.recycle();
                frame3 = frame4;
                frame = frame4;
            }
        }
        if (frame != null) {
            frame.f16363c = frame2;
        }
        if (frame2 != null) {
            this.f16359c = frame2;
            this.f16360d = frame2.f16362b;
        }
    }

    @Override // com.linkedin.android.litr.c.a
    public final void a(long j) {
        Frame frame = this.f16359c;
        if (frame != null) {
            if (j > this.f16360d) {
                Frame frame2 = frame.f16363c;
                this.f16359c = frame2;
                this.f16360d += frame2.f16362b;
            }
            a(this.f16359c.f16361a);
        }
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.c.a
    public final /* bridge */ /* synthetic */ void a(float[] fArr, int i) {
        super.a(fArr, i);
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.c.a
    public final void b() {
        super.b();
        int frameCount = this.f16358b.getFrameCount();
        int[] iArr = new int[frameCount];
        Frame frame = this.f16359c;
        for (int i = 0; i < frameCount; i++) {
            iArr[i] = frame.f16361a;
            frame.f16361a = 0;
            frame = frame.f16363c;
        }
        GLES20.glDeleteTextures(frameCount, iArr, 0);
    }
}
