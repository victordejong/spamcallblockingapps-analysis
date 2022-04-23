package p012b.p076s.p112c.p114g;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import p012b.p042i.p053o.C0948h;
import p012b.p076s.p077a.AbstractC1155b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1681d;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* renamed from: b.s.c.g.a */
/* loaded from: classes-dex2jar.jar:b/s/c/g/a.class */
public final class C1716a extends AbstractC1681d {

    /* renamed from: e */
    public final AbstractC1155b f6998e;

    /* renamed from: f */
    public Uri f6999f;

    /* renamed from: g */
    public long f7000g;

    /* renamed from: h */
    public long f7001h;

    /* renamed from: i */
    public boolean f7002i;

    /* renamed from: b.s.c.g.a$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/a$a.class */
    public static final class C1717a implements AbstractC1684g.AbstractC1685a {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1155b f7003a;

        public C1717a(AbstractC1155b bVar) {
            this.f7003a = bVar;
        }

        @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g.AbstractC1685a
        public AbstractC1684g createDataSource() {
            return new C1716a(this.f7003a);
        }
    }

    public C1716a(AbstractC1155b bVar) {
        super(false);
        C0948h.m35442a(bVar);
        this.f6998e = bVar;
    }

    /* renamed from: a */
    public static AbstractC1684g.AbstractC1685a m32296a(AbstractC1155b bVar) {
        return new C1717a(bVar);
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws IOException {
        this.f6999f = iVar.f6883a;
        this.f7000g = iVar.f6887e;
        m32391b(iVar);
        long a = this.f6998e.m34561a();
        long j = iVar.f6888f;
        if (j != -1) {
            this.f7001h = j;
        } else if (a != -1) {
            this.f7001h = a - this.f7000g;
        } else {
            this.f7001h = -1L;
        }
        this.f7002i = true;
        m32390c(iVar);
        return this.f7001h;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() {
        this.f6999f = null;
        if (this.f7002i) {
            this.f7002i = false;
            m32393a();
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        return this.f6999f;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f7001h;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            i2 = (int) Math.min(j, i2);
        }
        int a = this.f6998e.m34560a(this.f7000g, bArr, i, i2);
        if (a >= 0) {
            long j2 = a;
            this.f7000g += j2;
            long j3 = this.f7001h;
            if (j3 != -1) {
                this.f7001h = j3 - j2;
            }
            m32392a(a);
            return a;
        } else if (this.f7001h == -1) {
            return -1;
        } else {
            throw new EOFException();
        }
    }
}
