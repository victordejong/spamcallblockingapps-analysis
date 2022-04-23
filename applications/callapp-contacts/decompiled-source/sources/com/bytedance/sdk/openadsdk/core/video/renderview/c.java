package com.bytedance.sdk.openadsdk.core.video.renderview;

import android.view.SurfaceHolder;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/renderview/c.class */
public class c implements SurfaceHolder.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<SurfaceHolder.Callback> f9258a;

    public c(SurfaceHolder.Callback callback) {
        this.f9258a = new WeakReference<>(callback);
    }

    public SurfaceHolder.Callback a() {
        return this.f9258a.get();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        SurfaceHolder.Callback callback = this.f9258a.get();
        if (callback != null) {
            callback.surfaceChanged(surfaceHolder, i, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        SurfaceHolder.Callback callback = this.f9258a.get();
        if (callback != null) {
            callback.surfaceCreated(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        SurfaceHolder.Callback callback = this.f9258a.get();
        if (callback != null) {
            callback.surfaceDestroyed(surfaceHolder);
        }
    }
}
