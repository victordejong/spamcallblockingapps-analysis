package com.google.android.gms.iid;

import android.os.Bundle;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzab.class */
final class zzab extends zzz<Bundle> {
    public zzab(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // com.google.android.gms.iid.zzz
    public final void zzh(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(bundle3);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.zzcq.setResult(bundle3);
    }

    @Override // com.google.android.gms.iid.zzz
    public final boolean zzw() {
        return false;
    }
}
