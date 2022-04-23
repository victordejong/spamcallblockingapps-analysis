package com.criteo.publisher.advancednative;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<ImageLoader> f17174a;

    public h(ImageLoader imageLoader) {
        this.f17174a = new AtomicReference<>(imageLoader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ImageLoader a() {
        return this.f17174a.get();
    }
}
