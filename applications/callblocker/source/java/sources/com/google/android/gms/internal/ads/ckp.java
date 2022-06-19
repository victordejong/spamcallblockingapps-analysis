package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ckp.class */
public final class ckp {

    /* renamed from: a */
    private final E f13211a;

    /* renamed from: b */
    private final /* synthetic */ ckl f13212b;

    /* JADX INFO: Access modifiers changed from: private */
    public ckp(ckl cklVar, E e) {
        this.f13212b = cklVar;
        this.f13211a = e;
    }

    /* renamed from: a */
    private final <O> ckr<O> m11154a(Callable<O> callable, crs crsVar) {
        crt crtVar;
        ckl cklVar = this.f13212b;
        E e = this.f13211a;
        crtVar = ckl.f13202a;
        return new ckr<>(cklVar, e, crtVar, Collections.emptyList(), crsVar.mo10767a(callable));
    }

    /* renamed from: a */
    public final ckr<?> m11157a(ckj ckjVar, crs crsVar) {
        return m11154a(new Callable(ckjVar) { // from class: com.google.android.gms.internal.ads.cko

            /* renamed from: a */
            private final ckj f13210a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13210a = ckjVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f13210a.mo11166a();
                return null;
            }
        }, crsVar);
    }

    /* renamed from: a */
    public final <O> ckr<O> m11156a(crt<O> crtVar) {
        crt crtVar2;
        ckl cklVar = this.f13212b;
        E e = this.f13211a;
        crtVar2 = ckl.f13202a;
        return new ckr<>(cklVar, e, crtVar2, Collections.emptyList(), crtVar);
    }

    /* renamed from: a */
    public final <O> ckr<O> m11155a(Callable<O> callable) {
        crs crsVar;
        crsVar = this.f13212b.f13203b;
        return m11154a(callable, crsVar);
    }
}
