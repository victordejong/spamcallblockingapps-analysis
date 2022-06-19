package com.google.api.client.googleapis.extensions.android.gms.auth;

import android.accounts.Account;
import android.content.Context;
import com.google.android.gms.auth.C5874a;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.api.client.googleapis.p281c.p282a.p283a.C8594a;
import com.google.api.client.http.AbstractC8649m;
import com.google.api.client.http.AbstractC8657s;
import com.google.api.client.http.AbstractC8662x;
import com.google.api.client.http.C8650n;
import com.google.api.client.http.C8655q;
import com.google.api.client.http.C8658t;
import com.google.api.client.util.AbstractC8692c;
import com.google.api.client.util.AbstractC8733y;
import com.google.api.client.util.C8694d;
import com.google.api.client.util.C8719n;
import com.google.api.client.util.C8731w;
import java.io.IOException;
import java.util.Collection;
/* renamed from: com.google.api.client.googleapis.extensions.android.gms.auth.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/a.class */
public class C8607a implements AbstractC8657s {

    /* renamed from: a */
    final Context f38225a;

    /* renamed from: b */
    final String f38226b;

    /* renamed from: c */
    private final C8594a f38227c;

    /* renamed from: d */
    private String f38228d;

    /* renamed from: e */
    private Account f38229e;

    /* renamed from: f */
    private AbstractC8733y f38230f = AbstractC8733y.f38567a;

    /* renamed from: g */
    private AbstractC8692c f38231g;

    /* renamed from: com.google.api.client.googleapis.extensions.android.gms.auth.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/a$a.class */
    class C8608a implements AbstractC8649m, AbstractC8662x {

        /* renamed from: a */
        boolean f38232a;

        /* renamed from: b */
        String f38233b;

        C8608a() {
            C8607a.this = r4;
        }

        @Override // com.google.api.client.http.AbstractC8649m
        /* renamed from: a */
        public void mo3159a(C8655q c8655q) {
            try {
                this.f38233b = C8607a.this.m3274a();
                C8650n m3100f = c8655q.m3100f();
                m3100f.m3131v("Bearer " + this.f38233b);
            } catch (GooglePlayServicesAvailabilityException e) {
                throw new GooglePlayServicesAvailabilityIOException(e);
            } catch (UserRecoverableAuthException e2) {
                throw new UserRecoverableAuthIOException(e2);
            } catch (GoogleAuthException e3) {
                throw new GoogleAuthIOException(e3);
            }
        }

        @Override // com.google.api.client.http.AbstractC8662x
        /* renamed from: b */
        public boolean mo3049b(C8655q c8655q, C8658t c8658t, boolean z) {
            try {
                if (c8658t.m3065h() != 401 || this.f38232a) {
                    return false;
                }
                this.f38232a = true;
                C5874a.m17723a(C8607a.this.f38225a, this.f38233b);
                return true;
            } catch (GoogleAuthException e) {
                throw new GoogleAuthIOException(e);
            }
        }
    }

    public C8607a(Context context, String str) {
        this.f38227c = new C8594a(context);
        this.f38225a = context;
        this.f38226b = str;
    }

    /* renamed from: d */
    public static C8607a m3272d(Context context, Collection<String> collection) {
        C8731w.m2839a(collection != null && collection.iterator().hasNext());
        return new C8607a(context, "oauth2: " + C8719n.m2848b(' ').m2849a(collection));
    }

    /* renamed from: a */
    public String m3274a() {
        AbstractC8692c abstractC8692c;
        AbstractC8692c abstractC8692c2 = this.f38231g;
        if (abstractC8692c2 != null) {
            abstractC8692c2.m2931a();
        }
        while (true) {
            try {
                return C5874a.m17722e(this.f38225a, this.f38228d, this.f38226b);
            } catch (IOException e) {
                try {
                    abstractC8692c = this.f38231g;
                } catch (InterruptedException e2) {
                }
                if (abstractC8692c == null || !C8694d.m2928a(this.f38230f, abstractC8692c)) {
                    throw e;
                    break;
                }
            }
        }
    }

    @Override // com.google.api.client.http.AbstractC8657s
    /* renamed from: b */
    public void mo3073b(C8655q c8655q) {
        C8608a c8608a = new C8608a();
        c8655q.m3082x(c8608a);
        c8655q.m3107D(c8608a);
    }

    /* renamed from: c */
    public final C8607a m3273c(Account account) {
        this.f38229e = account;
        this.f38228d = account == null ? null : account.name;
        return this;
    }
}
