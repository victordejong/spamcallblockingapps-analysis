package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awu.class */
public final class awu implements dsi<Set<ayi<avs>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23963a;

    private awu(awm awmVar) {
        this.f23963a = awmVar;
    }

    public static awu a(awm awmVar) {
        return new awu(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.emptySet());
    }
}
