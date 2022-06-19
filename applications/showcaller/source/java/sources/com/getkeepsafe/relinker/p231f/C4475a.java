package com.getkeepsafe.relinker.p231f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.getkeepsafe.relinker.f.a */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/a.class */
public class C4475a extends AbstractC4477c {
    public C4475a(C4483i c4483i, AbstractC4478d abstractC4478d, long j, int i) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(abstractC4478d.f13615a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + (i * 8);
        this.f13613a = c4483i.m22381y(allocate, j2);
        this.f13614b = c4483i.m22381y(allocate, j2 + 4);
    }
}
