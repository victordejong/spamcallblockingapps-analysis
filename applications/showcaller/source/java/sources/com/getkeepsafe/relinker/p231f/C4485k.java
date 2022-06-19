package com.getkeepsafe.relinker.p231f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.getkeepsafe.relinker.f.k */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/k.class */
public class C4485k extends AbstractC4479e {
    public C4485k(C4483i c4483i, AbstractC4478d abstractC4478d, long j) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(abstractC4478d.f13615a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = abstractC4478d.f13617c + (j * abstractC4478d.f13619e);
        this.f13624a = c4483i.m22381y(allocate, j2);
        this.f13625b = c4483i.m22383q(allocate, 8 + j2);
        this.f13626c = c4483i.m22383q(allocate, 16 + j2);
        this.f13627d = c4483i.m22383q(allocate, j2 + 40);
    }
}
