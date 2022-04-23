package com.bytedance.sdk.openadsdk.core.video.renderview;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.video.renderview.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView.class */
public class SSRenderSurfaceView extends SSSurfaceView implements SurfaceHolder.Callback, b {

    /* renamed from: c  reason: collision with root package name */
    private static final ArrayList<c> f9252c = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<a> f9253a;

    /* renamed from: b  reason: collision with root package name */
    private c f9254b;

    /* renamed from: d  reason: collision with root package name */
    private b.a f9255d;

    public SSRenderSurfaceView(Context context) {
        super(context);
        a();
    }

    private void a() {
        c cVar = new c(this);
        this.f9254b = cVar;
        f9252c.add(cVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.b
    public void a(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = i;
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.b
    public void a(a aVar) {
        this.f9253a = new WeakReference<>(aVar);
        SurfaceHolder holder = getHolder();
        holder.setFormat(-3);
        Iterator<c> it2 = f9252c.iterator();
        while (it2.hasNext()) {
            c next = it2.next();
            if (next.a() == null) {
                holder.removeCallback(next);
                it2.remove();
            }
        }
        holder.addCallback(this.f9254b);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.b
    public View getView() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.SSSurfaceView, android.view.SurfaceView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        b.a aVar = this.f9255d;
        if (aVar != null) {
            aVar.a(i);
        }
    }

    public void setWindowVisibilityChangedListener(b.a aVar) {
        this.f9255d = aVar;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        WeakReference<a> weakReference = this.f9253a;
        if (weakReference != null && weakReference.get() != null) {
            this.f9253a.get().a(surfaceHolder, i, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        WeakReference<a> weakReference = this.f9253a;
        if (weakReference != null && weakReference.get() != null) {
            this.f9253a.get().a(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        WeakReference<a> weakReference = this.f9253a;
        if (weakReference != null && weakReference.get() != null) {
            this.f9253a.get().b(surfaceHolder);
        }
    }
}
