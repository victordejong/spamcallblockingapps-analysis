package com.bytedance.sdk.openadsdk.preload.p193a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/i.class */
public final class C5259i extends AbstractC5262l implements Iterable<AbstractC5262l> {

    /* renamed from: a */
    private final List<AbstractC5262l> f18698a = new ArrayList();

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: a */
    public final Number mo32688a() {
        if (this.f18698a.size() == 1) {
            return this.f18698a.get(0).mo32688a();
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public final void m32699a(AbstractC5262l abstractC5262l) {
        C5264n c5264n = abstractC5262l;
        if (abstractC5262l == null) {
            c5264n = C5264n.f18699a;
        }
        this.f18698a.add(c5264n);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: b */
    public final String mo32686b() {
        if (this.f18698a.size() == 1) {
            return this.f18698a.get(0).mo32686b();
        }
        throw new IllegalStateException();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: c */
    public final double mo32685c() {
        if (this.f18698a.size() == 1) {
            return this.f18698a.get(0).mo32685c();
        }
        throw new IllegalStateException();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: d */
    public final long mo32684d() {
        if (this.f18698a.size() == 1) {
            return this.f18698a.get(0).mo32684d();
        }
        throw new IllegalStateException();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: e */
    public final int mo32683e() {
        if (this.f18698a.size() == 1) {
            return this.f18698a.get(0).mo32683e();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C5259i) && ((C5259i) obj).f18698a.equals(this.f18698a);
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: f */
    public final boolean mo32682f() {
        if (this.f18698a.size() == 1) {
            return this.f18698a.get(0).mo32682f();
        }
        throw new IllegalStateException();
    }

    public final int hashCode() {
        return this.f18698a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<AbstractC5262l> iterator() {
        return this.f18698a.iterator();
    }
}
