package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznz.class */
public final class zznz extends zzoa {

    /* renamed from: a */
    private final int f17761a;

    /* renamed from: b */
    private final Map<String, List<String>> f17762b;

    public zznz(int i, Map<String, List<String>> map, drq drqVar) {
        super(new StringBuilder(26).append("Response code: ").append(i).toString(), drqVar, 1);
        this.f17761a = i;
        this.f17762b = map;
    }
}
