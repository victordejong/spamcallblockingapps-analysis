package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.n */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/n.class */
public final class C3167n implements AbstractC3168o {

    /* renamed from: a */
    public final List<AbstractC3155h0.C3156a> f11591a;

    /* renamed from: b */
    public final AbstractC3054q[] f11592b;

    /* renamed from: c */
    public boolean f11593c;

    /* renamed from: d */
    public int f11594d;

    /* renamed from: e */
    public int f11595e;

    /* renamed from: f */
    public long f11596f;

    public C3167n(List<AbstractC3155h0.C3156a> list) {
        this.f11591a = list;
        this.f11592b = new AbstractC3054q[list.size()];
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        this.f11593c = false;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        if ((i & 4) != 0) {
            this.f11593c = true;
            this.f11596f = j;
            this.f11595e = 0;
            this.f11594d = 2;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) {
        AbstractC3054q[] qVarArr;
        if (!this.f11593c) {
            return;
        }
        if (this.f11594d != 2 || m27640a(vVar, 32)) {
            if (this.f11594d != 1 || m27640a(vVar, 0)) {
                int c = vVar.m28543c();
                int a = vVar.m28552a();
                for (AbstractC3054q qVar : this.f11592b) {
                    vVar.m28538e(c);
                    qVar.mo28036a(vVar, a);
                }
                this.f11595e += a;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        for (int i = 0; i < this.f11592b.length; i++) {
            AbstractC3155h0.C3156a aVar = this.f11591a.get(i);
            dVar.m27684a();
            AbstractC3054q a = iVar.mo28048a(dVar.m27682c(), 3);
            a.mo28034a(Format.m18696a(dVar.m27683b(), "application/dvbsubs", null, -1, 0, Collections.singletonList(aVar.f11519b), aVar.f11518a, null));
            this.f11592b[i] = a;
        }
    }

    /* renamed from: a */
    public final boolean m27640a(C2904v vVar, int i) {
        if (vVar.m28552a() == 0) {
            return false;
        }
        if (vVar.m28524r() != i) {
            this.f11593c = false;
        }
        this.f11594d--;
        return this.f11593c;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
        if (this.f11593c) {
            for (AbstractC3054q qVar : this.f11592b) {
                qVar.mo28037a(this.f11596f, 1, this.f11595e, 0, null);
            }
            this.f11593c = false;
        }
    }
}
