package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzals.class */
public final class zzals extends zzalr {
    public zzals(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzals zzs(String str, Context context, boolean z) {
        zzalr.zzq(context, false);
        return new zzals(context, str, false);
    }

    @Deprecated
    public static zzals zzt(String str, Context context, boolean z, int i) {
        zzalr.zzq(context, z);
        return new zzals(context, str, z);
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final List<Callable<Void>> zzo(zzams zzamsVar, Context context, zzaiz zzaizVar, zzais zzaisVar) {
        if (zzamsVar.zzk() == null || !((zzalr) this).zzt) {
            return super.zzo(zzamsVar, context, zzaizVar, null);
        }
        int zza = zzamsVar.zza();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zzo(zzamsVar, context, zzaizVar, null));
        arrayList.add(new zzanh(zzamsVar, "pzhIFr8jSwvyB8FXK2qfBOfw0jXHNl6+dmbReaTm1jquB51r9sbZLlTA4zaBxZEm", "RbRyr5uGUYOSrOuNnmzV0kl42YeLvs7OFWbwh2MFm18=", zzaizVar, zza, 24));
        return arrayList;
    }
}
