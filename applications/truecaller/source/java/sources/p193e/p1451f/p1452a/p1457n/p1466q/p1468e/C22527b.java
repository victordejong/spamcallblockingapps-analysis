package p193e.p1451f.p1452a.p1457n.p1466q.p1468e;

import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
/* renamed from: e.f.a.n.q.e.b */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/e/b.class */
public class C22527b implements AbstractC22394w<byte[]> {

    /* renamed from: a */
    public final byte[] f62423a;

    public C22527b(byte[] bArr) {
        Objects.requireNonNull(bArr, "Argument must not be null");
        this.f62423a = bArr;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: a */
    public int mo8163a() {
        return this.f62423a.length;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: b */
    public void mo8162b() {
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: c */
    public Class<byte[]> mo8161c() {
        return byte[].class;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    public byte[] get() {
        return this.f62423a;
    }
}
