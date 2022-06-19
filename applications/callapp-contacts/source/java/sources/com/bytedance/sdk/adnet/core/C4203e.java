package com.bytedance.sdk.adnet.core;

import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.AbstractC4250d;
import com.mopub.volley.DefaultRetryPolicy;
/* renamed from: com.bytedance.sdk.adnet.core.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/e.class */
public class C4203e implements AbstractC4250d {

    /* renamed from: a */
    private int f15418a;

    /* renamed from: b */
    private int f15419b;

    /* renamed from: c */
    private int f15420c;

    /* renamed from: d */
    private final float f15421d;

    public C4203e() {
        this(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public C4203e(int i, int i2, float f) {
        this.f15418a = i;
        this.f15420c = i2;
        this.f15421d = f;
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4250d
    /* renamed from: a */
    public int mo36059a() {
        return this.f15418a;
    }

    /* renamed from: a */
    public C4203e m36171a(int i) {
        this.f15418a = i;
        return this;
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4250d
    /* renamed from: a */
    public void mo36058a(VAdError vAdError) throws VAdError {
        this.f15419b++;
        int i = this.f15418a;
        this.f15418a = i + ((int) (i * this.f15421d));
        if (m36169c()) {
            return;
        }
        throw vAdError;
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4250d
    /* renamed from: b */
    public int mo36057b() {
        return this.f15419b;
    }

    /* renamed from: b */
    public C4203e m36170b(int i) {
        this.f15420c = i;
        return this;
    }

    /* renamed from: c */
    protected boolean m36169c() {
        return this.f15419b <= this.f15420c;
    }
}
