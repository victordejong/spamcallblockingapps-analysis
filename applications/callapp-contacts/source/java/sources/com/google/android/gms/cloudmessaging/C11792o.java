package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* renamed from: com.google.android.gms.cloudmessaging.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/o.class */
final class C11792o extends AbstractC11794q<Void> {
    public C11792o(int i, int i2, Bundle bundle) {
        super(i, 2, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.AbstractC11794q
    /* renamed from: a */
    public final void mo19479a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            m19484a((C11792o) null);
        } else {
            m19485a(new zzp(4, "Invalid response to one way request"));
        }
    }

    @Override // com.google.android.gms.cloudmessaging.AbstractC11794q
    /* renamed from: a */
    public final boolean mo19480a() {
        return true;
    }
}
