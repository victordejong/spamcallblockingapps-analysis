package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/VideoDecoderGLSurfaceView.class */
public class VideoDecoderGLSurfaceView extends GLSurfaceView {

    /* renamed from: a  reason: collision with root package name */
    public final f f22364a;

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public VideoDecoderGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f fVar = new f(this);
        this.f22364a = fVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(fVar);
        setRenderMode(0);
    }
}
