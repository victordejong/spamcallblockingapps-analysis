package com.google.api.client.googleapis.extensions.android.gms.auth;

import android.accounts.Account;
import android.content.Context;
import com.google.android.gms.auth.C11681a;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.api.client.googleapis.extensions.android.p382a.C15287a;
import com.google.api.client.http.AbstractC15334m;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15347x;
import com.google.api.client.http.C15335n;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15343t;
import com.google.api.client.p379a.AbstractC15209ac;
import com.google.api.client.p379a.AbstractC15220c;
import com.google.api.client.p379a.C15246p;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.util.Collection;
/* renamed from: com.google.api.client.googleapis.extensions.android.gms.auth.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/a.class */
public final class C15288a implements AbstractC15342s {

    /* renamed from: a */
    final Context f55253a;

    /* renamed from: b */
    final String f55254b;

    /* renamed from: c */
    private final C15287a f55255c;

    /* renamed from: d */
    private String f55256d;

    /* renamed from: e */
    private Account f55257e;

    /* renamed from: f */
    private AbstractC15209ac f55258f = AbstractC15209ac.f55052a;

    /* renamed from: g */
    private AbstractC15220c f55259g;

    /* renamed from: com.google.api.client.googleapis.extensions.android.gms.auth.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/a$a.class */
    final class C15289a implements AbstractC15334m, AbstractC15347x {

        /* renamed from: a */
        boolean f55260a;

        /* renamed from: b */
        String f55261b;

        C15289a() {
            C15288a.this = r4;
        }

        @Override // com.google.api.client.http.AbstractC15347x
        /* renamed from: a */
        public final boolean mo9003a(C15340q c15340q, C15343t c15343t, boolean z) throws IOException {
            try {
                if (c15343t.f55390c != 401 || this.f55260a) {
                    return false;
                }
                this.f55260a = true;
                C11681a.m19579a(C15288a.this.f55253a, this.f55261b);
                return true;
            } catch (GoogleAuthException e) {
                throw new GoogleAuthIOException(e);
            }
        }

        @Override // com.google.api.client.http.AbstractC15334m
        public final void intercept(C15340q c15340q) throws IOException {
            try {
                this.f55261b = C15288a.this.m9162a();
                C15335n c15335n = c15340q.f55363d;
                c15335n.m9092a("Bearer " + this.f55261b);
            } catch (GooglePlayServicesAvailabilityException e) {
                throw new GooglePlayServicesAvailabilityIOException(e);
            } catch (UserRecoverableAuthException e2) {
                throw new UserRecoverableAuthIOException(e2);
            } catch (GoogleAuthException e3) {
                throw new GoogleAuthIOException(e3);
            }
        }
    }

    public C15288a(Context context, String str) {
        this.f55255c = new C15287a(context);
        this.f55253a = context;
        this.f55254b = str;
    }

    /* renamed from: a */
    public static C15288a m9160a(Context context, Collection<String> collection) {
        C15391m.m8943a(collection != null && collection.iterator().hasNext());
        return new C15288a(context, "oauth2: " + C15246p.m9211a().m9210a(collection));
    }

    /* renamed from: a */
    public final C15288a m9161a(Account account) {
        this.f55257e = account;
        this.f55256d = account == null ? null : account.name;
        return this;
    }

    /* renamed from: a */
    public final String m9162a() throws IOException, GoogleAuthException {
        AbstractC15220c abstractC15220c;
        boolean z;
        while (true) {
            try {
                return C11681a.m19578a(this.f55253a, this.f55256d, this.f55254b);
            } catch (IOException e) {
                try {
                    abstractC15220c = this.f55259g;
                } catch (InterruptedException e2) {
                }
                if (abstractC15220c != null) {
                    AbstractC15209ac abstractC15209ac = this.f55258f;
                    long mo9252a = abstractC15220c.mo9252a();
                    if (mo9252a == -1) {
                        z = false;
                    } else {
                        abstractC15209ac.mo9273a(mo9252a);
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

    @Override // com.google.api.client.http.AbstractC15342s
    /* renamed from: a */
    public final void mo9023a(C15340q c15340q) {
        C15289a c15289a = new C15289a();
        c15340q.f55362c = c15289a;
        c15340q.f55372m = c15289a;
    }
}
