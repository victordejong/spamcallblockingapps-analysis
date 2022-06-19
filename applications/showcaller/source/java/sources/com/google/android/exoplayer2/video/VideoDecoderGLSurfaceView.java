package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/VideoDecoderGLSurfaceView.class */
public class VideoDecoderGLSurfaceView extends GLSurfaceView {

    /* renamed from: d */
    private final C5562l f18028d;

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public VideoDecoderGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C5562l c5562l = new C5562l(this);
        this.f18028d = c5562l;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(c5562l);
        setRenderMode(0);
    }

    public AbstractC5561k getVideoDecoderOutputBufferRenderer() {
        return this.f18028d;
    }
}
