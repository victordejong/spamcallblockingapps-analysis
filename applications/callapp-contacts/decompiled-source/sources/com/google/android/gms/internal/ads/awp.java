package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awp.class */
public final class awp implements dsi<Set<ayi<asg>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23957a;

    private awp(awm awmVar) {
        this.f23957a = awmVar;
    }

    public static awp a(awm awmVar) {
        return new awp(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.emptySet());
    }
}
