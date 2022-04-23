package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dky.class */
final class dky extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ SecureRandom initialValue() {
        return dkz.a();
    }
}
