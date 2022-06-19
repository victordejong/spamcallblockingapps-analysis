package p193e.p1451f.p1452a.p1457n.p1464p;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
/* renamed from: e.f.a.n.p.b */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/b.class */
public class C22403b<Data> implements AbstractC22436n<byte[], Data> {

    /* renamed from: a */
    public final AbstractC22406b<Data> f62245a;

    /* renamed from: e.f.a.n.p.b$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/b$a.class */
    public static class C22404a implements AbstractC22438o<byte[], ByteBuffer> {

        /* renamed from: e.f.a.n.p.b$a$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/p/b$a$a.class */
        public class C22405a implements AbstractC22406b<ByteBuffer> {
            public C22405a(C22404a c22404a) {
            }

            @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22403b.AbstractC22406b
            /* renamed from: a */
            public Class<ByteBuffer> mo8244a() {
                return ByteBuffer.class;
            }

            @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22403b.AbstractC22406b
            /* renamed from: b */
            public ByteBuffer mo8243b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<byte[], ByteBuffer> mo8212c(C22444r c22444r) {
            return new C22403b(new C22405a(this));
        }
    }

    /* renamed from: e.f.a.n.p.b$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/b$b.class */
    public interface AbstractC22406b<Data> {
        /* renamed from: a */
        Class<Data> mo8244a();

        /* renamed from: b */
        Data mo8243b(byte[] bArr);
    }

    /* renamed from: e.f.a.n.p.b$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/b$c.class */
    public static class C22407c<Data> implements AbstractC22274d<Data> {

        /* renamed from: a */
        public final byte[] f62246a;

        /* renamed from: b */
        public final AbstractC22406b<Data> f62247b;

        public C22407c(byte[] bArr, AbstractC22406b<Data> abstractC22406b) {
            this.f62246a = bArr;
            this.f62247b = abstractC22406b;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: a */
        public Class<Data> mo8220a() {
            return this.f62247b.mo8244a();
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: b */
        public void mo8219b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: c */
        public EnumC22258a mo8218c() {
            return EnumC22258a.LOCAL;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        public void cancel() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: d */
        public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super Data> abstractC22275a) {
            abstractC22275a.mo8231e((Data) this.f62247b.mo8243b(this.f62246a));
        }
    }

    /* renamed from: e.f.a.n.p.b$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/b$d.class */
    public static class C22408d implements AbstractC22438o<byte[], InputStream> {

        /* renamed from: e.f.a.n.p.b$d$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/p/b$d$a.class */
        public class C22409a implements AbstractC22406b<InputStream> {
            public C22409a(C22408d c22408d) {
            }

            @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22403b.AbstractC22406b
            /* renamed from: a */
            public Class<InputStream> mo8244a() {
                return InputStream.class;
            }

            @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22403b.AbstractC22406b
            /* renamed from: b */
            public InputStream mo8243b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<byte[], InputStream> mo8212c(C22444r c22444r) {
            return new C22403b(new C22409a(this));
        }
    }

    public C22403b(AbstractC22406b<Data> abstractC22406b) {
        this.f62245a = abstractC22406b;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a mo8215a(byte[] bArr, int i, int i2, C22267i c22267i) {
        byte[] bArr2 = bArr;
        return new AbstractC22436n.C22437a(new C22610d(bArr2), new C22407c(bArr2, this.f62245a));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo8214b(byte[] bArr) {
        return true;
    }
}
