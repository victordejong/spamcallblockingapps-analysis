package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ckl.class */
public abstract class ckl<E> {

    /* renamed from: a */
    private static final crt<?> f13202a = crg.m10778a((Object) null);

    /* renamed from: b */
    private final crs f13203b;

    /* renamed from: c */
    private final ScheduledExecutorService f13204c;

    /* renamed from: d */
    private final ckx<E> f13205d;

    public ckl(crs crsVar, ScheduledExecutorService scheduledExecutorService, ckx<E> ckxVar) {
        this.f13203b = crsVar;
        this.f13204c = scheduledExecutorService;
        this.f13205d = ckxVar;
    }

    /* renamed from: a */
    public final ckn m11161a(E e, crt<?>... crtVarArr) {
        return new ckn(this, e, Arrays.asList(crtVarArr));
    }

    /* renamed from: a */
    public final ckp m11163a(E e) {
        return new ckp(this, e);
    }

    /* renamed from: a */
    public final <I> ckr<I> m11162a(E e, crt<I> crtVar) {
        return new ckr<>(this, e, crtVar, Collections.singletonList(crtVar), crtVar);
    }

    /* renamed from: b */
    public abstract String mo11138b(E e);
}
