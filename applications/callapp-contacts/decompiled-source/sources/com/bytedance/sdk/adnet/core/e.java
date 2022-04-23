package com.bytedance.sdk.adnet.core;

import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.d;
import com.mopub.volley.DefaultRetryPolicy;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/e.class */
public class e implements d {

    /* renamed from: a  reason: collision with root package name */
    private int f8296a;

    /* renamed from: b  reason: collision with root package name */
    private int f8297b;

    /* renamed from: c  reason: collision with root package name */
    private int f8298c;

    /* renamed from: d  reason: collision with root package name */
    private final float f8299d;

    public e() {
        this(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public e(int i, int i2, float f) {
        this.f8296a = i;
        this.f8298c = i2;
        this.f8299d = f;
    }

    @Override // com.bytedance.sdk.adnet.face.d
    public int a() {
        return this.f8296a;
    }

    public e a(int i) {
        this.f8296a = i;
        return this;
    }

    @Override // com.bytedance.sdk.adnet.face.d
    public void a(VAdError vAdError) throws VAdError {
        this.f8297b++;
        int i = this.f8296a;
        this.f8296a = i + ((int) (i * this.f8299d));
        if (!c()) {
            throw vAdError;
        }
    }

    @Override // com.bytedance.sdk.adnet.face.d
    public int b() {
        return this.f8297b;
    }

    public e b(int i) {
        this.f8298c = i;
        return this;
    }

    protected boolean c() {
        return this.f8297b <= this.f8298c;
    }
}
