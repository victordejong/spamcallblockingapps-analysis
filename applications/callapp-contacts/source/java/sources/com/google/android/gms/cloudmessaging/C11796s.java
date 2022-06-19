package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* renamed from: com.google.android.gms.cloudmessaging.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/s.class */
final class C11796s extends AbstractC11794q<Bundle> {
    public C11796s(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.AbstractC11794q
    /* renamed from: a */
    public final void mo19479a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        m19484a((C11796s) bundle3);
    }

    @Override // com.google.android.gms.cloudmessaging.AbstractC11794q
    /* renamed from: a */
    public final boolean mo19480a() {
        return false;
    }
}
