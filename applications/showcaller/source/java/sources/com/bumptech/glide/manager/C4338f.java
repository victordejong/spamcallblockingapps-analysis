package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.core.content.C0586a;
import com.bumptech.glide.manager.AbstractC4333c;
/* renamed from: com.bumptech.glide.manager.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/f.class */
public class C4338f implements AbstractC4335d {
    @Override // com.bumptech.glide.manager.AbstractC4335d
    /* renamed from: a */
    public AbstractC4333c mo22827a(Context context, AbstractC4333c.AbstractC4334a abstractC4334a) {
        boolean z = C0586a.m33353a(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        return z ? new C4336e(context, abstractC4334a) : new C4346n();
    }
}
