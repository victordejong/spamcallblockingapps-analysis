package com.bytedance.sdk.openadsdk.core.video.renderview;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView.class */
public class SSRenderSurfaceView extends SSSurfaceView implements SurfaceHolder.Callback, AbstractC4751b {

    /* renamed from: c */
    private static final ArrayList<SurfaceHolder$CallbackC4753c> f17388c = new ArrayList<>();

    /* renamed from: a */
    private WeakReference<AbstractC4750a> f17389a;

    /* renamed from: b */
    private SurfaceHolder$CallbackC4753c f17390b;

    /* renamed from: d */
    private AbstractC4751b.AbstractC4752a f17391d;

    public SSRenderSurfaceView(Context context) {
        super(context);
        m34175a();
    }

    /* renamed from: a */
    private void m34175a() {
        SurfaceHolder$CallbackC4753c surfaceHolder$CallbackC4753c = new SurfaceHolder$CallbackC4753c(this);
        this.f17390b = surfaceHolder$CallbackC4753c;
        f17388c.add(surfaceHolder$CallbackC4753c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b
    /* renamed from: a */
    public void mo34167a(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = i;
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b
    /* renamed from: a */
    public void mo34166a(AbstractC4750a abstractC4750a) {
        this.f17389a = new WeakReference<>(abstractC4750a);
        SurfaceHolder holder = getHolder();
        holder.setFormat(-3);
        Iterator<SurfaceHolder$CallbackC4753c> it2 = f17388c.iterator();
        while (it2.hasNext()) {
            SurfaceHolder$CallbackC4753c next = it2.next();
            if (next.m34164a() == null) {
                holder.removeCallback(next);
                it2.remove();
            }
        }
        holder.addCallback(this.f17390b);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b
    public View getView() {
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.SSSurfaceView, android.view.SurfaceView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        AbstractC4751b.AbstractC4752a abstractC4752a = this.f17391d;
        if (abstractC4752a != null) {
            abstractC4752a.m34165a(i);
        }
    }

    public void setWindowVisibilityChangedListener(AbstractC4751b.AbstractC4752a abstractC4752a) {
        this.f17391d = abstractC4752a;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        WeakReference<AbstractC4750a> weakReference = this.f17389a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17389a.get().mo34171a(surfaceHolder, i, i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        WeakReference<AbstractC4750a> weakReference = this.f17389a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17389a.get().mo34172a(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        WeakReference<AbstractC4750a> weakReference = this.f17389a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17389a.get().mo34168b(surfaceHolder);
    }
}
