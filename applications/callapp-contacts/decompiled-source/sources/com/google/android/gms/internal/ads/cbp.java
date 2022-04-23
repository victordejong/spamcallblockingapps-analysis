package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbp.class */
public final class cbp implements dsi<Set<String>> {

    /* renamed from: a  reason: collision with root package name */
    private final cbj f25544a;

    public cbp(cbj cbjVar) {
        this.f25544a = cbjVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        cbj cbjVar = this.f25544a;
        HashSet hashSet = new HashSet();
        hashSet.add(cbjVar.f25533a.toLowerCase(Locale.ROOT));
        return (Set) dso.b(hashSet);
    }
}
