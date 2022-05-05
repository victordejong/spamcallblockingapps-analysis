package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.google.firebase.iid.MessengerIpcClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzn.class */
final class zzn extends zzq<Void> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(int i, int i2, Bundle bundle) {
        super(i, 2, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.zzq
    /* renamed from: a */
    public final void mo15097a(Bundle bundle) {
        if (bundle.getBoolean(MessengerIpcClient.KEY_ACK, false)) {
            m15101c(null);
        } else {
            m15102b(new zzp(4, "Invalid response to one way request"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.zzq
    /* renamed from: d */
    public final boolean mo15096d() {
        return true;
    }
}
