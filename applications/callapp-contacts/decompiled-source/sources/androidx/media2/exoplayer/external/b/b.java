package androidx.media2.exoplayer.external.b;

import android.media.MediaCodec;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f2938a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f2939b;

    /* renamed from: c  reason: collision with root package name */
    public int f2940c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f2941d;
    public int[] e;
    public int f;
    public int g;
    public int h;
    public final MediaCodec.CryptoInfo i;
    public final a j;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f2942a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaCodec.CryptoInfo.Pattern f2943b;

        private a(MediaCodec.CryptoInfo cryptoInfo) {
            this.f2942a = cryptoInfo;
            this.f2943b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.i = cryptoInfo;
        this.j = ac.f4119a >= 24 ? new a(cryptoInfo) : null;
    }
}
