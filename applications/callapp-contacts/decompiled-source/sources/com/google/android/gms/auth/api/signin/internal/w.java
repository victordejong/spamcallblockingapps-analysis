package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.a;
import com.google.android.gms.auth.api.signin.c;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.s;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/w.class */
public final class w extends t {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22528a;

    public w(Context context) {
        this.f22528a = context;
    }

    private final void c() {
        if (!s.a(this.f22528a, Binder.getCallingUid())) {
            int callingUid = Binder.getCallingUid();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Calling UID ");
            sb.append(callingUid);
            sb.append(" is not Google Play services.");
            throw new SecurityException(sb.toString());
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.q
    public final void a() {
        c();
        b a2 = b.a(this.f22528a);
        GoogleSignInAccount a3 = a2.a();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.DEFAULT_SIGN_IN;
        if (a3 != null) {
            googleSignInOptions = a2.b();
        }
        c a4 = a.a(this.f22528a, googleSignInOptions);
        if (a3 != null) {
            n.a(j.b(a4.f, a4.f22613a, a4.a() == c.a.f22496c));
        } else {
            a4.d();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.q
    public final void b() {
        c();
        r.a(this.f22528a).a();
    }
}
