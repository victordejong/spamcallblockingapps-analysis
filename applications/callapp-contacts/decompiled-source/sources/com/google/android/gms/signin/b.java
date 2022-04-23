package com.google.android.gms.signin;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/b.class */
final class b extends a.AbstractC0453a<com.google.android.gms.signin.internal.a, a> {
    @Override // com.google.android.gms.common.api.a.AbstractC0453a
    public final /* synthetic */ com.google.android.gms.signin.internal.a a(Context context, Looper looper, e eVar, a aVar, g.a aVar2, g.b bVar) {
        Integer num = eVar.h;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.f22881a);
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return new com.google.android.gms.signin.internal.a(context, looper, true, eVar, bundle, aVar2, bVar);
    }
}
