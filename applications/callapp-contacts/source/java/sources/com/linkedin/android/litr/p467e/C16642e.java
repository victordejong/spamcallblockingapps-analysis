package com.linkedin.android.litr.p467e;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.view.Surface;
/* renamed from: com.linkedin.android.litr.e.e */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/e.class */
public final class C16642e implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: a */
    SurfaceTexture f58560a;

    /* renamed from: b */
    public Surface f58561b;

    /* renamed from: c */
    int f58562c;

    /* renamed from: d */
    final Object f58563d = new Object();

    /* renamed from: e */
    boolean f58564e;

    public C16642e() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i = iArr[0];
        GLES20.glBindTexture(36197, i);
        C16638a.m6837a("glBindTexture textureID");
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        C16638a.m6837a("glTexParameter");
        this.f58562c = i;
        this.f58560a = new SurfaceTexture(this.f58562c);
        this.f58561b = new Surface(this.f58560a);
        this.f58560a.setOnFrameAvailableListener(this);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.f58563d) {
            if (this.f58564e) {
                throw new RuntimeException("frameAvailable already set, frame could be dropped");
            }
            this.f58564e = true;
            this.f58563d.notifyAll();
        }
    }
}
