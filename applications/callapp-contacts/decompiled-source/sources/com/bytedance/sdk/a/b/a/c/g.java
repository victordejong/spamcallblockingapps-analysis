package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.b.a.b.c;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.e;
import com.bytedance.sdk.a.b.i;
import com.bytedance.sdk.a.b.p;
import com.bytedance.sdk.a.b.t;
import com.bytedance.sdk.a.b.y;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/g.class */
public final class g implements t.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<t> f7891a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bytedance.sdk.a.b.a.b.g f7892b;

    /* renamed from: c  reason: collision with root package name */
    private final c f7893c;

    /* renamed from: d  reason: collision with root package name */
    private final c f7894d;
    private final int e;
    private final y f;
    private final e g;
    private final p h;
    private final int i;
    private final int j;
    private final int k;
    private int l;

    public g(List<t> list, com.bytedance.sdk.a.b.a.b.g gVar, c cVar, c cVar2, int i, y yVar, e eVar, p pVar, int i2, int i3, int i4) {
        this.f7891a = list;
        this.f7894d = cVar2;
        this.f7892b = gVar;
        this.f7893c = cVar;
        this.e = i;
        this.f = yVar;
        this.g = eVar;
        this.h = pVar;
        this.i = i2;
        this.j = i3;
        this.k = i4;
    }

    @Override // com.bytedance.sdk.a.b.t.a
    public final aa a(y yVar) throws IOException {
        return a(yVar, this.f7892b, this.f7893c, this.f7894d);
    }

    public final aa a(y yVar, com.bytedance.sdk.a.b.a.b.g gVar, c cVar, c cVar2) throws IOException {
        if (this.e < this.f7891a.size()) {
            this.l++;
            if (this.f7893c != null && !this.f7894d.a(yVar.a())) {
                throw new IllegalStateException("network interceptor " + this.f7891a.get(this.e - 1) + " must retain the same host and port");
            } else if (this.f7893c == null || this.l <= 1) {
                g gVar2 = new g(this.f7891a, gVar, cVar, cVar2, this.e + 1, yVar, this.g, this.h, this.i, this.j, this.k);
                t tVar = this.f7891a.get(this.e);
                aa a2 = tVar.a(gVar2);
                if (cVar != null && this.e + 1 < this.f7891a.size() && gVar2.l != 1) {
                    throw new IllegalStateException("network interceptor " + tVar + " must call proceed() exactly once");
                } else if (a2 == null) {
                    throw new NullPointerException("interceptor " + tVar + " returned null");
                } else if (a2.h() != null) {
                    return a2;
                } else {
                    throw new IllegalStateException("interceptor " + tVar + " returned a response with no body");
                }
            } else {
                throw new IllegalStateException("network interceptor " + this.f7891a.get(this.e - 1) + " must call proceed() exactly once");
            }
        } else {
            throw new AssertionError();
        }
    }

    @Override // com.bytedance.sdk.a.b.t.a
    public final y a() {
        return this.f;
    }

    @Override // com.bytedance.sdk.a.b.t.a
    public final int b() {
        return this.i;
    }

    @Override // com.bytedance.sdk.a.b.t.a
    public final int c() {
        return this.j;
    }

    @Override // com.bytedance.sdk.a.b.t.a
    public final int d() {
        return this.k;
    }

    public final i e() {
        return this.f7894d;
    }

    public final com.bytedance.sdk.a.b.a.b.g f() {
        return this.f7892b;
    }

    public final c g() {
        return this.f7893c;
    }

    public final e h() {
        return this.g;
    }

    public final p i() {
        return this.h;
    }
}
