package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabq.class */
public final class zabq extends BroadcastReceiver {
    private Context mContext;
    private final zabr zaji;

    public zabq(zabr zabrVar) {
        this.zaji = zabrVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.zaji.zas();
            unregister();
        }
    }

    public final void unregister() {
        synchronized (this) {
            if (this.mContext != null) {
                this.mContext.unregisterReceiver(this);
            }
            this.mContext = null;
        }
    }

    public final void zac(Context context) {
        this.mContext = context;
    }
}
