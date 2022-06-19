package com.bumptech.glide.load.p081b;

import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p076g.C1431c;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.b.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b.class */
public class C1508b<Data> implements AbstractC1546n<byte[], Data> {

    /* renamed from: a */
    private final AbstractC1511b<Data> f4858a;

    /* renamed from: com.bumptech.glide.load.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b$a.class */
    public static class C1509a implements AbstractC1548o<byte[], ByteBuffer> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<byte[], ByteBuffer> mo16801a(C1554r c1554r) {
            return new C1508b(new AbstractC1511b<ByteBuffer>() { // from class: com.bumptech.glide.load.b.b.a.1
                @Override // com.bumptech.glide.load.p081b.C1508b.AbstractC1511b
                /* renamed from: a */
                public Class<ByteBuffer> mo16883a() {
                    return ByteBuffer.class;
                }

                /* renamed from: a */
                public ByteBuffer mo16881b(byte[] bArr) {
                    return ByteBuffer.wrap(bArr);
                }
            });
        }
    }

    /* renamed from: com.bumptech.glide.load.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b$b.class */
    public interface AbstractC1511b<Data> {
        /* renamed from: a */
        Class<Data> mo16883a();

        /* renamed from: b */
        Data mo16881b(byte[] bArr);
    }

    /* renamed from: com.bumptech.glide.load.b.b$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b$c.class */
    public static class C1512c<Data> implements AbstractC1475d<Data> {

        /* renamed from: a */
        private final byte[] f4860a;

        /* renamed from: b */
        private final AbstractC1511b<Data> f4861b;

        C1512c(byte[] bArr, AbstractC1511b<Data> abstractC1511b) {
            this.f4860a = bArr;
            this.f4861b = abstractC1511b;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public Class<Data> mo16813a() {
            return this.f4861b.mo16883a();
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super Data> abstractC1476a) {
            abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super Data>) ((Data) this.f4861b.mo16881b(this.f4860a)));
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: b */
        public void mo16811b() {
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: c */
        public void mo16810c() {
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: d */
        public EnumC1464a mo16809d() {
            return EnumC1464a.LOCAL;
        }
    }

    /* renamed from: com.bumptech.glide.load.b.b$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b$d.class */
    public static class C1513d implements AbstractC1548o<byte[], InputStream> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<byte[], InputStream> mo16801a(C1554r c1554r) {
            return new C1508b(new AbstractC1511b<InputStream>() { // from class: com.bumptech.glide.load.b.b.d.1
                /* renamed from: a */
                public InputStream mo16881b(byte[] bArr) {
                    return new ByteArrayInputStream(bArr);
                }

                @Override // com.bumptech.glide.load.p081b.C1508b.AbstractC1511b
                /* renamed from: a */
                public Class<InputStream> mo16883a() {
                    return InputStream.class;
                }
            });
        }
    }

    public C1508b(AbstractC1511b<Data> abstractC1511b) {
        this.f4858a = abstractC1511b;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(byte[] bArr, int i, int i2, C1781h c1781h) {
        return new AbstractC1546n.C1547a<>(new C1431c(bArr), new C1512c(bArr, this.f4858a));
    }

    /* renamed from: a */
    public boolean mo16803a(byte[] bArr) {
        return true;
    }
}
