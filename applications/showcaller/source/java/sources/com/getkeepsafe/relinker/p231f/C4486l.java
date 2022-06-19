package com.getkeepsafe.relinker.p231f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.getkeepsafe.relinker.f.l */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/l.class */
public class C4486l extends AbstractC4480f {
    public C4486l(C4483i c4483i, AbstractC4478d abstractC4478d, int i) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(abstractC4478d.f13615a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f13628a = c4483i.m22381y(allocate, abstractC4478d.f13618d + (i * abstractC4478d.f13621g) + 28);
    }
}
