package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzs.class */
final class zzs extends zzq<Bundle> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.zzq
    /* renamed from: a */
    public final void mo15097a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        m15101c(bundle3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.zzq
    /* renamed from: d */
    public final boolean mo15096d() {
        return false;
    }
}
