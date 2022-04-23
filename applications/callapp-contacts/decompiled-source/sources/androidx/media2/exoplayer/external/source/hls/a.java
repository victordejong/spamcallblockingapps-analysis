package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.g;
import androidx.media2.exoplayer.external.upstream.h;
import androidx.media2.exoplayer.external.upstream.w;
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
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/a.class */
final class a implements f {

    /* renamed from: a  reason: collision with root package name */
    private final f f3639a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f3640b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f3641c;

    /* renamed from: d  reason: collision with root package name */
    private CipherInputStream f3642d;

    public a(f fVar, byte[] bArr, byte[] bArr2) {
        this.f3639a = fVar;
        this.f3640b = bArr;
        this.f3641c = bArr2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        androidx.media2.exoplayer.external.util.a.a(this.f3642d);
        int read = this.f3642d.read(bArr, i, i2);
        int i3 = read;
        if (read < 0) {
            i3 = -1;
        }
        return i3;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws IOException {
        try {
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS7Padding");
            try {
                instance.init(2, new SecretKeySpec(this.f3640b, "AES"), new IvParameterSpec(this.f3641c));
                g gVar = new g(this.f3639a, hVar);
                this.f3642d = new CipherInputStream(gVar, instance);
                gVar.a();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f3639a.a();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void a(w wVar) {
        this.f3639a.a(wVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Map<String, List<String>> b() {
        return this.f3639a.b();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws IOException {
        if (this.f3642d != null) {
            this.f3642d = null;
            this.f3639a.c();
        }
    }
}
