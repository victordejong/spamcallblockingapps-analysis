package p131c.p161d.p170b.p188c.p210w0;

import java.lang.reflect.Constructor;
import p131c.p161d.p170b.p188c.p210w0.p211r.C3057b;
import p131c.p161d.p170b.p188c.p210w0.p212s.C3060c;
import p131c.p161d.p170b.p188c.p210w0.p213t.C3069e;
import p131c.p161d.p170b.p188c.p210w0.p214u.C3080e;
import p131c.p161d.p170b.p188c.p210w0.p215v.C3101g;
import p131c.p161d.p170b.p188c.p210w0.p215v.C3105i;
import p131c.p161d.p170b.p188c.p210w0.p216w.C3120d;
import p131c.p161d.p170b.p188c.p210w0.p217x.C3148f;
import p131c.p161d.p170b.p188c.p210w0.p217x.C3151g0;
import p131c.p161d.p170b.p188c.p210w0.p217x.C3154h;
import p131c.p161d.p170b.p188c.p210w0.p217x.C3162j;
import p131c.p161d.p170b.p188c.p210w0.p217x.C3186z;
import p131c.p161d.p170b.p188c.p210w0.p218y.C3189b;
/* renamed from: c.d.b.c.w0.e */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/e.class */
public final class C3040e implements AbstractC3045j {

    /* renamed from: j */
    public static final Constructor<? extends AbstractC3042g> f10961j;

    /* renamed from: a */
    public boolean f10962a;

    /* renamed from: b */
    public int f10963b;

    /* renamed from: c */
    public int f10964c;

    /* renamed from: d */
    public int f10965d;

    /* renamed from: e */
    public int f10966e;

    /* renamed from: f */
    public int f10967f;

    /* renamed from: g */
    public int f10968g;

    /* renamed from: h */
    public int f10969h = 1;

    /* renamed from: i */
    public int f10970i;

    static {
        Constructor<? extends AbstractC3042g> constructor;
        try {
            constructor = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(AbstractC3042g.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f10961j = constructor;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3045j
    public AbstractC3042g[] createExtractors() {
        AbstractC3042g[] gVarArr;
        synchronized (this) {
            gVarArr = new AbstractC3042g[f10961j == null ? 13 : 14];
            gVarArr[0] = new C3069e(this.f10965d);
            int i = 1;
            gVarArr[1] = new C3101g(this.f10967f);
            gVarArr[2] = new C3105i(this.f10966e);
            gVarArr[3] = new C3080e(this.f10968g | (this.f10962a ? 1 : 0));
            gVarArr[4] = new C3162j(this.f10963b | (this.f10962a ? 1 : 0));
            gVarArr[5] = new C3148f();
            gVarArr[6] = new C3151g0(this.f10969h, this.f10970i);
            gVarArr[7] = new C3060c();
            gVarArr[8] = new C3120d();
            gVarArr[9] = new C3186z();
            gVarArr[10] = new C3189b();
            int i2 = this.f10964c;
            if (!this.f10962a) {
                i = 0;
            }
            gVarArr[11] = new C3057b(i | i2);
            gVarArr[12] = new C3154h();
            if (f10961j != null) {
                try {
                    gVarArr[13] = (AbstractC3042g) f10961j.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            }
        }
        return gVarArr;
    }
}
