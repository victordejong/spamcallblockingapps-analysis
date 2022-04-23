package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static r f22524a;

    /* renamed from: b  reason: collision with root package name */
    private b f22525b;

    /* renamed from: c  reason: collision with root package name */
    private GoogleSignInAccount f22526c;

    /* renamed from: d  reason: collision with root package name */
    private GoogleSignInOptions f22527d;

    private r(Context context) {
        b a2 = b.a(context);
        this.f22525b = a2;
        this.f22526c = a2.a();
        this.f22527d = this.f22525b.b();
    }

    public static r a(Context context) {
        r b2;
        synchronized (r.class) {
            try {
                b2 = b(context.getApplicationContext());
            } catch (Throwable th) {
                throw th;
            }
        }
        return b2;
    }

    private static r b(Context context) {
        synchronized (r.class) {
            try {
                r rVar = f22524a;
                if (rVar != null) {
                    return rVar;
                }
                r rVar2 = new r(context);
                f22524a = rVar2;
                return rVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a() {
        synchronized (this) {
            b bVar = this.f22525b;
            bVar.f22510a.lock();
            bVar.f22511b.edit().clear().apply();
            bVar.f22510a.unlock();
            this.f22526c = null;
            this.f22527d = null;
        }
    }

    public final void a(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        synchronized (this) {
            b bVar = this.f22525b;
            o.a(googleSignInAccount);
            o.a(googleSignInOptions);
            bVar.a("defaultGoogleSignInAccount", googleSignInAccount.zac());
            o.a(googleSignInAccount);
            o.a(googleSignInOptions);
            String zac = googleSignInAccount.zac();
            bVar.a(b.b("googleSignInAccount", zac), googleSignInAccount.zad());
            bVar.a(b.b("googleSignInOptions", zac), googleSignInOptions.zab());
            this.f22526c = googleSignInAccount;
            this.f22527d = googleSignInOptions;
        }
    }

    public final GoogleSignInAccount b() {
        GoogleSignInAccount googleSignInAccount;
        synchronized (this) {
            googleSignInAccount = this.f22526c;
        }
        return googleSignInAccount;
    }

    public final GoogleSignInOptions c() {
        GoogleSignInOptions googleSignInOptions;
        synchronized (this) {
            googleSignInOptions = this.f22527d;
        }
        return googleSignInOptions;
    }
}
