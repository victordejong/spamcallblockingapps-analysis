package com.inmobi.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AbstractC8213cb;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.rendering.RenderView;
/* renamed from: com.inmobi.ads.cd */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cd.class */
public final class C8216cd extends AbstractC8213cb {

    /* renamed from: d */
    public final C8083ah f32079d;

    /* renamed from: e */
    public boolean f32080e = false;

    /* renamed from: f */
    public RenderView f32081f;

    public C8216cd(C8083ah ahVar, RenderView renderView) {
        super(ahVar);
        this.f32079d = ahVar;
        this.f32081f = renderView;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        Context j;
        if (this.f32080e || (j = this.f32079d.m6483j()) == null) {
            return null;
        }
        C8083ah ahVar = this.f32079d;
        this.f32075b = new C8118at(j, ahVar.f31622c, ahVar, ahVar.m6484h());
        Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "Ad markup loaded into the container will be inflated into a View.");
        View a = this.f32075b.mo6181a(view, viewGroup, z, this.f32081f);
        m6183a(a);
        this.f32079d.m6475t();
        return a;
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
        return this.f32079d.f31622c;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        if (!this.f32080e) {
            this.f32080e = true;
            AbstractC8213cb.AbstractC8214a aVar = this.f32075b;
            if (aVar != null) {
                aVar.mo6182a();
            }
            RenderView renderView = this.f32081f;
            if (renderView != null) {
                renderView.destroy();
                this.f32081f = null;
            }
            super.mo5933e();
        }
    }
}
