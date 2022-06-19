package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkx.class */
public final class dkx extends ThreadLocal<Mac> {

    /* renamed from: a */
    private final /* synthetic */ dku f47168a;

    public dkx(dku dkuVar) {
        this.f47168a = dkuVar;
    }

    /* renamed from: a */
    public final Mac initialValue() {
        try {
            Mac m16538a = dkj.f47147b.m16538a(this.f47168a.f47159a);
            m16538a.init(this.f47168a.f47160b);
            return m16538a;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
