package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.auth.api.signin.internal.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/r.class */
public final class C11758r {

    /* renamed from: a */
    private static C11758r f39078a;

    /* renamed from: b */
    private C11742b f39079b;

    /* renamed from: c */
    private GoogleSignInAccount f39080c;

    /* renamed from: d */
    private GoogleSignInOptions f39081d;

    private C11758r(Context context) {
        C11742b m19548a = C11742b.m19548a(context);
        this.f39079b = m19548a;
        this.f39080c = m19548a.m19549a();
        this.f39081d = this.f39079b.m19545b();
    }

    /* renamed from: a */
    public static C11758r m19530a(Context context) {
        C11758r m19527b;
        synchronized (C11758r.class) {
            try {
                m19527b = m19527b(context.getApplicationContext());
            } catch (Throwable th) {
                throw th;
            }
        }
        return m19527b;
    }

    /* renamed from: b */
    private static C11758r m19527b(Context context) {
        synchronized (C11758r.class) {
            try {
                C11758r c11758r = f39078a;
                if (c11758r != null) {
                    return c11758r;
                }
                C11758r c11758r2 = new C11758r(context);
                f39078a = c11758r2;
                return c11758r2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m19531a() {
        synchronized (this) {
            C11742b c11742b = this.f39079b;
            c11742b.f39064a.lock();
            c11742b.f39065b.edit().clear().apply();
            c11742b.f39064a.unlock();
            this.f39080c = null;
            this.f39081d = null;
        }
    }

    /* renamed from: a */
    public final void m19529a(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        synchronized (this) {
            C11742b c11742b = this.f39079b;
            C12045o.m19162a(googleSignInAccount);
            C12045o.m19162a(googleSignInOptions);
            c11742b.m19546a("defaultGoogleSignInAccount", googleSignInAccount.zac());
            C12045o.m19162a(googleSignInAccount);
            C12045o.m19162a(googleSignInOptions);
            String zac = googleSignInAccount.zac();
            c11742b.m19546a(C11742b.m19544b("googleSignInAccount", zac), googleSignInAccount.zad());
            c11742b.m19546a(C11742b.m19544b("googleSignInOptions", zac), googleSignInOptions.zab());
            this.f39080c = googleSignInAccount;
            this.f39081d = googleSignInOptions;
        }
    }

    /* renamed from: b */
    public final GoogleSignInAccount m19528b() {
        GoogleSignInAccount googleSignInAccount;
        synchronized (this) {
            googleSignInAccount = this.f39080c;
        }
        return googleSignInAccount;
    }

    /* renamed from: c */
    public final GoogleSignInOptions m19526c() {
        GoogleSignInOptions googleSignInOptions;
        synchronized (this) {
            googleSignInOptions = this.f39081d;
        }
        return googleSignInOptions;
    }
}
