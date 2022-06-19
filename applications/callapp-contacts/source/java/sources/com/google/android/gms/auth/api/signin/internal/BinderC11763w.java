package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.C11729a;
import com.google.android.gms.auth.api.signin.C11731c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C12043n;
import com.google.android.gms.common.util.C12115s;
/* renamed from: com.google.android.gms.auth.api.signin.internal.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/w.class */
public final class BinderC11763w extends AbstractBinderC11760t {

    /* renamed from: a */
    private final Context f39082a;

    public BinderC11763w(Context context) {
        this.f39082a = context;
    }

    /* renamed from: c */
    private final void m19520c() {
        if (C12115s.m19006a(this.f39082a, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        StringBuilder sb = new StringBuilder(52);
        sb.append("Calling UID ");
        sb.append(callingUid);
        sb.append(" is not Google Play services.");
        throw new SecurityException(sb.toString());
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC11757q
    /* renamed from: a */
    public final void mo19522a() {
        m19520c();
        C11742b m19548a = C11742b.m19548a(this.f39082a);
        GoogleSignInAccount m19549a = m19548a.m19549a();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.DEFAULT_SIGN_IN;
        if (m19549a != null) {
            googleSignInOptions = m19548a.m19545b();
        }
        C11731c m19566a = C11729a.m19566a(this.f39082a, googleSignInOptions);
        if (m19549a != null) {
            C12043n.m19165a(C11750j.m19533b(m19566a.f39184f, m19566a.f39179a, m19566a.m19564a() == C11731c.C11732a.f39047c));
        } else {
            m19566a.m19561d();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC11757q
    /* renamed from: b */
    public final void mo19521b() {
        m19520c();
        C11758r.m19530a(this.f39082a).m19531a();
    }
}
