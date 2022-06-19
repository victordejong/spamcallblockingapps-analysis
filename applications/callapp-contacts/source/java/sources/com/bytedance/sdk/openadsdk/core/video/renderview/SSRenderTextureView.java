package com.bytedance.sdk.openadsdk.core.video.renderview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView.class */
public class SSRenderTextureView extends TextureView implements TextureView.SurfaceTextureListener, AbstractC4751b {

    /* renamed from: a */
    private AbstractC4750a f17392a;

    /* renamed from: b */
    private AbstractC4751b.AbstractC4752a f17393b;

    public SSRenderTextureView(Context context) {
        this(context, null);
    }

    public SSRenderTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
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
        this.f17392a = abstractC4750a;
        setSurfaceTextureListener(this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b
    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b
    public View getView() {
        return this;
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.TextureView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        AbstractC4750a abstractC4750a = this.f17392a;
        if (abstractC4750a != null) {
            abstractC4750a.mo34173a(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        AbstractC4750a abstractC4750a = this.f17392a;
        return abstractC4750a != null && abstractC4750a.mo34174a(surfaceTexture);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        AbstractC4750a abstractC4750a = this.f17392a;
        if (abstractC4750a != null) {
            abstractC4750a.mo34169b(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        AbstractC4750a abstractC4750a = this.f17392a;
        if (abstractC4750a != null) {
            abstractC4750a.mo34170b(surfaceTexture);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        AbstractC4751b.AbstractC4752a abstractC4752a = this.f17393b;
        if (abstractC4752a != null) {
            abstractC4752a.m34165a(i);
        }
    }

    public void setWindowVisibilityChangedListener(AbstractC4751b.AbstractC4752a abstractC4752a) {
        this.f17393b = abstractC4752a;
    }
}
