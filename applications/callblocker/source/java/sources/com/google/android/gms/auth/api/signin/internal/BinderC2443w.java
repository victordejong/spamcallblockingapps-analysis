package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.C2409a;
import com.google.android.gms.auth.api.signin.C2411c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.util.C2721r;
/* renamed from: com.google.android.gms.auth.api.signin.internal.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/w.class */
public final class BinderC2443w extends AbstractBinderC2437q {

    /* renamed from: a */
    private final Context f6970a;

    public BinderC2443w(Context context) {
        this.f6970a = context;
    }

    /* renamed from: c */
    private final void m14496c() {
        if (!C2721r.m13825a(this.f6970a, Binder.getCallingUid())) {
            throw new SecurityException(new StringBuilder(52).append("Calling UID ").append(Binder.getCallingUid()).append(" is not Google Play services.").toString());
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC2438r
    /* renamed from: a */
    public final void mo14498a() {
        m14496c();
        C2423c m14530a = C2423c.m14530a(this.f6970a);
        GoogleSignInAccount m14531a = m14530a.m14531a();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.f6902f;
        if (m14531a != null) {
            googleSignInOptions = m14530a.m14526b();
        }
        C2411c m14551a = C2409a.m14551a(this.f6970a, googleSignInOptions);
        if (m14531a != null) {
            m14551a.m14547c();
        } else {
            m14551a.m14548b();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC2438r
    /* renamed from: b */
    public final void mo14497b() {
        m14496c();
        C2435o.m14507a(this.f6970a).m14508a();
    }
}
