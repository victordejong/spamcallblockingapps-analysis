package com.bytedance.sdk.adnet.p141b;

import com.bytedance.sdk.adnet.core.C4211i;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.p143d.C4227c;
import java.io.UnsupportedEncodingException;
/* renamed from: com.bytedance.sdk.adnet.b.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/j.class */
public class C4185j extends Request<String> {

    /* renamed from: c */
    private final Object f15323c = new Object();

    /* renamed from: d */
    private C4218m.AbstractC4219a<String> f15324d;

    public C4185j(int i, String str, C4218m.AbstractC4219a<String> abstractC4219a) {
        super(i, str, abstractC4219a);
        this.f15324d = abstractC4219a;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public C4218m<String> mo33324a(C4211i c4211i) {
        String str;
        try {
            str = new String(c4211i.f15450b, C4227c.m36091a(c4211i.f15451c));
        } catch (UnsupportedEncodingException e) {
            str = new String(c4211i.f15450b);
        }
        return C4218m.m36112a(str, C4227c.m36094a(c4211i));
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public void mo33323a(C4218m<String> c4218m) {
        C4218m.AbstractC4219a<String> abstractC4219a;
        synchronized (this.f15323c) {
            abstractC4219a = this.f15324d;
        }
        if (abstractC4219a != null) {
            abstractC4219a.mo33422a(c4218m);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f15323c) {
            this.f15324d = null;
        }
    }
}
