package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/s.class */
final class s extends q<Bundle> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public s(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.q
    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        a((s) bundle3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.q
    public final boolean a() {
        return false;
    }
}
