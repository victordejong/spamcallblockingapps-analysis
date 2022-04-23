package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.e;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/f.class */
final class f extends a.AbstractC0453a<g, GoogleSignInOptions> {
    @Override // com.google.android.gms.common.api.a.AbstractC0453a
    public final /* synthetic */ g a(Context context, Looper looper, e eVar, GoogleSignInOptions googleSignInOptions, g.a aVar, g.b bVar) {
        return new com.google.android.gms.auth.api.signin.internal.g(context, looper, eVar, googleSignInOptions, aVar, bVar);
    }
}
