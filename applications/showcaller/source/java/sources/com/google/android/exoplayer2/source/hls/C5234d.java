package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
import com.google.android.exoplayer2.upstream.C5480k;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.util.C5508e;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.google.android.exoplayer2.source.hls.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/d.class */
class C5234d implements AbstractC5478j {

    /* renamed from: b */
    private final AbstractC5478j f16455b;

    /* renamed from: c */
    private final byte[] f16456c;

    /* renamed from: d */
    private final byte[] f16457d;

    /* renamed from: e */
    private CipherInputStream f16458e;

    public C5234d(AbstractC5478j abstractC5478j, byte[] bArr, byte[] bArr2) {
        this.f16455b = abstractC5478j;
        this.f16456c = bArr;
        this.f16457d = bArr2;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: a */
    public final void mo18950a(AbstractC5497x abstractC5497x) {
        this.f16455b.mo18950a(abstractC5497x);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public final long mo18949b(C5481l c5481l) {
        try {
            Cipher m20086d = m20086d();
            try {
                m20086d.init(2, new SecretKeySpec(this.f16456c, "AES"), new IvParameterSpec(this.f16457d));
                C5480k c5480k = new C5480k(this.f16455b, c5481l);
                this.f16458e = new CipherInputStream(c5480k, m20086d);
                c5480k.m19020e();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public final Uri mo18948c() {
        return this.f16455b.mo18948c();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        if (this.f16458e != null) {
            this.f16458e = null;
            this.f16455b.close();
        }
    }

    /* renamed from: d */
    protected Cipher m20086d() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public final Map<String, List<String>> getResponseHeaders() {
        return this.f16455b.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public final int read(byte[] bArr, int i, int i2) {
        C5508e.m18911e(this.f16458e);
        int read = this.f16458e.read(bArr, i, i2);
        int i3 = read;
        if (read < 0) {
            i3 = -1;
        }
        return i3;
    }
}
