package pl.droidsonroids.relinker.p346f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: pl.droidsonroids.relinker.f.h */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/f/h.class */
public class C9731h extends AbstractC9727d {

    /* renamed from: j */
    private final C9732i f41012j;

    public C9731h(boolean z, C9732i c9732i) {
        this.f40997a = z;
        this.f41012j = c9732i;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f40998b = c9732i.m3p(allocate, 16L);
        this.f40999c = c9732i.m2q(allocate, 32L);
        this.f41000d = c9732i.m2q(allocate, 40L);
        this.f41001e = c9732i.m3p(allocate, 54L);
        this.f41002f = c9732i.m3p(allocate, 56L);
        this.f41003g = c9732i.m3p(allocate, 58L);
        this.f41004h = c9732i.m3p(allocate, 60L);
        this.f41005i = c9732i.m3p(allocate, 62L);
    }

    @Override // pl.droidsonroids.relinker.p346f.AbstractC9727d
    /* renamed from: a */
    public AbstractC9726c mo11a(long j, int i) {
        return new C9725b(this.f41012j, this, j, i);
    }

    @Override // pl.droidsonroids.relinker.p346f.AbstractC9727d
    /* renamed from: b */
    public AbstractC9728e mo10b(long j) {
        return new C9734k(this.f41012j, this, j);
    }

    @Override // pl.droidsonroids.relinker.p346f.AbstractC9727d
    /* renamed from: c */
    public AbstractC9729f mo9c(int i) {
        return new C9736m(this.f41012j, this, i);
    }
}
