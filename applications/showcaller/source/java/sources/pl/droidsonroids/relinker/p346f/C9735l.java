package pl.droidsonroids.relinker.p346f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: pl.droidsonroids.relinker.f.l */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/f/l.class */
public class C9735l extends AbstractC9729f {
    public C9735l(C9732i c9732i, AbstractC9727d abstractC9727d, int i) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(abstractC9727d.f40997a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f41010a = c9732i.m0y(allocate, abstractC9727d.f41000d + (i * abstractC9727d.f41003g) + 28);
    }
}
