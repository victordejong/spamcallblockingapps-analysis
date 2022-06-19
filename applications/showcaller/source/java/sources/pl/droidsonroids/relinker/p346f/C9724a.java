package pl.droidsonroids.relinker.p346f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: pl.droidsonroids.relinker.f.a */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/f/a.class */
public class C9724a extends AbstractC9726c {
    public C9724a(C9732i c9732i, AbstractC9727d abstractC9727d, long j, int i) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(abstractC9727d.f40997a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + (i * 8);
        this.f40995a = c9732i.m0y(allocate, j2);
        this.f40996b = c9732i.m0y(allocate, j2 + 4);
    }
}
