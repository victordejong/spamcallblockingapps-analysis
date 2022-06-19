package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* renamed from: com.google.android.gms.cloudmessaging.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/o.class */
final class C5969o extends AbstractC5971q<Void> {
    public C5969o(int i, int i2, Bundle bundle) {
        super(i, 2, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.AbstractC5971q
    /* renamed from: a */
    public final void mo17510a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            m17514c(null);
        } else {
            m17515b(new zzp(4, "Invalid response to one way request"));
        }
    }

    @Override // com.google.android.gms.cloudmessaging.AbstractC5971q
    /* renamed from: d */
    public final boolean mo17509d() {
        return true;
    }
}
