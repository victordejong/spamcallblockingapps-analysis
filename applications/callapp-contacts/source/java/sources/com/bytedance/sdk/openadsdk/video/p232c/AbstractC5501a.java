package com.bytedance.sdk.openadsdk.video.p232c;

import android.content.Context;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bytedance.sdk.openadsdk.video.p231b.C5500a;
/* renamed from: com.bytedance.sdk.openadsdk.video.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/c/a.class */
public abstract class AbstractC5501a {

    /* renamed from: b */
    private Surface f19068b;

    /* renamed from: c */
    private SurfaceHolder f19069c;

    /* renamed from: g */
    private Context f19073g;

    /* renamed from: d */
    private boolean f19070d = false;

    /* renamed from: e */
    private boolean f19071e = false;

    /* renamed from: f */
    private C5500a f19072f = null;

    /* renamed from: a */
    protected AbstractC5502a f19067a = null;

    /* renamed from: com.bytedance.sdk.openadsdk.video.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/c/a$a.class */
    public interface AbstractC5502a {
    }

    /* renamed from: a */
    public abstract void m31985a();

    /* renamed from: a */
    public abstract void m31984a(int i);

    /* renamed from: a */
    public void m31983a(Context context) {
        this.f19073g = context;
    }

    /* renamed from: a */
    public void m31982a(Surface surface) {
        this.f19068b = surface;
    }

    /* renamed from: a */
    public void m31981a(SurfaceHolder surfaceHolder) {
        this.f19069c = surfaceHolder;
    }

    /* renamed from: a */
    public void m31980a(C5500a c5500a) {
        this.f19072f = c5500a;
    }

    /* renamed from: a */
    public void m31979a(AbstractC5502a abstractC5502a) {
        this.f19067a = abstractC5502a;
    }

    /* renamed from: a */
    public void m31978a(boolean z) {
        this.f19070d = z;
    }

    /* renamed from: b */
    public abstract void m31977b();

    /* renamed from: b */
    public void m31976b(boolean z) {
        this.f19071e = z;
    }

    /* renamed from: c */
    public abstract int m31975c();

    /* renamed from: d */
    public abstract long m31974d();
}
