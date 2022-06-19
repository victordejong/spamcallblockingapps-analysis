package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbo.class */
final /* synthetic */ class zzdbo implements zzdvz {
    static final zzdvz zzeaj = new zzdbo();

    private zzdbo() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzdfj(arrayList) { // from class: com.google.android.gms.internal.ads.zzdbr
            private final ArrayList zzhau;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhau = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzdfj
            public final void zzr(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.zzhau);
            }
        };
    }
}
