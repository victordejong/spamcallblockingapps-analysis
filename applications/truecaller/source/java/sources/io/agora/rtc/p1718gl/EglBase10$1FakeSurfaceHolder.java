package io.agora.rtc.p1718gl;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceHolder;
/* renamed from: io.agora.rtc.gl.EglBase10$1FakeSurfaceHolder */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/EglBase10$1FakeSurfaceHolder.class */
public class EglBase10$1FakeSurfaceHolder implements SurfaceHolder {
    private final Surface surface;
    public final /* synthetic */ EglBase10 this$0;

    public EglBase10$1FakeSurfaceHolder(EglBase10 eglBase10, Surface surface) {
        this.this$0 = eglBase10;
        this.surface = surface;
    }

    @Override // android.view.SurfaceHolder
    public void addCallback(SurfaceHolder.Callback callback) {
    }

    @Override // android.view.SurfaceHolder
    public Surface getSurface() {
        return this.surface;
    }

    @Override // android.view.SurfaceHolder
    public Rect getSurfaceFrame() {
        return null;
    }

    @Override // android.view.SurfaceHolder
    public boolean isCreating() {
        return false;
    }

    @Override // android.view.SurfaceHolder
    public Canvas lockCanvas() {
        return null;
    }

    @Override // android.view.SurfaceHolder
    public Canvas lockCanvas(Rect rect) {
        return null;
    }

    @Override // android.view.SurfaceHolder
    public void removeCallback(SurfaceHolder.Callback callback) {
    }

    @Override // android.view.SurfaceHolder
    public void setFixedSize(int i, int i2) {
    }

    @Override // android.view.SurfaceHolder
    public void setFormat(int i) {
    }

    @Override // android.view.SurfaceHolder
    public void setKeepScreenOn(boolean z) {
    }

    @Override // android.view.SurfaceHolder
    public void setSizeFromLayout() {
    }

    @Override // android.view.SurfaceHolder
    @Deprecated
    public void setType(int i) {
    }

    @Override // android.view.SurfaceHolder
    public void unlockCanvasAndPost(Canvas canvas) {
    }
}
