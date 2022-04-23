package com.google.android.exoplayer2.decoder;

import android.media.MediaCodec;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20827a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f20828b;

    /* renamed from: c  reason: collision with root package name */
    public int f20829c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f20830d;
    public int[] e;
    public int f;
    public int g;
    public int h;
    public final MediaCodec.CryptoInfo i;
    public final a j;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f20831a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaCodec.CryptoInfo.Pattern f20832b;

        private a(MediaCodec.CryptoInfo cryptoInfo) {
            this.f20831a = cryptoInfo;
            this.f20832b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.i = cryptoInfo;
        this.j = af.f22275a >= 24 ? new a(cryptoInfo) : null;
    }
}
