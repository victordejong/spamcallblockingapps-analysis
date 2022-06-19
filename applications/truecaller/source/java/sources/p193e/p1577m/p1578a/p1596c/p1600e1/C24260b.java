package p193e.p1577m.p1578a.p1596c.p1600e1;

import android.media.MediaCodec;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.e1.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/e1/b.class */
public final class C24260b {

    /* renamed from: a */
    public byte[] f67284a;

    /* renamed from: b */
    public int[] f67285b;

    /* renamed from: c */
    public int[] f67286c;

    /* renamed from: d */
    public final MediaCodec.CryptoInfo f67287d;

    /* renamed from: e */
    public final C24262b f67288e;

    /* renamed from: e.m.a.c.e1.b$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/e1/b$b.class */
    public static final class C24262b {

        /* renamed from: a */
        public final MediaCodec.CryptoInfo f67289a;

        /* renamed from: b */
        public final MediaCodec.CryptoInfo.Pattern f67290b = new MediaCodec.CryptoInfo.Pattern(0, 0);

        public C24262b(MediaCodec.CryptoInfo cryptoInfo, C24261a c24261a) {
            this.f67289a = cryptoInfo;
        }
    }

    public C24260b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f67287d = cryptoInfo;
        this.f67288e = C24773d0.f69427a >= 24 ? new C24262b(cryptoInfo, null) : null;
    }
}
