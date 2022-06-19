package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabl.class */
public final class zabl extends BroadcastReceiver {
    private Context zaa;
    private final zabk zab;

    public zabl(zabk zabkVar) {
        this.zab = zabkVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.zab.zaa();
            zaa();
        }
    }

    public final void zaa() {
        synchronized (this) {
            Context context = this.zaa;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.zaa = null;
        }
    }

    public final void zaa(Context context) {
        this.zaa = context;
    }
}
