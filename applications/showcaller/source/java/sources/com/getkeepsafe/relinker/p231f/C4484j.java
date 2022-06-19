package com.getkeepsafe.relinker.p231f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.getkeepsafe.relinker.f.j */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/j.class */
public class C4484j extends AbstractC4479e {
    public C4484j(C4483i c4483i, AbstractC4478d abstractC4478d, long j) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(abstractC4478d.f13615a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = abstractC4478d.f13617c + (j * abstractC4478d.f13619e);
        this.f13624a = c4483i.m22381y(allocate, j2);
        this.f13625b = c4483i.m22381y(allocate, 4 + j2);
        this.f13626c = c4483i.m22381y(allocate, 8 + j2);
        this.f13627d = c4483i.m22381y(allocate, j2 + 20);
    }
}
