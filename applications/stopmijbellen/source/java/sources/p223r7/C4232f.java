package p223r7;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import p148k7.AbstractC3360m;
import p148k7.C3358l;
import p148k7.C3371t;
import p159l7.AbstractC3513c;
/* renamed from: r7.f */
/* loaded from: classes2-dex2jar.jar:r7/f.class */
public class C4232f extends C4236g {

    /* renamed from: j */
    public boolean f13249j = true;

    /* renamed from: k */
    public CRC32 f13250k = new CRC32();

    /* renamed from: r7.f$a */
    /* loaded from: classes2-dex2jar.jar:r7/f$a.class */
    public class C4233a implements C3371t.AbstractC3373b<byte[]> {

        /* renamed from: a */
        public int f13251a;

        /* renamed from: b */
        public boolean f13252b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC3360m f13253c;

        /* renamed from: d */
        public final /* synthetic */ C3371t f13254d;

        /* renamed from: r7.f$a$a */
        /* loaded from: classes2-dex2jar.jar:r7/f$a$a.class */
        public class C4234a implements AbstractC3513c {
            public C4234a() {
                C4233a.this = r4;
            }

            @Override // p159l7.AbstractC3513c
            /* renamed from: c */
            public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
                if (C4233a.this.f13252b) {
                    while (c3358l.m2337p() > 0) {
                        ByteBuffer m2338o = c3358l.m2338o();
                        C4232f.this.f13250k.update(m2338o.array(), m2338o.position() + m2338o.arrayOffset(), m2338o.remaining());
                        C3358l.m2340m(m2338o);
                    }
                }
                c3358l.m2339n();
                C4233a.this.m1265b();
            }
        }

        /* renamed from: r7.f$a$b */
        /* loaded from: classes2-dex2jar.jar:r7/f$a$b.class */
        public class C4235b implements C3371t.AbstractC3373b<byte[]> {
            public C4235b() {
                C4233a.this = r4;
            }

            @Override // p148k7.C3371t.AbstractC3373b
            /* renamed from: a */
            public void mo1263a(byte[] bArr) {
                if (((short) C4232f.this.f13250k.getValue()) != C4232f.m1266p(bArr, 0, ByteOrder.LITTLE_ENDIAN)) {
                    C4232f.this.mo1262n(new IOException("CRC mismatch"));
                    return;
                }
                C4232f.this.f13250k.reset();
                C4233a c4233a = C4233a.this;
                C4232f c4232f = C4232f.this;
                c4232f.f13249j = false;
                c4232f.mo1827o(c4233a.f13253c);
            }
        }

        public C4233a(AbstractC3360m abstractC3360m, C3371t c3371t) {
            C4232f.this = r4;
            this.f13253c = abstractC3360m;
            this.f13254d = c3371t;
        }

        @Override // p148k7.C3371t.AbstractC3373b
        /* renamed from: a */
        public void mo1263a(byte[] bArr) {
            byte[] bArr2 = bArr;
            short m1266p = C4232f.m1266p(bArr2, 0, ByteOrder.LITTLE_ENDIAN);
            boolean z = true;
            if (m1266p != -29921) {
                C4232f.this.mo1262n(new IOException(String.format(Locale.ENGLISH, "unknown format (magic number %x)", Short.valueOf(m1266p))));
                this.f13253c.mo939b(new AbstractC3513c.C3514a());
                return;
            }
            byte b = bArr2[3];
            this.f13251a = b;
            if ((b & 2) == 0) {
                z = false;
            }
            this.f13252b = z;
            if (z) {
                C4232f.this.f13250k.update(bArr2, 0, bArr2.length);
            }
            if ((this.f13251a & 4) != 0) {
                this.f13254d.m2335a(2, new C4231e(this));
            } else {
                m1264c();
            }
        }

        /* renamed from: b */
        public final void m1265b() {
            if (this.f13252b) {
                this.f13254d.m2335a(2, new C4235b());
                return;
            }
            C4232f c4232f = C4232f.this;
            c4232f.f13249j = false;
            c4232f.mo1827o(this.f13253c);
        }

        /* renamed from: c */
        public final void m1264c() {
            C3371t c3371t = new C3371t(this.f13253c);
            C4234a c4234a = new C4234a();
            int i = this.f13251a;
            if ((i & 8) != 0) {
                c3371t.f11402b.add(new C3371t.C3374c((byte) 0, c4234a));
            } else if ((i & 16) != 0) {
                c3371t.f11402b.add(new C3371t.C3374c((byte) 0, c4234a));
            } else {
                m1265b();
            }
        }
    }

    public C4232f() {
        super(new Inflater(true));
    }

    /* renamed from: p */
    public static short m1266p(byte[] bArr, int i, ByteOrder byteOrder) {
        int i2;
        byte b;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            i2 = bArr[i] << 8;
            b = bArr[i + 1];
        } else {
            i2 = bArr[i + 1] << 8;
            b = bArr[i];
        }
        return (short) ((b & 255) | i2);
    }

    @Override // p223r7.C4236g, p148k7.C3367r, p159l7.AbstractC3513c
    /* renamed from: c */
    public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
        if (!this.f13249j) {
            super.mo1099c(abstractC3360m, c3358l);
            return;
        }
        C3371t c3371t = new C3371t(abstractC3360m);
        c3371t.m2335a(10, new C4233a(abstractC3360m, c3371t));
    }
}
