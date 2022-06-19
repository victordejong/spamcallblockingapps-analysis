package p193e.p1545k.p1546a.p1548b.p1549a0;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
/* renamed from: e.k.a.b.a0.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/k.class */
public class C23359k extends C23358j {

    /* renamed from: d */
    public final AbstractC23376j[] f64584d;

    /* renamed from: e */
    public final boolean f64585e;

    /* renamed from: f */
    public int f64586f;

    /* renamed from: g */
    public boolean f64587g;

    public C23359k(boolean z, AbstractC23376j[] abstractC23376jArr) {
        super(abstractC23376jArr[0]);
        this.f64585e = z;
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (this.f64583c.mo7154L1()) {
                z2 = true;
            }
        }
        this.f64587g = z2;
        this.f64584d = abstractC23376jArr;
        this.f64586f = 1;
    }

    /* renamed from: y2 */
    public static C23359k m7240y2(boolean z, AbstractC23376j abstractC23376j, AbstractC23376j abstractC23376j2) {
        boolean z2 = abstractC23376j instanceof C23359k;
        if (z2 || (abstractC23376j2 instanceof C23359k)) {
            ArrayList arrayList = new ArrayList();
            if (z2) {
                ((C23359k) abstractC23376j).m7241x2(arrayList);
            } else {
                arrayList.add(abstractC23376j);
            }
            if (abstractC23376j2 instanceof C23359k) {
                ((C23359k) abstractC23376j2).m7241x2(arrayList);
            } else {
                arrayList.add(abstractC23376j2);
            }
            return new C23359k(z, (AbstractC23376j[]) arrayList.toArray(new AbstractC23376j[arrayList.size()]));
        }
        return new C23359k(z, new AbstractC23376j[]{abstractC23376j, abstractC23376j2});
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        boolean z;
        do {
            this.f64583c.close();
            int i = this.f64586f;
            AbstractC23376j[] abstractC23376jArr = this.f64584d;
            if (i < abstractC23376jArr.length) {
                this.f64586f = i + 1;
                this.f64583c = abstractC23376jArr[i];
                z = true;
            } else {
                z = false;
            }
        } while (z);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: i2 */
    public EnumC23381m mo5811i2() throws IOException {
        EnumC23381m enumC23381m;
        AbstractC23376j abstractC23376j = this.f64583c;
        if (abstractC23376j == null) {
            return null;
        }
        if (this.f64587g) {
            this.f64587g = false;
            return abstractC23376j.mo7142l();
        }
        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
        if (mo5811i2 != null) {
            return mo5811i2;
        }
        while (true) {
            int i = this.f64586f;
            AbstractC23376j[] abstractC23376jArr = this.f64584d;
            enumC23381m = null;
            if (i >= abstractC23376jArr.length) {
                break;
            }
            this.f64586f = i + 1;
            AbstractC23376j abstractC23376j2 = abstractC23376jArr[i];
            this.f64583c = abstractC23376j2;
            if (this.f64585e && abstractC23376j2.mo7154L1()) {
                enumC23381m = this.f64583c.mo7148S();
                break;
            }
            enumC23381m = this.f64583c.mo5811i2();
            if (enumC23381m != null) {
                break;
            }
        }
        return enumC23381m;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: w2 */
    public AbstractC23376j mo7139w2() throws IOException {
        if (this.f64583c.mo7142l() == EnumC23381m.START_OBJECT || this.f64583c.mo7142l() == EnumC23381m.START_ARRAY) {
            int i = 1;
            while (true) {
                EnumC23381m mo5811i2 = mo5811i2();
                if (mo5811i2 == null) {
                    return this;
                }
                if (mo5811i2.f64708e) {
                    i++;
                } else if (mo5811i2.f64709f) {
                    int i2 = i - 1;
                    i = i2;
                    if (i2 == 0) {
                        return this;
                    }
                } else {
                    continue;
                }
            }
        } else {
            return this;
        }
    }

    /* renamed from: x2 */
    public void m7241x2(List<AbstractC23376j> list) {
        int length = this.f64584d.length;
        for (int i = this.f64586f - 1; i < length; i++) {
            AbstractC23376j abstractC23376j = this.f64584d[i];
            if (abstractC23376j instanceof C23359k) {
                ((C23359k) abstractC23376j).m7241x2(list);
            } else {
                list.add(abstractC23376j);
            }
        }
    }
}
