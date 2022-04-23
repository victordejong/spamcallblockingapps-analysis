package com.linkedin.android.litr.e;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.view.Surface;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/e.class */
public final class e implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: a  reason: collision with root package name */
    SurfaceTexture f33721a;

    /* renamed from: b  reason: collision with root package name */
    public Surface f33722b;

    /* renamed from: c  reason: collision with root package name */
    int f33723c;

    /* renamed from: d  reason: collision with root package name */
    final Object f33724d = new Object();
    boolean e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i = iArr[0];
        GLES20.glBindTexture(36197, i);
        a.a("glBindTexture textureID");
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        a.a("glTexParameter");
        this.f33723c = i;
        this.f33721a = new SurfaceTexture(this.f33723c);
        this.f33722b = new Surface(this.f33721a);
        this.f33721a.setOnFrameAvailableListener(this);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.f33724d) {
            if (!this.e) {
                this.e = true;
                this.f33724d.notifyAll();
            } else {
                throw new RuntimeException("frameAvailable already set, frame could be dropped");
            }
        }
    }
}
