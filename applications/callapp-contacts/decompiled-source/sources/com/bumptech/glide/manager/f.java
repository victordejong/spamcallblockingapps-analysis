package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.core.content.b;
import com.bumptech.glide.manager.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/f.class */
public final class f implements d {
    @Override // com.bumptech.glide.manager.d
    public final c a(Context context, c.a aVar) {
        boolean z = b.a(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        Log.isLoggable("ConnectivityMonitor", 3);
        return z ? new e(context, aVar) : new n();
    }
}
