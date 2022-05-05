package com.flurry.sdk;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.br */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/br.class */
public class C2888br implements AbstractC3468lq {

    /* renamed from: a */
    public static final String f4319a = "com.flurry.sdk.br";

    /* renamed from: d */
    public List<C2894bu> f4320d;

    public C2888br(AbstractC3518x xVar) {
        C2853ay k = xVar.mo32279k();
        if (k == null) {
            C3356jq.m32615a(3, f4319a, "AdController is null. Cannot create response.");
            return;
        }
        String str = k.f4112c;
        String str2 = k.f4113d;
        this.f4320d = new ArrayList();
        m33467a(xVar, k);
    }

    @Override // com.flurry.sdk.AbstractC3468lq
    /* renamed from: a */
    public final List<C2894bu> mo32414a() {
        return this.f4320d;
    }

    /* renamed from: a */
    public final void m33467a(AbstractC3518x xVar, C2853ay ayVar) {
        this.f4320d.clear();
        for (String str : ayVar.f4110a.m32649c()) {
            List<C2861bc> a = ayVar.f4110a.m32655a((C3338jg<String, C2861bc>) str);
            if (a != null && a.size() > 0) {
                this.f4320d.add(new C2894bu(str, a, xVar));
            }
        }
    }
}
