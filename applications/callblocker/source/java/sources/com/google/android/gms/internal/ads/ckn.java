package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ckn.class */
public final class ckn {

    /* renamed from: a */
    private final E f13207a;

    /* renamed from: b */
    private final List<crt<?>> f13208b;

    /* renamed from: c */
    private final /* synthetic */ ckl f13209c;

    /* JADX INFO: Access modifiers changed from: private */
    public ckn(ckl cklVar, E e, List<crt<?>> list) {
        this.f13209c = cklVar;
        this.f13207a = e;
        this.f13208b = list;
    }

    /* renamed from: a */
    public final <O> ckr<O> m11158a(Callable<O> callable) {
        crs crsVar;
        crm m10771c = crg.m10771c(this.f13208b);
        crt m10770a = m10771c.m10770a(ckm.f13206a, C3650yg.f17647f);
        ckl cklVar = this.f13209c;
        E e = this.f13207a;
        List<crt<?>> list = this.f13208b;
        crsVar = this.f13209c.f13203b;
        return new ckr<>(cklVar, e, m10770a, list, m10771c.m10770a(callable, crsVar));
    }
}
