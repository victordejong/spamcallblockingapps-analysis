package com.bumptech.glide.load.engine.p210y;

import android.annotation.SuppressLint;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p210y.AbstractC4127h;
import com.bumptech.glide.p223p.C4378g;
/* renamed from: com.bumptech.glide.load.engine.y.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/g.class */
public class C4126g extends C4378g<AbstractC3999c, AbstractC4083s<?>> implements AbstractC4127h {

    /* renamed from: e */
    private AbstractC4127h.AbstractC4128a f12970e;

    public C4126g(long j) {
        super(j);
    }

    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4127h
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public void mo23213a(int i) {
        if (i >= 40) {
            m22734b();
        } else if (i < 20 && i != 15) {
        } else {
            m22726m(m22731h() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4127h
    /* renamed from: c */
    public /* bridge */ /* synthetic */ AbstractC4083s mo23211c(AbstractC3999c abstractC3999c, AbstractC4083s abstractC4083s) {
        return (AbstractC4083s) super.m22728k(abstractC3999c, abstractC4083s);
    }

    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4127h
    /* renamed from: d */
    public /* bridge */ /* synthetic */ AbstractC4083s mo23210d(AbstractC3999c abstractC3999c) {
        return (AbstractC4083s) super.m22727l(abstractC3999c);
    }

    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4127h
    /* renamed from: e */
    public void mo23209e(AbstractC4127h.AbstractC4128a abstractC4128a) {
        this.f12970e = abstractC4128a;
    }

    /* renamed from: n */
    public int mo22730i(AbstractC4083s<?> abstractC4083s) {
        return abstractC4083s == null ? super.mo22730i(null) : abstractC4083s.mo22856c();
    }

    /* renamed from: o */
    public void mo22729j(AbstractC3999c abstractC3999c, AbstractC4083s<?> abstractC4083s) {
        AbstractC4127h.AbstractC4128a abstractC4128a = this.f12970e;
        if (abstractC4128a == null || abstractC4083s == null) {
            return;
        }
        abstractC4128a.mo23208a(abstractC4083s);
    }
}
