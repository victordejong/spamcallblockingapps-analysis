package p193e.p1577m.p1578a.p1596c.p1622m1;

import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24267g;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24265e;
/* renamed from: e.m.a.c.m1.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/c.class */
public abstract class AbstractC24563c extends AbstractC24267g<C24570i, AbstractC24571j, C24567g> implements AbstractC24566f {
    public AbstractC24563c(String str) {
        super(new C24570i[2], new AbstractC24571j[2]);
        C26232y.m2286x(this.f67312g == this.f67310e.length);
        for (C24265e c24265e : this.f67310e) {
            c24265e.m5329g(1024);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24566f
    /* renamed from: b */
    public void mo4878b(long j) {
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24267g
    /* renamed from: e */
    public C24567g mo4907e(C24570i c24570i, AbstractC24571j abstractC24571j, boolean z) {
        C24567g e;
        C24570i c24570i2 = c24570i;
        AbstractC24571j abstractC24571j2 = abstractC24571j;
        try {
            ByteBuffer byteBuffer = c24570i2.f67301b;
            Objects.requireNonNull(byteBuffer);
            AbstractC24565e mo4817j = mo4817j(byteBuffer.array(), byteBuffer.limit(), z);
            ?? r0 = c24570i2.f67303d;
            char c = c24570i2.f68675g;
            abstractC24571j2.timeUs = r0;
            abstractC24571j2.f68676a = mo4817j;
            if (c == RecyclerView.FOREVER_NS) {
                c = r0;
            }
            abstractC24571j2.f68677b = c;
            abstractC24571j2.clearFlag(Integer.MIN_VALUE);
            e = null;
        } catch (C24567g e2) {
            e = e2;
        }
        return e;
    }

    /* renamed from: j */
    public abstract AbstractC24565e mo4817j(byte[] bArr, int i, boolean z) throws C24567g;
}
