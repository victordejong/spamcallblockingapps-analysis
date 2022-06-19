package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.C5901a;
import com.google.android.gms.auth.api.signin.C5903c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.util.C6242t;
/* renamed from: com.google.android.gms.auth.api.signin.internal.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/u.class */
public final class BinderC5933u extends AbstractBinderC5930r {

    /* renamed from: d */
    private final Context f19057d;

    public BinderC5933u(Context context) {
        this.f19057d = context;
    }

    private final void zzt() {
        if (C6242t.m16767a(this.f19057d, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        StringBuilder sb = new StringBuilder(52);
        sb.append("Calling UID ");
        sb.append(callingUid);
        sb.append(" is not Google Play services.");
        throw new SecurityException(sb.toString());
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC5927o
    /* renamed from: k */
    public final void mo17571k() {
        zzt();
        C5928p.m17577c(this.f19057d).m17579a();
    }

    @Override // com.google.android.gms.auth.api.signin.internal.AbstractC5927o
    /* renamed from: l */
    public final void mo17570l() {
        zzt();
        C5914b m17599b = C5914b.m17599b(this.f19057d);
        GoogleSignInAccount m17598c = m17599b.m17598c();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.f18984d;
        if (m17598c != null) {
            googleSignInOptions = m17599b.m17597d();
        }
        C5903c m17621b = C5901a.m17621b(this.f19057d, googleSignInOptions);
        if (m17598c != null) {
            m17621b.m17617t();
        } else {
            m17621b.m17616u();
        }
    }
}
