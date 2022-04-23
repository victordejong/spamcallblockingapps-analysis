package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.h;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cc.class */
public final class cc {

    /* renamed from: b  reason: collision with root package name */
    private static final h f31227b = new h("VerifySliceTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    final w f31228a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(w wVar) {
        this.f31228a = wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(cb cbVar, File file) {
        try {
            File e = this.f31228a.e(cbVar.k, cbVar.f31223a, cbVar.f31224b, cbVar.f31225c);
            if (e.exists()) {
                try {
                    if (bj.a(ca.a(file, e)).equals(cbVar.f31226d)) {
                        f31227b.c("Verification of slice %s of pack %s successful.", cbVar.f31225c, cbVar.k);
                        return;
                    }
                    throw new al(String.format("Verification failed for slice %s.", cbVar.f31225c), cbVar.j);
                } catch (IOException e2) {
                    throw new al(String.format("Could not digest file during verification for slice %s.", cbVar.f31225c), e2, cbVar.j);
                } catch (NoSuchAlgorithmException e3) {
                    throw new al("SHA256 algorithm not supported.", e3, cbVar.j);
                }
            } else {
                throw new al(String.format("Cannot find metadata files for slice %s.", cbVar.f31225c), cbVar.j);
            }
        } catch (IOException e4) {
            throw new al(String.format("Could not reconstruct slice archive during verification for slice %s.", cbVar.f31225c), e4, cbVar.j);
        }
    }
}
