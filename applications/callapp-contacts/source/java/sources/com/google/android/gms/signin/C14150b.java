package com.google.android.gms.signin;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.signin.internal.C14155a;
/* renamed from: com.google.android.gms.signin.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/b.class */
final class C14150b extends C11808a.AbstractC11809a<C14155a, C14149a> {
    @Override // com.google.android.gms.common.api.C11808a.AbstractC11809a
    /* renamed from: a */
    public final /* synthetic */ C14155a mo11341a(Context context, Looper looper, C12031e c12031e, C14149a c14149a, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b) {
        Integer num = c12031e.f39547h;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", c12031e.f39540a);
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
        return new C14155a(context, looper, true, c12031e, bundle, abstractC11827a, abstractC11828b);
    }
}
