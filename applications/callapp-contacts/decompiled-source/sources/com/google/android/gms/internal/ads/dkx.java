package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkx.class */
public final class dkx extends ThreadLocal<Mac> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dku f26910a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dkx(dku dkuVar) {
        this.f26910a = dkuVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final Mac initialValue() {
        try {
            Mac a2 = dkj.f26897b.a(this.f26910a.f26901a);
            a2.init(this.f26910a.f26902b);
            return a2;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
