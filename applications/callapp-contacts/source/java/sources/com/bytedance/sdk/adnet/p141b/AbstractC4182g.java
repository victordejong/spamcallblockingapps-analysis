package com.bytedance.sdk.adnet.p141b;

import com.bytedance.sdk.adnet.core.C4211i;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.C4221o;
import com.bytedance.sdk.adnet.core.Request;
import java.io.UnsupportedEncodingException;
/* renamed from: com.bytedance.sdk.adnet.b.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/g.class */
public abstract class AbstractC4182g<T> extends Request<T> {

    /* renamed from: c */
    private static final String f15316c = String.format("application/json; charset=%s", "utf-8");

    /* renamed from: d */
    private final Object f15317d = new Object();

    /* renamed from: e */
    private C4218m.AbstractC4219a<T> f15318e;

    /* renamed from: f */
    private final String f15319f;

    public AbstractC4182g(int i, String str, String str2, C4218m.AbstractC4219a<T> abstractC4219a) {
        super(i, str, abstractC4219a);
        this.f15318e = abstractC4219a;
        this.f15319f = str2;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public abstract C4218m<T> mo33324a(C4211i c4211i);

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public void mo33323a(C4218m<T> c4218m) {
        C4218m.AbstractC4219a<T> abstractC4219a;
        synchronized (this.f15317d) {
            abstractC4219a = this.f15318e;
        }
        if (abstractC4219a != null) {
            abstractC4219a.mo33422a(c4218m);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f15317d) {
            this.f15318e = null;
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public byte[] getBody() {
        try {
            String str = this.f15319f;
            if (str != null) {
                return str.getBytes("utf-8");
            }
            return null;
        } catch (UnsupportedEncodingException e) {
            C4221o.m36104d("Unsupported Encoding while trying to get the bytes of %s using %s", this.f15319f, "utf-8");
            return null;
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public String getBodyContentType() {
        return f15316c;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }
}
