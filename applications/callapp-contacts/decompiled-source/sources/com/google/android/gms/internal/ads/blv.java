package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blv.class */
public final class blv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Set<ayi<T>> a(T t, Executor executor) {
        return co.f26137a.a().booleanValue() ? Collections.singleton(new ayi(t, executor)) : Collections.emptySet();
    }
}
