package p193e.p1451f.p1452a.p1479s;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.s.a */
/* loaded from: classes-dex2jar.jar:e/f/a/s/a.class */
public final class C22607a implements AbstractC22263f {

    /* renamed from: d */
    public static final /* synthetic */ int f62619d = 0;

    /* renamed from: b */
    public final int f62620b;

    /* renamed from: c */
    public final AbstractC22263f f62621c;

    public C22607a(int i, AbstractC22263f abstractC22263f) {
        this.f62620b = i;
        this.f62621c = abstractC22263f;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    /* renamed from: b */
    public void mo8036b(MessageDigest messageDigest) {
        this.f62621c.mo8036b(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f62620b).array());
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C22607a) {
            C22607a c22607a = (C22607a) obj;
            z = false;
            if (this.f62620b == c22607a.f62620b) {
                z = false;
                if (this.f62621c.equals(c22607a.f62621c)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public int hashCode() {
        return C22623j.m8017g(this.f62621c, this.f62620b);
    }
}
