package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ka2.class */
final class ka2 extends ThreadLocal<Mac> {

    /* renamed from: a */
    final /* synthetic */ la2 f6973a;

    ka2(la2 la2Var) {
        this.f6973a = la2Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Mac initialValue() {
        try {
            Mac a = z92.f9322f.m4654a(la2.b(this.f6973a));
            a.init(la2.c(this.f6973a));
            return a;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
