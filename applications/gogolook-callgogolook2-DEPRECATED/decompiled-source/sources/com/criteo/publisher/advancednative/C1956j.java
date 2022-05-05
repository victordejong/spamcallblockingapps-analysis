package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
import java.lang.ref.Reference;
import java.net.URL;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.criteo.publisher.advancednative.j */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/j.class */
public class C1956j implements AbstractC1960n {
    @NonNull

    /* renamed from: a */
    public final Iterable<URL> f2093a;
    @NonNull

    /* renamed from: b */
    public final Reference<CriteoNativeAdListener> f2094b;
    @NonNull

    /* renamed from: c */
    public final C1953i f2095c;
    @NonNull

    /* renamed from: d */
    public final AtomicBoolean f2096d = new AtomicBoolean(false);

    public C1956j(@NonNull Iterable<URL> iterable, @NonNull Reference<CriteoNativeAdListener> reference, @NonNull C1953i iVar) {
        this.f2093a = iterable;
        this.f2094b = reference;
        this.f2095c = iVar;
    }

    @Override // com.criteo.publisher.advancednative.AbstractC1960n
    /* renamed from: a */
    public void mo35967a() {
        if (this.f2096d.compareAndSet(false, true)) {
            this.f2095c.m35971a(this.f2093a);
            CriteoNativeAdListener criteoNativeAdListener = this.f2094b.get();
            if (criteoNativeAdListener != null) {
                this.f2095c.m35972a(criteoNativeAdListener);
            }
        }
    }
}
