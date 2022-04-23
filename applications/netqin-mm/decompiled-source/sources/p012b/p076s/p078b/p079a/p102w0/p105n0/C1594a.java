package p012b.p076s.p078b.p079a.p102w0.p105n0;

import android.net.Uri;
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
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
import p012b.p076s.p078b.p079a.p111z0.C1686h;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* renamed from: b.s.b.a.w0.n0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/a.class */
public class C1594a implements AbstractC1684g {

    /* renamed from: a */
    public final AbstractC1684g f6498a;

    /* renamed from: b */
    public final byte[] f6499b;

    /* renamed from: c */
    public final byte[] f6500c;

    /* renamed from: d */
    public CipherInputStream f6501d;

    public C1594a(AbstractC1684g gVar, byte[] bArr, byte[] bArr2) {
        this.f6498a = gVar;
        this.f6499b = bArr;
        this.f6500c = bArr2;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public final long mo32144a(C1687i iVar) throws IOException {
        try {
            Cipher a = m32711a();
            try {
                a.init(2, new SecretKeySpec(this.f6499b, "AES"), new IvParameterSpec(this.f6500c));
                C1686h hVar = new C1686h(this.f6498a, iVar);
                this.f6501d = new CipherInputStream(hVar, a);
                hVar.m32387b();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: a */
    public Cipher m32711a() throws NoSuchPaddingException, NoSuchAlgorithmException {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public final void mo32326a(AbstractC1704x xVar) {
        this.f6498a.mo32326a(xVar);
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws IOException {
        if (this.f6501d != null) {
            this.f6501d = null;
            this.f6498a.close();
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public final Uri mo32142o() {
        return this.f6498a.mo32142o();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: p */
    public final Map<String, List<String>> mo32322p() {
        return this.f6498a.mo32322p();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        C1160a.m34522a(this.f6501d);
        int read = this.f6501d.read(bArr, i, i2);
        int i3 = read;
        if (read < 0) {
            i3 = -1;
        }
        return i3;
    }
}
