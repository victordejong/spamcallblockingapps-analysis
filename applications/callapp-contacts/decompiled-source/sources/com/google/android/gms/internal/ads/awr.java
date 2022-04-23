package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awr.class */
public final class awr implements dsi<Set<ayi<zzp>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23960a;

    private awr(awm awmVar) {
        this.f23960a = awmVar;
    }

    public static awr a(awm awmVar) {
        return new awr(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23960a.k);
    }
}
