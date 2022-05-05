package com.google.android.gms.internal.icing;

import android.util.Log;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzat.class */
final class zzat extends zzar {

    /* renamed from: a */
    private final /* synthetic */ zzau f7872a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzat(zzau zzauVar) {
        this.f7872a = zzauVar;
    }

    @Override // com.google.android.gms.internal.icing.zzar, com.google.android.gms.internal.icing.zzam
    /* renamed from: z0 */
    public final void mo14046z0(Status status) {
        boolean z;
        z = this.f7872a.f7875u;
        if (z) {
            Log.d("SearchAuth", "ClearTokenImpl success");
        }
        this.f7872a.m14974i(status);
    }
}
