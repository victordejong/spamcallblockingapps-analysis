package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* renamed from: com.google.android.gms.cloudmessaging.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/s.class */
final class C5973s extends AbstractC5971q<Bundle> {
    public C5973s(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.AbstractC5971q
    /* renamed from: a */
    public final void mo17510a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        m17514c(bundle3);
    }

    @Override // com.google.android.gms.cloudmessaging.AbstractC5971q
    /* renamed from: d */
    public final boolean mo17509d() {
        return false;
    }
}
