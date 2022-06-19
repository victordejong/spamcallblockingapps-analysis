package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.internal.C2429i;
import com.google.android.gms.auth.api.signin.internal.C2435o;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C2622b;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4473j;
/* renamed from: com.google.android.gms.auth.api.signin.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/a.class */
public final class C2409a {
    /* renamed from: a */
    public static GoogleSignInAccount m14552a(Context context) {
        return C2435o.m14507a(context).m14505b();
    }

    /* renamed from: a */
    public static C2411c m14553a(Activity activity, GoogleSignInOptions googleSignInOptions) {
        return new C2411c(activity, (GoogleSignInOptions) C2662s.m13981a(googleSignInOptions));
    }

    /* renamed from: a */
    public static C2411c m14551a(Context context, GoogleSignInOptions googleSignInOptions) {
        return new C2411c(context, (GoogleSignInOptions) C2662s.m13981a(googleSignInOptions));
    }

    /* renamed from: a */
    public static AbstractC4469g<GoogleSignInAccount> m14550a(Intent intent) {
        AbstractC4469g<GoogleSignInAccount> m3881a;
        C2414d m14514a = C2429i.m14514a(intent);
        if (m14514a == null) {
            m3881a = C4473j.m3881a((Exception) C2622b.m14111a(Status.f7031c));
        } else {
            GoogleSignInAccount m14544a = m14514a.m14544a();
            m3881a = (!m14514a.mo14416b().m14460d() || m14544a == null) ? C4473j.m3881a((Exception) C2622b.m14111a(m14514a.mo14416b())) : C4473j.m3880a(m14544a);
        }
        return m3881a;
    }
}
