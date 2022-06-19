package com.google.android.libraries.places.internal;

import android.net.wifi.ScanResult;
import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzr.class */
public final /* synthetic */ class zzr implements Comparator {
    public static final Comparator zza = new zzr();

    private zzr() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return zzs.zza((ScanResult) obj, (ScanResult) obj2);
    }
}
