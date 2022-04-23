package p012b.p076s.p078b.p079a.p086s0;

import java.lang.reflect.Constructor;
import p012b.p076s.p078b.p079a.p086s0.p087r.C1365b;
import p012b.p076s.p078b.p079a.p086s0.p088s.C1368c;
import p012b.p076s.p078b.p079a.p086s0.p089t.C1377e;
import p012b.p076s.p078b.p079a.p086s0.p090u.C1388e;
import p012b.p076s.p078b.p079a.p086s0.p091v.C1407f;
import p012b.p076s.p078b.p079a.p086s0.p091v.C1412i;
import p012b.p076s.p078b.p079a.p086s0.p092w.C1427d;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1446b;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1453e;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1458g0;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1461h;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1492y;
import p012b.p076s.p078b.p079a.p086s0.p094y.C1496b;
/* renamed from: b.s.b.a.s0.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/e.class */
public final class C1348e implements AbstractC1353j {

    /* renamed from: j */
    public static final Constructor<? extends AbstractC1350g> f5327j;

    /* renamed from: a */
    public boolean f5328a;

    /* renamed from: b */
    public int f5329b;

    /* renamed from: c */
    public int f5330c;

    /* renamed from: d */
    public int f5331d;

    /* renamed from: e */
    public int f5332e;

    /* renamed from: f */
    public int f5333f;

    /* renamed from: g */
    public int f5334g;

    /* renamed from: h */
    public int f5335h = 1;

    /* renamed from: i */
    public int f5336i;

    static {
        Constructor<? extends AbstractC1350g> constructor;
        try {
            constructor = Class.forName("androidx.media2.exoplayer.external.ext.flac.FlacExtractor").asSubclass(AbstractC1350g.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f5327j = constructor;
    }

    /* renamed from: a */
    public C1348e m33623a(int i) {
        synchronized (this) {
            this.f5329b = i;
        }
        return this;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1353j
    public AbstractC1350g[] createExtractors() {
        AbstractC1350g[] gVarArr;
        synchronized (this) {
            gVarArr = new AbstractC1350g[f5327j == null ? 13 : 14];
            gVarArr[0] = new C1377e(this.f5331d);
            int i = 1;
            gVarArr[1] = new C1407f(this.f5333f);
            gVarArr[2] = new C1412i(this.f5332e);
            gVarArr[3] = new C1388e(this.f5334g | (this.f5328a ? 1 : 0));
            gVarArr[4] = new C1461h(0L, this.f5329b | (this.f5328a ? 1 : 0));
            gVarArr[5] = new C1446b();
            gVarArr[6] = new C1458g0(this.f5335h, this.f5336i);
            gVarArr[7] = new C1368c();
            gVarArr[8] = new C1427d();
            gVarArr[9] = new C1492y();
            gVarArr[10] = new C1496b();
            int i2 = this.f5330c;
            if (!this.f5328a) {
                i = 0;
            }
            gVarArr[11] = new C1365b(i | i2);
            gVarArr[12] = new C1453e();
            if (f5327j != null) {
                try {
                    gVarArr[13] = (AbstractC1350g) f5327j.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            }
        }
        return gVarArr;
    }
}
