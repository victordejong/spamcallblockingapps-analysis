package p134j4;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import p201p6.C4018c;
/* renamed from: j4.d2 */
/* loaded from: classes-dex2jar.jar:j4/d2.class */
public final class C3196d2 {

    /* renamed from: b */
    public static final C4018c f10764b = new C4018c("VerifySliceTaskHandler");

    /* renamed from: a */
    public final C3259w f10765a;

    public C3196d2(C3259w c3259w) {
        this.f10765a = c3259w;
    }

    /* renamed from: a */
    public final void m2556a(C3192c2 c3192c2) {
        File m2484s = this.f10765a.m2484s(c3192c2.f10747b, c3192c2.f10748c, c3192c2.f10749d, c3192c2.f10750e);
        if (m2484s.exists()) {
            try {
                File m2485r = this.f10765a.m2485r(c3192c2.f10747b, c3192c2.f10748c, c3192c2.f10749d, c3192c2.f10750e);
                if (!m2485r.exists()) {
                    throw new C3233n0(String.format("Cannot find metadata files for slice %s.", c3192c2.f10750e), c3192c2.f10746a);
                }
                try {
                    if (!C3219j1.m2539a(C3188b2.m2560a(m2484s, m2485r)).equals(c3192c2.f10751f)) {
                        throw new C3233n0(String.format("Verification failed for slice %s.", c3192c2.f10750e), c3192c2.f10746a);
                    }
                    f10764b.m1507e("Verification of slice %s of pack %s successful.", c3192c2.f10750e, c3192c2.f10747b);
                    File m2483t = this.f10765a.m2483t(c3192c2.f10747b, c3192c2.f10748c, c3192c2.f10749d, c3192c2.f10750e);
                    if (!m2483t.exists()) {
                        m2483t.mkdirs();
                    }
                    if (!m2484s.renameTo(m2483t)) {
                        throw new C3233n0(String.format("Failed to move slice %s after verification.", c3192c2.f10750e), c3192c2.f10746a);
                    }
                    return;
                } catch (IOException e) {
                    throw new C3233n0(String.format("Could not digest file during verification for slice %s.", c3192c2.f10750e), e, c3192c2.f10746a);
                } catch (NoSuchAlgorithmException e2) {
                    throw new C3233n0("SHA256 algorithm not supported.", e2, c3192c2.f10746a);
                }
            } catch (IOException e3) {
                throw new C3233n0(String.format("Could not reconstruct slice archive during verification for slice %s.", c3192c2.f10750e), e3, c3192c2.f10746a);
            }
        }
        throw new C3233n0(String.format("Cannot find unverified files for slice %s.", c3192c2.f10750e), c3192c2.f10746a);
    }
}
