package com.flurry.sdk;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.bu */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bu.class */
public final class C2894bu implements AbstractC3471ls {

    /* renamed from: a */
    public String f4355a;

    /* renamed from: b */
    public List<C2890bt> f4356b = new ArrayList();

    public C2894bu(String str, List<C2861bc> list, AbstractC3518x xVar) {
        this.f4355a = str;
        m33458a(list, xVar);
    }

    @Override // com.flurry.sdk.AbstractC3471ls
    /* renamed from: a */
    public final String mo32386a() {
        return this.f4355a;
    }

    /* renamed from: a */
    public final void m33458a(List<C2861bc> list, AbstractC3518x xVar) {
        this.f4356b.clear();
        for (C2861bc bcVar : list) {
            this.f4356b.add(new C2890bt(bcVar, xVar, this.f4355a));
        }
    }

    @Override // com.flurry.sdk.AbstractC3471ls
    /* renamed from: b */
    public final List<C2890bt> mo32385b() {
        return this.f4356b;
    }
}
