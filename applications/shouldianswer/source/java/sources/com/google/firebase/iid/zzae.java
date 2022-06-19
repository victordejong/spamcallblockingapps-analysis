package com.google.firebase.iid;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzae.class */
final class zzae extends zzah<Void> {
    public zzae(int i, int i2, Bundle bundle) {
        super(i, 2, bundle);
    }

    @Override // com.google.firebase.iid.zzah
    public final void zza(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            zza((zzae) null);
        } else {
            zza(new zzag(4, "Invalid response to one way request"));
        }
    }

    @Override // com.google.firebase.iid.zzah
    public final boolean zza() {
        return true;
    }
}
