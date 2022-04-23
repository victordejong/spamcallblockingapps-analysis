package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duv.class */
public final class duv<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, AtomicReference<T>> f27242a = new HashMap();

    public final AtomicReference<T> a(String str) {
        synchronized (this) {
            if (!this.f27242a.containsKey(str)) {
                this.f27242a.put(str, new AtomicReference<>());
            }
        }
        return this.f27242a.get(str);
    }
}
