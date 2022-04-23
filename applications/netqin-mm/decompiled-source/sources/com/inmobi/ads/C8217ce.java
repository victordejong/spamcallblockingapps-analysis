package com.inmobi.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AbstractC8213cb;
/* renamed from: com.inmobi.ads.ce */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ce.class */
public final class C8217ce extends AbstractC8213cb {

    /* renamed from: d */
    public final C8148bd f32082d;

    /* renamed from: e */
    public boolean f32083e = false;

    public C8217ce(C8148bd bdVar) {
        super(bdVar);
        this.f32082d = bdVar;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        Context j;
        if (this.f32083e || (j = this.f32082d.m6483j()) == null) {
            return null;
        }
        C8148bd bdVar = this.f32082d;
        C8118at atVar = new C8118at(j, bdVar.f31622c, bdVar, bdVar.m6484h());
        this.f32075b = atVar;
        View a = atVar.mo6181a(view, viewGroup, false, null);
        m6183a(a);
        this.f32082d.m6475t();
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
        return this.f32082d.f31622c;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        if (!this.f32083e) {
            this.f32083e = true;
            AbstractC8213cb.AbstractC8214a aVar = this.f32075b;
            if (aVar != null) {
                aVar.mo6182a();
            }
            super.mo5933e();
        }
    }
}
