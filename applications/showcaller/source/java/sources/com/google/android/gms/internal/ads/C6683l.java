package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l.class */
public final class C6683l implements dt2 {

    /* renamed from: a */
    final /* synthetic */ ir2 f25905a;

    public C6683l(C6757n c6757n, ir2 ir2Var) {
        this.f25905a = ir2Var;
    }

    @Override // com.google.android.gms.internal.ads.dt2
    /* renamed from: a */
    public final boolean mo13752a(File file) {
        try {
            return this.f25905a.m14295a(file);
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
