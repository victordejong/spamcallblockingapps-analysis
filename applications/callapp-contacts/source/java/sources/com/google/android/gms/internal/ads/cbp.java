package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbp.class */
public final class cbp implements dsi<Set<String>> {

    /* renamed from: a */
    private final cbj f45465a;

    public cbp(cbj cbjVar) {
        this.f45465a = cbjVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        cbj cbjVar = this.f45465a;
        HashSet hashSet = new HashSet();
        hashSet.add(cbjVar.f45451a.toLowerCase(Locale.ROOT));
        return (Set) dso.m15764b(hashSet);
    }
}
