package androidx.media2.exoplayer.external.p063b;

import android.media.MediaCodec;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.b.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/b.class */
public final class C1437b {

    /* renamed from: a */
    public byte[] f5472a;

    /* renamed from: b */
    public byte[] f5473b;

    /* renamed from: c */
    public int f5474c;

    /* renamed from: d */
    public int[] f5475d;

    /* renamed from: e */
    public int[] f5476e;

    /* renamed from: f */
    public int f5477f;

    /* renamed from: g */
    public int f5478g;

    /* renamed from: h */
    public int f5479h;

    /* renamed from: i */
    public final MediaCodec.CryptoInfo f5480i;

    /* renamed from: j */
    public final C1439a f5481j;

    /* renamed from: androidx.media2.exoplayer.external.b.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/b$a.class */
    public static final class C1439a {

        /* renamed from: a */
        public final MediaCodec.CryptoInfo f5482a;

        /* renamed from: b */
        public final MediaCodec.CryptoInfo.Pattern f5483b;

        private C1439a(MediaCodec.CryptoInfo cryptoInfo) {
            this.f5482a = cryptoInfo;
            this.f5483b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public C1437b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f5480i = cryptoInfo;
        this.f5481j = C1996ac.f8062a >= 24 ? new C1439a(cryptoInfo) : null;
    }
}
