package pl.droidsonroids.relinker.p346f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: pl.droidsonroids.relinker.f.k */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/f/k.class */
public class C9734k extends AbstractC9728e {
    public C9734k(C9732i c9732i, AbstractC9727d abstractC9727d, long j) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(abstractC9727d.f40997a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = abstractC9727d.f40999c + (j * abstractC9727d.f41001e);
        this.f41006a = c9732i.m0y(allocate, j2);
        this.f41007b = c9732i.m2q(allocate, 8 + j2);
        this.f41008c = c9732i.m2q(allocate, 16 + j2);
        this.f41009d = c9732i.m2q(allocate, j2 + 40);
    }
}
