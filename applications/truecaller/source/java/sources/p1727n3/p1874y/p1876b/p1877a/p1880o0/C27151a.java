package p1727n3.p1874y.p1876b.p1877a.p1880o0;

import android.media.MediaCodec;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.o0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/o0/a.class */
public final class C27151a {

    /* renamed from: a */
    public byte[] f75967a;

    /* renamed from: b */
    public int[] f75968b;

    /* renamed from: c */
    public int[] f75969c;

    /* renamed from: d */
    public final MediaCodec.CryptoInfo f75970d;

    /* renamed from: e */
    public final C27153b f75971e;

    /* renamed from: n3.y.b.a.o0.a$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/o0/a$b.class */
    public static final class C27153b {

        /* renamed from: a */
        public final MediaCodec.CryptoInfo f75972a;

        /* renamed from: b */
        public final MediaCodec.CryptoInfo.Pattern f75973b = new MediaCodec.CryptoInfo.Pattern(0, 0);

        public C27153b(MediaCodec.CryptoInfo cryptoInfo, C27152a c27152a) {
            this.f75972a = cryptoInfo;
        }
    }

    public C27151a() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f75970d = cryptoInfo;
        this.f75971e = C27445x.f77229a >= 24 ? new C27153b(cryptoInfo, null) : null;
    }
}
