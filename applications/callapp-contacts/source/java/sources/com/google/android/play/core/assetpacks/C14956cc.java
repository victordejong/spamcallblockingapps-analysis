package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C15072h;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.play.core.assetpacks.cc */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cc.class */
public final class C14956cc {

    /* renamed from: b */
    private static final C15072h f54598b = new C15072h("VerifySliceTaskHandler");

    /* renamed from: a */
    final C14996w f54599a;

    public C14956cc(C14996w c14996w) {
        this.f54599a = c14996w;
    }

    /* renamed from: a */
    public final void m9712a(C14955cb c14955cb, File file) {
        try {
            File m9646e = this.f54599a.m9646e(c14955cb.f54507k, c14955cb.f54594a, c14955cb.f54595b, c14955cb.f54596c);
            if (!m9646e.exists()) {
                throw new C14911al(String.format("Cannot find metadata files for slice %s.", c14955cb.f54596c), c14955cb.f54506j);
            }
            try {
                if (!C14936bj.m9746a(C14954ca.m9714a(file, m9646e)).equals(c14955cb.f54597d)) {
                    throw new C14911al(String.format("Verification failed for slice %s.", c14955cb.f54596c), c14955cb.f54506j);
                }
                f54598b.m9508c("Verification of slice %s of pack %s successful.", c14955cb.f54596c, c14955cb.f54507k);
            } catch (IOException e) {
                throw new C14911al(String.format("Could not digest file during verification for slice %s.", c14955cb.f54596c), e, c14955cb.f54506j);
            } catch (NoSuchAlgorithmException e2) {
                throw new C14911al("SHA256 algorithm not supported.", e2, c14955cb.f54506j);
            }
        } catch (IOException e3) {
            throw new C14911al(String.format("Could not reconstruct slice archive during verification for slice %s.", c14955cb.f54596c), e3, c14955cb.f54506j);
        }
    }
}
