package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzehb;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: c.d.b.d.g.a.b60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b60.class */
public final class b60 extends ThreadLocal<Cipher> {
    /* renamed from: a */
    public static Cipher m27181a() {
        try {
            return zzehb.f28023f.m12561a("AES/CTR/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* synthetic */ Cipher initialValue() {
        return m27181a();
    }
}
