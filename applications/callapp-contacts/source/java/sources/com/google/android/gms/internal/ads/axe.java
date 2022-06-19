package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axe.class */
public final class axe implements dsi<Set<ayi<AppEventListener>>> {

    /* renamed from: a */
    private final awm f43291a;

    private axe(awm awmVar) {
        this.f43291a = awmVar;
    }

    /* renamed from: a */
    public static axe m18339a(awm awmVar) {
        return new axe(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(this.f43291a.f43246i);
    }
}
