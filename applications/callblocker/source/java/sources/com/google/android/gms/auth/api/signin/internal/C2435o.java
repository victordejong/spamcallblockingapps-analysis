package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* renamed from: com.google.android.gms.auth.api.signin.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/o.class */
public final class C2435o {

    /* renamed from: a */
    private static C2435o f6966a = null;

    /* renamed from: b */
    private C2423c f6967b;

    /* renamed from: c */
    private GoogleSignInAccount f6968c;

    /* renamed from: d */
    private GoogleSignInOptions f6969d;

    private C2435o(Context context) {
        this.f6967b = C2423c.m14530a(context);
        this.f6968c = this.f6967b.m14531a();
        this.f6969d = this.f6967b.m14526b();
    }

    /* renamed from: a */
    public static C2435o m14507a(Context context) {
        C2435o m14504b;
        synchronized (C2435o.class) {
            try {
                m14504b = m14504b(context.getApplicationContext());
            } catch (Throwable th) {
                throw th;
            }
        }
        return m14504b;
    }

    /* renamed from: b */
    private static C2435o m14504b(Context context) {
        C2435o c2435o;
        synchronized (C2435o.class) {
            try {
                if (f6966a != null) {
                    c2435o = f6966a;
                } else {
                    C2435o c2435o2 = new C2435o(context);
                    f6966a = c2435o2;
                    c2435o = c2435o2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2435o;
    }

    /* renamed from: a */
    public final void m14508a() {
        synchronized (this) {
            this.f6967b.m14521d();
            this.f6968c = null;
            this.f6969d = null;
        }
    }

    /* renamed from: a */
    public final void m14506a(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        synchronized (this) {
            this.f6967b.m14529a(googleSignInAccount, googleSignInOptions);
            this.f6968c = googleSignInAccount;
            this.f6969d = googleSignInOptions;
        }
    }

    /* renamed from: b */
    public final GoogleSignInAccount m14505b() {
        GoogleSignInAccount googleSignInAccount;
        synchronized (this) {
            googleSignInAccount = this.f6968c;
        }
        return googleSignInAccount;
    }
}
