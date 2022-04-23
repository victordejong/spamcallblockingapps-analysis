package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzehb;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: c.d.b.d.g.a.a60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/a60.class */
public final class a60 extends ThreadLocal<Cipher> {
    /* renamed from: a */
    public static Cipher m27244a() {
        try {
            return zzehb.f28023f.m12561a("AES/CTR/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* synthetic */ Cipher initialValue() {
        return m27244a();
    }
}
