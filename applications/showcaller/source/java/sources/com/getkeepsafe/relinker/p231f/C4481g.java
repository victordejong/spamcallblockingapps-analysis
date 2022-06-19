package com.getkeepsafe.relinker.p231f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.getkeepsafe.relinker.f.g */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/g.class */
public class C4481g extends AbstractC4478d {

    /* renamed from: j */
    private final C4483i f13629j;

    public C4481g(boolean z, C4483i c4483i) {
        this.f13615a = z;
        this.f13629j = c4483i;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f13616b = c4483i.m22384p(allocate, 16L);
        this.f13617c = c4483i.m22381y(allocate, 28L);
        this.f13618d = c4483i.m22381y(allocate, 32L);
        this.f13619e = c4483i.m22384p(allocate, 42L);
        this.f13620f = c4483i.m22384p(allocate, 44L);
        this.f13621g = c4483i.m22384p(allocate, 46L);
        this.f13622h = c4483i.m22384p(allocate, 48L);
        this.f13623i = c4483i.m22384p(allocate, 50L);
    }

    @Override // com.getkeepsafe.relinker.p231f.AbstractC4478d
    /* renamed from: a */
    public AbstractC4477c mo22392a(long j, int i) {
        return new C4475a(this.f13629j, this, j, i);
    }

    @Override // com.getkeepsafe.relinker.p231f.AbstractC4478d
    /* renamed from: b */
    public AbstractC4479e mo22391b(long j) {
        return new C4484j(this.f13629j, this, j);
    }

    @Override // com.getkeepsafe.relinker.p231f.AbstractC4478d
    /* renamed from: c */
    public AbstractC4480f mo22390c(int i) {
        return new C4486l(this.f13629j, this, i);
    }
}
