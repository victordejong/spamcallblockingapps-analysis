package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/o.class */
final class o extends q<Void> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public o(int i, int i2, Bundle bundle) {
        super(i, 2, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.q
    public final void a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            a((o) null);
        } else {
            a(new zzp(4, "Invalid response to one way request"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.q
    public final boolean a() {
        return true;
    }
}
