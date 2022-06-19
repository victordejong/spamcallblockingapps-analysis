package com.google.android.gms.analytics;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzf.class */
public final class zzf implements Comparator<zzi> {
    public zzf(zze zzeVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzi zziVar, zzi zziVar2) {
        return zziVar.getClass().getCanonicalName().compareTo(zziVar2.getClass().getCanonicalName());
    }
}
