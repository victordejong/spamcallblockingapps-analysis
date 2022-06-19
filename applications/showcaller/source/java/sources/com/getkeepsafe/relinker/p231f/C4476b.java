package com.getkeepsafe.relinker.p231f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.getkeepsafe.relinker.f.b */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/b.class */
public class C4476b extends AbstractC4477c {
    public C4476b(C4483i c4483i, AbstractC4478d abstractC4478d, long j, int i) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(abstractC4478d.f13615a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + (i * 16);
        this.f13613a = c4483i.m22383q(allocate, j2);
        this.f13614b = c4483i.m22383q(allocate, j2 + 8);
    }
}
