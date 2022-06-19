package com.google.firebase.iid;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzaj.class */
final class zzaj extends zzah<Bundle> {
    public zzaj(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // com.google.firebase.iid.zzah
    public final void zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        zza((zzaj) bundle3);
    }

    @Override // com.google.firebase.iid.zzah
    public final boolean zza() {
        return false;
    }
}
