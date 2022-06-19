package com.bumptech.glide.load.p212i;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p222o.C4367d;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.i.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/b.class */
public class C4153b<Data> implements AbstractC4191n<byte[], Data> {

    /* renamed from: a */
    private final AbstractC4156b<Data> f13014a;

    /* renamed from: com.bumptech.glide.load.i.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/b$a.class */
    public static class C4154a implements AbstractC4193o<byte[], ByteBuffer> {

        /* renamed from: com.bumptech.glide.load.i.b$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/b$a$a.class */
        class C4155a implements AbstractC4156b<ByteBuffer> {
            C4155a() {
                C4154a.this = r4;
            }

            @Override // com.bumptech.glide.load.p212i.C4153b.AbstractC4156b
            /* renamed from: a */
            public Class<ByteBuffer> mo23175a() {
                return ByteBuffer.class;
            }

            /* renamed from: c */
            public ByteBuffer mo23174b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<byte[], ByteBuffer> mo23078b(C4199r c4199r) {
            return new C4153b(new C4155a());
        }
    }

    /* renamed from: com.bumptech.glide.load.i.b$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/b$b.class */
    public interface AbstractC4156b<Data> {
        /* renamed from: a */
        Class<Data> mo23175a();

        /* renamed from: b */
        Data mo23174b(byte[] bArr);
    }

    /* renamed from: com.bumptech.glide.load.i.b$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/b$c.class */
    public static class C4157c<Data> implements AbstractC4007d<Data> {

        /* renamed from: d */
        private final byte[] f13016d;

        /* renamed from: e */
        private final AbstractC4156b<Data> f13017e;

        C4157c(byte[] bArr, AbstractC4156b<Data> abstractC4156b) {
            this.f13016d = bArr;
            this.f13017e = abstractC4156b;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: a */
        public Class<Data> mo23090a() {
            return this.f13017e.mo23175a();
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: b */
        public void mo23089b() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: d */
        public DataSource mo23087d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: e */
        public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super Data> abstractC4008a) {
            abstractC4008a.mo23126f((Data) this.f13017e.mo23174b(this.f13016d));
        }
    }

    /* renamed from: com.bumptech.glide.load.i.b$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/b$d.class */
    public static class C4158d implements AbstractC4193o<byte[], InputStream> {

        /* renamed from: com.bumptech.glide.load.i.b$d$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/b$d$a.class */
        class C4159a implements AbstractC4156b<InputStream> {
            C4159a() {
                C4158d.this = r4;
            }

            @Override // com.bumptech.glide.load.p212i.C4153b.AbstractC4156b
            /* renamed from: a */
            public Class<InputStream> mo23175a() {
                return InputStream.class;
            }

            /* renamed from: c */
            public InputStream mo23174b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<byte[], InputStream> mo23078b(C4199r c4199r) {
            return new C4153b(new C4159a());
        }
    }

    public C4153b(AbstractC4156b<Data> abstractC4156b) {
        this.f13014a = abstractC4156b;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<Data> mo23081b(byte[] bArr, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(bArr), new C4157c(bArr, this.f13014a));
    }

    /* renamed from: d */
    public boolean mo23082a(byte[] bArr) {
        return true;
    }
}
