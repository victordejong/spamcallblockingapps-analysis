package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.upstream.C1970g;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
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
/* renamed from: androidx.media2.exoplayer.external.source.hls.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/a.class */
final class C1781a implements AbstractC1968f {

    /* renamed from: a */
    private final AbstractC1968f f7044a;

    /* renamed from: b */
    private final byte[] f7045b;

    /* renamed from: c */
    private final byte[] f7046c;

    /* renamed from: d */
    private CipherInputStream f7047d;

    public C1781a(AbstractC1968f abstractC1968f, byte[] bArr, byte[] bArr2) {
        this.f7044a = abstractC1968f;
        this.f7045b = bArr;
        this.f7046c = bArr2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws IOException {
        C1993a.m41690a(this.f7047d);
        int read = this.f7047d.read(bArr, i, i2);
        int i3 = read;
        if (read < 0) {
            i3 = -1;
        }
        return i3;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws IOException {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            try {
                cipher.init(2, new SecretKeySpec(this.f7045b, "AES"), new IvParameterSpec(this.f7046c));
                C1970g c1970g = new C1970g(this.f7044a, c1971h);
                this.f7047d = new CipherInputStream(c1970g, cipher);
                c1970g.m41739a();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f7044a.mo41200a();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final void mo41697a(AbstractC1990w abstractC1990w) {
        this.f7044a.mo41697a(abstractC1990w);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: b */
    public final Map<String, List<String>> mo41696b() {
        return this.f7044a.mo41696b();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws IOException {
        if (this.f7047d != null) {
            this.f7047d = null;
            this.f7044a.mo41196c();
        }
    }
}
