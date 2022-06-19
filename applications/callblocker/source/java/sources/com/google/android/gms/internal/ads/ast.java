package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p118a.AbstractC2244a;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ast.class */
public final class ast implements dht<asr> {

    /* renamed from: a */
    private final dig<Set<auq<AbstractC2244a>>> f10273a;

    private ast(dig<Set<auq<AbstractC2244a>>> digVar) {
        this.f10273a = digVar;
    }

    /* renamed from: a */
    public static ast m12777a(dig<Set<auq<AbstractC2244a>>> digVar) {
        return new ast(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new asr(this.f10273a.mo9430a());
    }
}
