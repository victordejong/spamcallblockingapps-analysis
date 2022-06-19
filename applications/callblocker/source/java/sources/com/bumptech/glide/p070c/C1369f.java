package com.bumptech.glide.p070c;

import android.content.Context;
import android.util.Log;
import androidx.core.p017a.C0438a;
import com.bumptech.glide.p070c.AbstractC1364c;
/* renamed from: com.bumptech.glide.c.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/f.class */
public class C1369f implements AbstractC1366d {
    @Override // com.bumptech.glide.p070c.AbstractC1366d
    /* renamed from: a */
    public AbstractC1364c mo17284a(Context context, AbstractC1364c.AbstractC1365a abstractC1365a) {
        boolean z = C0438a.m20898a(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        return z ? new C1367e(context, abstractC1365a) : new C1373j();
    }
}
