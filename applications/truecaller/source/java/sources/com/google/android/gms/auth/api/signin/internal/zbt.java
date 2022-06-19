package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.common.util.UidVerifier;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zbt.class */
public final class zbt extends zbo {

    /* renamed from: a */
    public final Context f5574a;

    public zbt(Context context) {
        this.f5574a = context;
    }

    /* renamed from: m1 */
    public final void m39096m1() {
        if (UidVerifier.m38771a(this.f5574a, Binder.getCallingUid())) {
            return;
        }
        throw new SecurityException(C22128a.m8686M1(52, "Calling UID ", Binder.getCallingUid(), " is not Google Play services."));
    }
}
