package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arr.class */
public final class arr implements dht<aro> {

    /* renamed from: a */
    private final dig<Set<auq<AbstractC2328o>>> f10245a;

    private arr(dig<Set<auq<AbstractC2328o>>> digVar) {
        this.f10245a = digVar;
    }

    /* renamed from: a */
    public static arr m12792a(dig<Set<auq<AbstractC2328o>>> digVar) {
        return new arr(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aro(this.f10245a.mo9430a());
    }
}
