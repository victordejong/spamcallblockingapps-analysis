package com.bytedance.sdk.openadsdk.core.video.renderview;

import android.view.SurfaceHolder;
import java.lang.ref.WeakReference;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.renderview.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/renderview/c.class */
public class SurfaceHolder$CallbackC4753c implements SurfaceHolder.Callback {

    /* renamed from: a */
    private final WeakReference<SurfaceHolder.Callback> f17394a;

    public SurfaceHolder$CallbackC4753c(SurfaceHolder.Callback callback) {
        this.f17394a = new WeakReference<>(callback);
    }

    /* renamed from: a */
    public SurfaceHolder.Callback m34164a() {
        return this.f17394a.get();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        SurfaceHolder.Callback callback = this.f17394a.get();
        if (callback != null) {
            callback.surfaceChanged(surfaceHolder, i, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        SurfaceHolder.Callback callback = this.f17394a.get();
        if (callback != null) {
            callback.surfaceCreated(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        SurfaceHolder.Callback callback = this.f17394a.get();
        if (callback != null) {
            callback.surfaceDestroyed(surfaceHolder);
        }
    }
}
