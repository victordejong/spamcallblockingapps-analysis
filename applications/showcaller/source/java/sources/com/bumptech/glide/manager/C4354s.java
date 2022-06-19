package com.bumptech.glide.manager;

import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.request.p225h.AbstractC4411h;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.manager.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/s.class */
public final class C4354s implements AbstractC4345m {

    /* renamed from: d */
    private final Set<AbstractC4411h<?>> f13343d = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.AbstractC4345m
    /* renamed from: a */
    public void mo22567a() {
        for (AbstractC4411h abstractC4411h : C4383k.m22709i(this.f13343d)) {
            abstractC4411h.mo22567a();
        }
    }

    /* renamed from: j */
    public void m22785j() {
        this.f13343d.clear();
    }

    /* renamed from: k */
    public List<AbstractC4411h<?>> m22784k() {
        return C4383k.m22709i(this.f13343d);
    }

    /* renamed from: l */
    public void m22783l(AbstractC4411h<?> abstractC4411h) {
        this.f13343d.add(abstractC4411h);
    }

    /* renamed from: m */
    public void m22782m(AbstractC4411h<?> abstractC4411h) {
        this.f13343d.remove(abstractC4411h);
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    public void onDestroy() {
        for (AbstractC4411h abstractC4411h : C4383k.m22709i(this.f13343d)) {
            abstractC4411h.onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    public void onStart() {
        for (AbstractC4411h abstractC4411h : C4383k.m22709i(this.f13343d)) {
            abstractC4411h.onStart();
        }
    }
}
