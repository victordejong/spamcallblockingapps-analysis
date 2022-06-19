package pl.droidsonroids.relinker.p346f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: pl.droidsonroids.relinker.f.g */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/f/g.class */
public class C9730g extends AbstractC9727d {

    /* renamed from: j */
    private final C9732i f41011j;

    public C9730g(boolean z, C9732i c9732i) {
        this.f40997a = z;
        this.f41011j = c9732i;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f40998b = c9732i.m3p(allocate, 16L);
        this.f40999c = c9732i.m0y(allocate, 28L);
        this.f41000d = c9732i.m0y(allocate, 32L);
        this.f41001e = c9732i.m3p(allocate, 42L);
        this.f41002f = c9732i.m3p(allocate, 44L);
        this.f41003g = c9732i.m3p(allocate, 46L);
        this.f41004h = c9732i.m3p(allocate, 48L);
        this.f41005i = c9732i.m3p(allocate, 50L);
    }

    @Override // pl.droidsonroids.relinker.p346f.AbstractC9727d
    /* renamed from: a */
    public AbstractC9726c mo11a(long j, int i) {
        return new C9724a(this.f41011j, this, j, i);
    }

    @Override // pl.droidsonroids.relinker.p346f.AbstractC9727d
    /* renamed from: b */
    public AbstractC9728e mo10b(long j) {
        return new C9733j(this.f41011j, this, j);
    }

    @Override // pl.droidsonroids.relinker.p346f.AbstractC9727d
    /* renamed from: c */
    public AbstractC9729f mo9c(int i) {
        return new C9735l(this.f41011j, this, i);
    }
}
