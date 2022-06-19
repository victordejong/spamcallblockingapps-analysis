package com.bumptech.glide.manager;

import com.bumptech.glide.p223p.C4383k;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.manager.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/a.class */
class C4331a implements AbstractC4344l {

    /* renamed from: a */
    private final Set<AbstractC4345m> f13314a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private boolean f13315b;

    /* renamed from: c */
    private boolean f13316c;

    @Override // com.bumptech.glide.manager.AbstractC4344l
    /* renamed from: a */
    public void mo22825a(AbstractC4345m abstractC4345m) {
        this.f13314a.add(abstractC4345m);
        if (this.f13316c) {
            abstractC4345m.onDestroy();
        } else if (this.f13315b) {
            abstractC4345m.onStart();
        } else {
            abstractC4345m.mo22567a();
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC4344l
    /* renamed from: b */
    public void mo22824b(AbstractC4345m abstractC4345m) {
        this.f13314a.remove(abstractC4345m);
    }

    /* renamed from: c */
    public void m22834c() {
        this.f13316c = true;
        for (AbstractC4345m abstractC4345m : C4383k.m22709i(this.f13314a)) {
            abstractC4345m.onDestroy();
        }
    }

    /* renamed from: d */
    public void m22833d() {
        this.f13315b = true;
        for (AbstractC4345m abstractC4345m : C4383k.m22709i(this.f13314a)) {
            abstractC4345m.onStart();
        }
    }

    /* renamed from: e */
    public void m22832e() {
        this.f13315b = false;
        for (AbstractC4345m abstractC4345m : C4383k.m22709i(this.f13314a)) {
            abstractC4345m.mo22567a();
        }
    }
}
