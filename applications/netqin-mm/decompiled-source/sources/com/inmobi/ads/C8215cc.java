package com.inmobi.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.rendering.RenderView;
/* renamed from: com.inmobi.ads.cc */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cc.class */
public final class C8215cc extends AbstractC8213cb {

    /* renamed from: d */
    public final RenderView f32078d;

    public C8215cc(RenderView renderView) {
        super(renderView);
        this.f32078d = renderView;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5945a() {
        m6183a(this.f32078d);
        return this.f32078d;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        return mo5945a();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5944a(int i) {
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5943a(Context context, int i) {
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5937a(View... viewArr) {
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: c */
    public final C8197c mo5935c() {
        return this.f32078d.getAdConfig();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
    }
}
