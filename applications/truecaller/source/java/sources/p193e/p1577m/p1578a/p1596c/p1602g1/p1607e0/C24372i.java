package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import com.google.android.exoplayer2.Format;
import java.util.Collections;
import java.util.List;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/i.class */
public final class C24372i implements AbstractC24373j {

    /* renamed from: a */
    public final List<AbstractC24361c0.C24362a> f67852a;

    /* renamed from: b */
    public final AbstractC24422s[] f67853b;

    /* renamed from: c */
    public boolean f67854c;

    /* renamed from: d */
    public int f67855d;

    /* renamed from: e */
    public int f67856e;

    /* renamed from: f */
    public long f67857f;

    public C24372i(List<AbstractC24361c0.C24362a> list) {
        this.f67852a = list;
        this.f67853b = new AbstractC24422s[list.size()];
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: a */
    public void mo5184a() {
        this.f67854c = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: b */
    public void mo5183b() {
        if (this.f67854c) {
            for (AbstractC24422s abstractC24422s : this.f67853b) {
                abstractC24422s.mo4927c(this.f67857f, 1, this.f67856e, 0, null);
            }
            this.f67854c = false;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: c */
    public void mo5182c(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f67854c = true;
        this.f67857f = j;
        this.f67856e = 0;
        this.f67855d = 2;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: d */
    public void mo5181d(C24798t c24798t) {
        AbstractC24422s[] abstractC24422sArr;
        if (this.f67854c) {
            if (this.f67855d == 2 && !m5191f(c24798t, 32)) {
                return;
            }
            if (this.f67855d == 1 && !m5191f(c24798t, 0)) {
                return;
            }
            int i = c24798t.f69505b;
            int m4545a = c24798t.m4545a();
            for (AbstractC24422s abstractC24422s : this.f67853b) {
                c24798t.m4547C(i);
                abstractC24422s.mo4929a(c24798t, m4545a);
            }
            this.f67856e += m4545a;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: e */
    public void mo5180e(AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        for (int i = 0; i < this.f67853b.length; i++) {
            AbstractC24361c0.C24362a c24362a = this.f67852a.get(i);
            c24365d.m5203a();
            AbstractC24422s mo4960i = abstractC24409i.mo4960i(c24365d.m5201c(), 3);
            mo4960i.mo4928b(Format.m39252h(c24365d.m5202b(), "application/dvbsubs", null, -1, 0, Collections.singletonList(c24362a.f67782b), c24362a.f67781a, null));
            this.f67853b[i] = mo4960i;
        }
    }

    /* renamed from: f */
    public final boolean m5191f(C24798t c24798t, int i) {
        if (c24798t.m4545a() == 0) {
            return false;
        }
        if (c24798t.m4529q() != i) {
            this.f67854c = false;
        }
        this.f67855d--;
        return this.f67854c;
    }
}
