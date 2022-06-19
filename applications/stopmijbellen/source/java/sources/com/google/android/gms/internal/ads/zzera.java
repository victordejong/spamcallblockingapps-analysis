package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzera.class */
public final /* synthetic */ class zzera implements zzfpv {
    public static final /* synthetic */ zzera zza = new zzera();

    private /* synthetic */ zzera() {
    }

    @Override // com.google.android.gms.internal.ads.zzfpv
    public final Object apply(Object obj) {
        final ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzevm() { // from class: com.google.android.gms.internal.ads.zzeqz
            @Override // com.google.android.gms.internal.ads.zzevm
            public final void zza(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", arrayList);
            }
        };
    }
}
