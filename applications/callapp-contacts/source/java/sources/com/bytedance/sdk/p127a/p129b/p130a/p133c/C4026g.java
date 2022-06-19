package com.bytedance.sdk.p127a.p129b.p130a.p133c;

import com.bytedance.sdk.p127a.p129b.AbstractC4109e;
import com.bytedance.sdk.p127a.p129b.AbstractC4116i;
import com.bytedance.sdk.p127a.p129b.AbstractC4127p;
import com.bytedance.sdk.p127a.p129b.AbstractC4137t;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4008c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g;
import java.io.IOException;
import java.util.List;
/* renamed from: com.bytedance.sdk.a.b.a.c.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/g.class */
public final class C4026g implements AbstractC4137t.AbstractC4138a {

    /* renamed from: a */
    private final List<AbstractC4137t> f14601a;

    /* renamed from: b */
    private final C4013g f14602b;

    /* renamed from: c */
    private final AbstractC4021c f14603c;

    /* renamed from: d */
    private final C4008c f14604d;

    /* renamed from: e */
    private final int f14605e;

    /* renamed from: f */
    private final C4146y f14606f;

    /* renamed from: g */
    private final AbstractC4109e f14607g;

    /* renamed from: h */
    private final AbstractC4127p f14608h;

    /* renamed from: i */
    private final int f14609i;

    /* renamed from: j */
    private final int f14610j;

    /* renamed from: k */
    private final int f14611k;

    /* renamed from: l */
    private int f14612l;

    public C4026g(List<AbstractC4137t> list, C4013g c4013g, AbstractC4021c abstractC4021c, C4008c c4008c, int i, C4146y c4146y, AbstractC4109e abstractC4109e, AbstractC4127p abstractC4127p, int i2, int i3, int i4) {
        this.f14601a = list;
        this.f14604d = c4008c;
        this.f14602b = c4013g;
        this.f14603c = abstractC4021c;
        this.f14605e = i;
        this.f14606f = c4146y;
        this.f14607g = abstractC4109e;
        this.f14608h = abstractC4127p;
        this.f14609i = i2;
        this.f14610j = i3;
        this.f14611k = i4;
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t.AbstractC4138a
    /* renamed from: a */
    public final C4098aa mo36404a(C4146y c4146y) throws IOException {
        return m36869a(c4146y, this.f14602b, this.f14603c, this.f14604d);
    }

    /* renamed from: a */
    public final C4098aa m36869a(C4146y c4146y, C4013g c4013g, AbstractC4021c abstractC4021c, C4008c c4008c) throws IOException {
        if (this.f14605e < this.f14601a.size()) {
            this.f14612l++;
            if (this.f14603c != null && !this.f14604d.m36959a(c4146y.m36341a())) {
                throw new IllegalStateException("network interceptor " + this.f14601a.get(this.f14605e - 1) + " must retain the same host and port");
            } else if (this.f14603c != null && this.f14612l > 1) {
                throw new IllegalStateException("network interceptor " + this.f14601a.get(this.f14605e - 1) + " must call proceed() exactly once");
            } else {
                C4026g c4026g = new C4026g(this.f14601a, c4013g, abstractC4021c, c4008c, this.f14605e + 1, c4146y, this.f14607g, this.f14608h, this.f14609i, this.f14610j, this.f14611k);
                AbstractC4137t abstractC4137t = this.f14601a.get(this.f14605e);
                C4098aa mo36406a = abstractC4137t.mo36406a(c4026g);
                if (abstractC4021c != null && this.f14605e + 1 < this.f14601a.size() && c4026g.f14612l != 1) {
                    throw new IllegalStateException("network interceptor " + abstractC4137t + " must call proceed() exactly once");
                } else if (mo36406a == null) {
                    throw new NullPointerException("interceptor " + abstractC4137t + " returned null");
                } else if (mo36406a.m36605h() != null) {
                    return mo36406a;
                } else {
                    throw new IllegalStateException("interceptor " + abstractC4137t + " returned a response with no body");
                }
            }
        }
        throw new AssertionError();
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t.AbstractC4138a
    /* renamed from: a */
    public final C4146y mo36405a() {
        return this.f14606f;
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t.AbstractC4138a
    /* renamed from: b */
    public final int mo36403b() {
        return this.f14609i;
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t.AbstractC4138a
    /* renamed from: c */
    public final int mo36402c() {
        return this.f14610j;
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t.AbstractC4138a
    /* renamed from: d */
    public final int mo36401d() {
        return this.f14611k;
    }

    /* renamed from: e */
    public final AbstractC4116i m36868e() {
        return this.f14604d;
    }

    /* renamed from: f */
    public final C4013g m36867f() {
        return this.f14602b;
    }

    /* renamed from: g */
    public final AbstractC4021c m36866g() {
        return this.f14603c;
    }

    /* renamed from: h */
    public final AbstractC4109e m36865h() {
        return this.f14607g;
    }

    /* renamed from: i */
    public final AbstractC4127p m36864i() {
        return this.f14608h;
    }
}
