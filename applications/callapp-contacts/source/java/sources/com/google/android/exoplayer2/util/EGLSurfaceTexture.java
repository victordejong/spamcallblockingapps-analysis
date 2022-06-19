package com.google.android.exoplayer2.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture.class */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: a */
    public static final int[] f38628a = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: b */
    public final Handler f38629b;

    /* renamed from: c */
    public final int[] f38630c;

    /* renamed from: d */
    public EGLDisplay f38631d;

    /* renamed from: e */
    public EGLContext f38632e;

    /* renamed from: f */
    public EGLSurface f38633f;

    /* renamed from: g */
    public SurfaceTexture f38634g;

    /* renamed from: h */
    private final AbstractC11592a f38635h;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture$GlException.class */
    public static final class GlException extends RuntimeException {
        /* JADX INFO: Access modifiers changed from: private */
        public GlException(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.EGLSurfaceTexture$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture$a.class */
    public interface AbstractC11592a {
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    public EGLSurfaceTexture(Handler handler, AbstractC11592a abstractC11592a) {
        this.f38629b = handler;
        this.f38635h = abstractC11592a;
        this.f38630c = new int[1];
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f38629b.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f38634g;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
