package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/VideoDecoderGLSurfaceView.class */
public class VideoDecoderGLSurfaceView extends GLSurfaceView {

    /* renamed from: a */
    public final C11655f f38773a;

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public VideoDecoderGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C11655f c11655f = new C11655f(this);
        this.f38773a = c11655f;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(c11655f);
        setRenderMode(0);
    }
}
