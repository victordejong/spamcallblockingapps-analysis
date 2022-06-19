package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* renamed from: com.google.android.gms.auth.api.signin.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/p.class */
public final class C5928p {

    /* renamed from: a */
    private static C5928p f19053a;

    /* renamed from: b */
    private C5914b f19054b;

    /* renamed from: c */
    private GoogleSignInAccount f19055c;

    /* renamed from: d */
    private GoogleSignInOptions f19056d;

    private C5928p(Context context) {
        C5914b m17599b = C5914b.m17599b(context);
        this.f19054b = m17599b;
        this.f19055c = m17599b.m17598c();
        this.f19056d = this.f19054b.m17597d();
    }

    /* renamed from: c */
    public static C5928p m17577c(Context context) {
        C5928p m17576d;
        synchronized (C5928p.class) {
            try {
                m17576d = m17576d(context.getApplicationContext());
            } catch (Throwable th) {
                throw th;
            }
        }
        return m17576d;
    }

    /* renamed from: d */
    private static C5928p m17576d(Context context) {
        synchronized (C5928p.class) {
            try {
                C5928p c5928p = f19053a;
                if (c5928p != null) {
                    return c5928p;
                }
                C5928p c5928p2 = new C5928p(context);
                f19053a = c5928p2;
                return c5928p2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m17579a() {
        synchronized (this) {
            this.f19054b.m17600a();
            this.f19055c = null;
            this.f19056d = null;
        }
    }

    /* renamed from: b */
    public final void m17578b(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        synchronized (this) {
            this.f19054b.m17595f(googleSignInAccount, googleSignInOptions);
            this.f19055c = googleSignInAccount;
            this.f19056d = googleSignInOptions;
        }
    }

    /* renamed from: e */
    public final GoogleSignInAccount m17575e() {
        GoogleSignInAccount googleSignInAccount;
        synchronized (this) {
            googleSignInAccount = this.f19055c;
        }
        return googleSignInAccount;
    }
}
