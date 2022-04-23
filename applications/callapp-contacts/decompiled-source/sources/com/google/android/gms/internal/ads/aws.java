package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aws.class */
public final class aws implements dsi<Set<ayi<atb>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23961a;

    private aws(awm awmVar) {
        this.f23961a = awmVar;
    }

    public static aws a(awm awmVar) {
        return new aws(awmVar);
    }

    public static Set<ayi<atb>> b() {
        return (Set) dso.b(Collections.emptySet());
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return b();
    }
}
