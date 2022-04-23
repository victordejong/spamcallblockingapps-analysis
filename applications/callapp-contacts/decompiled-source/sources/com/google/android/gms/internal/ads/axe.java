package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axe.class */
public final class axe implements dsi<Set<ayi<AppEventListener>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23977a;

    private axe(awm awmVar) {
        this.f23977a = awmVar;
    }

    public static axe a(awm awmVar) {
        return new axe(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23977a.i);
    }
}
