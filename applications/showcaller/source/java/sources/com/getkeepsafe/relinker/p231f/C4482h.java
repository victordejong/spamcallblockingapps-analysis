package com.getkeepsafe.relinker.p231f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.getkeepsafe.relinker.f.h */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/h.class */
public class C4482h extends AbstractC4478d {

    /* renamed from: j */
    private final C4483i f13630j;

    public C4482h(boolean z, C4483i c4483i) {
        this.f13615a = z;
        this.f13630j = c4483i;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f13616b = c4483i.m22384p(allocate, 16L);
        this.f13617c = c4483i.m22383q(allocate, 32L);
        this.f13618d = c4483i.m22383q(allocate, 40L);
        this.f13619e = c4483i.m22384p(allocate, 54L);
        this.f13620f = c4483i.m22384p(allocate, 56L);
        this.f13621g = c4483i.m22384p(allocate, 58L);
        this.f13622h = c4483i.m22384p(allocate, 60L);
        this.f13623i = c4483i.m22384p(allocate, 62L);
    }

    @Override // com.getkeepsafe.relinker.p231f.AbstractC4478d
    /* renamed from: a */
    public AbstractC4477c mo22392a(long j, int i) {
        return new C4476b(this.f13630j, this, j, i);
    }

    @Override // com.getkeepsafe.relinker.p231f.AbstractC4478d
    /* renamed from: b */
    public AbstractC4479e mo22391b(long j) {
        return new C4485k(this.f13630j, this, j);
    }

    @Override // com.getkeepsafe.relinker.p231f.AbstractC4478d
    /* renamed from: c */
    public AbstractC4480f mo22390c(int i) {
        return new C4487m(this.f13630j, this, i);
    }
}
