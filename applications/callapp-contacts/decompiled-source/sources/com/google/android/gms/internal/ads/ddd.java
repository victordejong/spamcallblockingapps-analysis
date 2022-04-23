package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddd.class */
public final class ddd<P> {

    /* renamed from: a  reason: collision with root package name */
    final ConcurrentMap<ddi, List<ddf<P>>> f26741a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    ddf<P> f26742b;

    /* renamed from: c  reason: collision with root package name */
    final Class<P> f26743c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ddd(Class<P> cls) {
        this.f26743c = cls;
    }
}
