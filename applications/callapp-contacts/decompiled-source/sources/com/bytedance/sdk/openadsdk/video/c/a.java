package com.bytedance.sdk.openadsdk.video.c;

import android.content.Context;
import android.view.Surface;
import android.view.SurfaceHolder;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/c/a.class */
public abstract class a {

    /* renamed from: b  reason: collision with root package name */
    private Surface f10348b;

    /* renamed from: c  reason: collision with root package name */
    private SurfaceHolder f10349c;
    private Context g;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10350d = false;
    private boolean e = false;
    private com.bytedance.sdk.openadsdk.video.b.a f = null;

    /* renamed from: a  reason: collision with root package name */
    protected AbstractC0189a f10347a = null;

    /* renamed from: com.bytedance.sdk.openadsdk.video.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/c/a$a.class */
    public interface AbstractC0189a {
    }

    public abstract void a();

    public abstract void a(int i);

    public void a(Context context) {
        this.g = context;
    }

    public void a(Surface surface) {
        this.f10348b = surface;
    }

    public void a(SurfaceHolder surfaceHolder) {
        this.f10349c = surfaceHolder;
    }

    public void a(com.bytedance.sdk.openadsdk.video.b.a aVar) {
        this.f = aVar;
    }

    public void a(AbstractC0189a aVar) {
        this.f10347a = aVar;
    }

    public void a(boolean z) {
        this.f10350d = z;
    }

    public abstract void b();

    public void b(boolean z) {
        this.e = z;
    }

    public abstract int c();

    public abstract long d();
}
