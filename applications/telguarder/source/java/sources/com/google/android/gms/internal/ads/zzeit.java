package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeit.class */
final class zzeit extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ SecureRandom initialValue() {
        SecureRandom zzbfu;
        zzbfu = zzeiu.zzbfu();
        return zzbfu;
    }
}
