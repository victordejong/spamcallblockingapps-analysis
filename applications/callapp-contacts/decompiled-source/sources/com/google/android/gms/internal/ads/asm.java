package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asm.class */
public final class asm implements dsi<asj> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<asg>>> f23847a;

    private asm(dsv<Set<ayi<asg>>> dsvVar) {
        this.f23847a = dsvVar;
    }

    public static asm a(dsv<Set<ayi<asg>>> dsvVar) {
        return new asm(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new asj(this.f23847a.a());
    }
}
