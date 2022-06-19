package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.core.content.C0790b;
import com.bumptech.glide.manager.AbstractC3932c;
/* renamed from: com.bumptech.glide.manager.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/f.class */
public final class C3937f implements AbstractC3934d {
    @Override // com.bumptech.glide.manager.AbstractC3934d
    /* renamed from: a */
    public final AbstractC3932c mo37176a(Context context, AbstractC3932c.AbstractC3933a abstractC3933a) {
        boolean z = C0790b.m44498a(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        Log.isLoggable("ConnectivityMonitor", 3);
        return z ? new C3935e(context, abstractC3933a) : new C3945n();
    }
}
