package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Looper;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.j;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.tasks.h;
import com.google.android.gms.wearable.a;
import com.google.android.gms.wearable.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/b.class */
public final class b extends com.google.android.gms.wearable.b {
    private final a h = new dp();

    public b(Activity activity, f.a aVar) {
        super(activity, aVar);
    }

    public b(Context context, f.a aVar) {
        super(context, aVar);
    }

    @Override // com.google.android.gms.wearable.b
    public final h<Boolean> a(b.a aVar) {
        c.a(aVar, "listener must not be null");
        return a((i.a<?>) j.a(aVar, this.f22616d, "CapabilityListener").f22740b);
    }

    @Override // com.google.android.gms.wearable.b
    public final h<Void> a(b.a aVar, String str) {
        c.a(aVar, "listener must not be null");
        c.a(str, "capability must not be null");
        IntentFilter a2 = cp.a("com.google.android.gms.wearable.CAPABILITY_CHANGED");
        String str2 = str;
        if (!str.startsWith("/")) {
            String valueOf = String.valueOf(str);
            str2 = valueOf.length() != 0 ? "/".concat(valueOf) : new String("/");
        }
        a2.addDataPath(str2, 0);
        Looper looper = this.f22616d;
        String valueOf2 = String.valueOf(str2);
        i a3 = j.a(aVar, looper, valueOf2.length() != 0 ? "CapabilityListener:".concat(valueOf2) : new String("CapabilityListener:"));
        e eVar = new e(aVar, str2);
        return a((b) new f(eVar, new IntentFilter[]{a2}, a3), (f) new g(eVar, a3.f22740b));
    }

    @Override // com.google.android.gms.wearable.b
    public final h<com.google.android.gms.wearable.c> a(String str) {
        c.a(str, "capability must not be null");
        return n.a(this.h.a(this.f, str, 1), c.f30100a);
    }
}
