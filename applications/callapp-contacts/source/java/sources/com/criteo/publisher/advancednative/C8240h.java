package com.criteo.publisher.advancednative;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.criteo.publisher.advancednative.h */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/h.class */
public class C8240h {

    /* renamed from: a */
    final AtomicReference<ImageLoader> f29778a;

    public C8240h(ImageLoader imageLoader) {
        this.f29778a = new AtomicReference<>(imageLoader);
    }

    /* renamed from: a */
    public final ImageLoader m25975a() {
        return this.f29778a.get();
    }
}
