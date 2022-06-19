package com.google.android.exoplayer2.decoder;

import android.media.MediaCodec;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.decoder.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/b.class */
public final class C10930b {

    /* renamed from: a */
    public byte[] f35345a;

    /* renamed from: b */
    public byte[] f35346b;

    /* renamed from: c */
    public int f35347c;

    /* renamed from: d */
    public int[] f35348d;

    /* renamed from: e */
    public int[] f35349e;

    /* renamed from: f */
    public int f35350f;

    /* renamed from: g */
    public int f35351g;

    /* renamed from: h */
    public int f35352h;

    /* renamed from: i */
    public final MediaCodec.CryptoInfo f35353i;

    /* renamed from: j */
    public final C10932a f35354j;

    /* renamed from: com.google.android.exoplayer2.decoder.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/b$a.class */
    public static final class C10932a {

        /* renamed from: a */
        public final MediaCodec.CryptoInfo f35355a;

        /* renamed from: b */
        public final MediaCodec.CryptoInfo.Pattern f35356b;

        private C10932a(MediaCodec.CryptoInfo cryptoInfo) {
            this.f35355a = cryptoInfo;
            this.f35356b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public C10930b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f35353i = cryptoInfo;
        this.f35354j = C11599af.f38648a >= 24 ? new C10932a(cryptoInfo) : null;
    }
}
