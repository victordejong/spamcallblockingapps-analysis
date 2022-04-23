package com.google.api.client.googleapis.extensions.android.gms.auth;

import android.accounts.Account;
import android.content.Context;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.api.client.a.ac;
import com.google.api.client.a.c;
import com.google.api.client.a.p;
import com.google.api.client.http.m;
import com.google.api.client.http.n;
import com.google.api.client.http.q;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.x;
import java.io.IOException;
import java.util.Collection;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/a.class */
public final class a implements s {

    /* renamed from: a  reason: collision with root package name */
    final Context f31743a;

    /* renamed from: b  reason: collision with root package name */
    final String f31744b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.api.client.googleapis.extensions.android.a.a f31745c;

    /* renamed from: d  reason: collision with root package name */
    private String f31746d;
    private Account e;
    private ac f = ac.f31602a;
    private c g;

    /* renamed from: com.google.api.client.googleapis.extensions.android.gms.auth.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/a$a.class */
    final class C0504a implements m, x {

        /* renamed from: a  reason: collision with root package name */
        boolean f31747a;

        /* renamed from: b  reason: collision with root package name */
        String f31748b;

        C0504a() {
        }

        @Override // com.google.api.client.http.x
        public final boolean a(q qVar, t tVar, boolean z) throws IOException {
            try {
                if (tVar.f31830c != 401 || this.f31747a) {
                    return false;
                }
                this.f31747a = true;
                com.google.android.gms.auth.a.a(a.this.f31743a, this.f31748b);
                return true;
            } catch (GoogleAuthException e) {
                throw new GoogleAuthIOException(e);
            }
        }

        @Override // com.google.api.client.http.m
        public final void intercept(q qVar) throws IOException {
            try {
                this.f31748b = a.this.a();
                n nVar = qVar.f31825d;
                nVar.a("Bearer " + this.f31748b);
            } catch (GooglePlayServicesAvailabilityException e) {
                throw new GooglePlayServicesAvailabilityIOException(e);
            } catch (UserRecoverableAuthException e2) {
                throw new UserRecoverableAuthIOException(e2);
            } catch (GoogleAuthException e3) {
                throw new GoogleAuthIOException(e3);
            }
        }
    }

    public a(Context context, String str) {
        this.f31745c = new com.google.api.client.googleapis.extensions.android.a.a(context);
        this.f31743a = context;
        this.f31744b = str;
    }

    public static a a(Context context, Collection<String> collection) {
        com.google.common.base.m.a(collection != null && collection.iterator().hasNext());
        return new a(context, "oauth2: " + p.a().a(collection));
    }

    public final a a(Account account) {
        this.e = account;
        this.f31746d = account == null ? null : account.name;
        return this;
    }

    public final String a() throws IOException, GoogleAuthException {
        c cVar;
        boolean z;
        while (true) {
            try {
                return com.google.android.gms.auth.a.a(this.f31743a, this.f31746d, this.f31744b);
            } catch (IOException e) {
                try {
                    cVar = this.g;
                } catch (InterruptedException e2) {
                }
                if (cVar != null) {
                    ac acVar = this.f;
                    long a2 = cVar.a();
                    if (a2 == -1) {
                        z = false;
                    } else {
                        acVar.a(a2);
                        z = true;
                    }
                    if (z) {
                        continue;
                    }
                }
                throw e;
                break;
            }
        }
    }

    @Override // com.google.api.client.http.s
    public final void a(q qVar) {
        C0504a aVar = new C0504a();
        qVar.f31824c = aVar;
        qVar.m = aVar;
    }
}
