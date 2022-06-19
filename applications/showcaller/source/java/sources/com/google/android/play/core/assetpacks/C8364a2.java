package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C8466a;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.play.core.assetpacks.a2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/a2.class */
public final class C8364a2 {

    /* renamed from: a */
    private static final C8466a f37664a = new C8466a("VerifySliceTaskHandler");

    /* renamed from: b */
    private final C8446v f37665b;

    public C8364a2(C8446v c8446v) {
        this.f37665b = c8446v;
    }

    /* renamed from: b */
    private final void m3787b(C8460z1 c8460z1, File file) {
        try {
            File m3670C = this.f37665b.m3670C(c8460z1.f37669b, c8460z1.f38007c, c8460z1.f38008d, c8460z1.f38009e);
            if (!m3670C.exists()) {
                throw new C8369bk(String.format("Cannot find metadata files for slice %s.", c8460z1.f38009e), c8460z1.f37668a);
            }
            try {
                if (!C8392h1.m3742a(C8457y1.m3610a(file, m3670C)).equals(c8460z1.f38010f)) {
                    throw new C8369bk(String.format("Verification failed for slice %s.", c8460z1.f38009e), c8460z1.f37668a);
                }
                f37664a.m3564d("Verification of slice %s of pack %s successful.", c8460z1.f38009e, c8460z1.f37669b);
            } catch (IOException e) {
                throw new C8369bk(String.format("Could not digest file during verification for slice %s.", c8460z1.f38009e), e, c8460z1.f37668a);
            } catch (NoSuchAlgorithmException e2) {
                throw new C8369bk("SHA256 algorithm not supported.", e2, c8460z1.f37668a);
            }
        } catch (IOException e3) {
            throw new C8369bk(String.format("Could not reconstruct slice archive during verification for slice %s.", c8460z1.f38009e), e3, c8460z1.f37668a);
        }
    }

    /* renamed from: a */
    public final void m3788a(C8460z1 c8460z1) {
        File m3640v = this.f37665b.m3640v(c8460z1.f37669b, c8460z1.f38007c, c8460z1.f38008d, c8460z1.f38009e);
        if (m3640v.exists()) {
            m3787b(c8460z1, m3640v);
            File m3639w = this.f37665b.m3639w(c8460z1.f37669b, c8460z1.f38007c, c8460z1.f38008d, c8460z1.f38009e);
            if (!m3639w.exists()) {
                m3639w.mkdirs();
            }
            if (!m3640v.renameTo(m3639w)) {
                throw new C8369bk(String.format("Failed to move slice %s after verification.", c8460z1.f38009e), c8460z1.f37668a);
            }
            return;
        }
        throw new C8369bk(String.format("Cannot find unverified files for slice %s.", c8460z1.f38009e), c8460z1.f37668a);
    }
}
