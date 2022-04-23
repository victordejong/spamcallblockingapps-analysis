package com.google.api.client.auth.oauth2;

import com.google.api.client.a.i;
import com.google.api.client.http.m;
import com.google.api.client.http.q;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.w;
import com.google.api.client.http.x;
import com.google.api.client.json.JsonFactory;
import com.google.common.base.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/b.class */
public class b implements m, s, x {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f31683a = Logger.getLogger(b.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private final Lock f31684b;

    /* renamed from: c  reason: collision with root package name */
    private final a f31685c;

    /* renamed from: d  reason: collision with root package name */
    private final i f31686d;
    private String e;
    private Long f;
    private String g;
    private final w h;
    private final m i;
    private final JsonFactory j;
    private final String k;
    private final Collection<Object> l;
    private final s m;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/b$a.class */
    public interface a {
        String a(q qVar);

        void a(q qVar, String str) throws IOException;
    }

    /* renamed from: com.google.api.client.auth.oauth2.b$b  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/b$b.class */
    public static final class C0498b {

        /* renamed from: a  reason: collision with root package name */
        final a f31687a;

        /* renamed from: b  reason: collision with root package name */
        w f31688b;

        /* renamed from: c  reason: collision with root package name */
        JsonFactory f31689c;

        /* renamed from: d  reason: collision with root package name */
        com.google.api.client.http.i f31690d;
        m f;
        s g;
        i e = i.f31625a;
        Collection<Object> h = new ArrayList();

        public C0498b(a aVar) {
            this.f31687a = (a) com.google.common.base.m.a(aVar);
        }
    }

    public b(a aVar) {
        this(new C0498b(aVar));
    }

    protected b(C0498b bVar) {
        this.f31684b = new ReentrantLock();
        this.f31685c = (a) com.google.common.base.m.a(bVar.f31687a);
        this.h = bVar.f31688b;
        this.j = bVar.f31689c;
        this.k = bVar.f31690d == null ? null : bVar.f31690d.b();
        this.i = bVar.f;
        this.m = bVar.g;
        this.l = Collections.unmodifiableCollection(bVar.h);
        this.f31686d = (i) com.google.common.base.m.a(bVar.e);
    }

    private b a(Long l) {
        this.f31684b.lock();
        try {
            this.f = l;
            return this;
        } finally {
            this.f31684b.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    private boolean a() throws IOException {
        this.f31684b.lock();
        boolean z = true;
        try {
            try {
                TokenResponse b2 = this.g == null ? null : new c(this.h, this.j, new com.google.api.client.http.i(this.k), this.g).b(this.i).b(this.m).b();
                if (b2 != null) {
                    a(b2.getAccessToken());
                    if (b2.getRefreshToken() != null) {
                        b(b2.getRefreshToken());
                    }
                    b(b2.getExpiresInSeconds());
                    Iterator<Object> it2 = this.l.iterator();
                    while (it2.hasNext()) {
                        it2.next();
                    }
                    this.f31684b.unlock();
                    return true;
                }
            } catch (TokenResponseException e) {
                if (400 > e.getStatusCode() || e.getStatusCode() >= 500) {
                    z = false;
                }
                if (e.f31681a != null && z) {
                    a((String) null);
                    b((Long) null);
                }
                Iterator<Object> it3 = this.l.iterator();
                while (it3.hasNext()) {
                    it3.next();
                }
                if (z) {
                    throw e;
                }
            }
            this.f31684b.unlock();
            return false;
        } catch (Throwable th) {
            this.f31684b.unlock();
            throw th;
        }
    }

    private b b(Long l) {
        return a(l == null ? null : Long.valueOf(this.f31686d.a() + (l.longValue() * 1000)));
    }

    private b b(String str) {
        this.f31684b.lock();
        if (str != null) {
            try {
                com.google.common.base.m.a((this.j == null || this.h == null || this.i == null || this.k == null) ? false : true, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl");
            } finally {
                this.f31684b.unlock();
            }
        }
        this.g = str;
        return this;
    }

    public final b a(String str) {
        this.f31684b.lock();
        try {
            this.e = str;
            return this;
        } finally {
            this.f31684b.unlock();
        }
    }

    public void a(q qVar) throws IOException {
        qVar.f31824c = this;
        qVar.m = this;
    }

    @Override // com.google.api.client.http.x
    public final boolean a(q qVar, t tVar, boolean z) {
        boolean z2;
        boolean z3;
        List<String> list = tVar.e.e.authenticate;
        if (list != null) {
            for (String str : list) {
                if (str.startsWith("Bearer ")) {
                    z3 = com.google.api.client.auth.oauth2.a.f31682a.matcher(str).find();
                    z2 = true;
                    break;
                }
            }
        }
        z3 = false;
        z2 = false;
        if (!z2) {
            z3 = tVar.f31830c == 401;
        }
        if (!z3) {
            return false;
        }
        try {
            this.f31684b.lock();
            boolean z4 = true;
            if (j.a(this.e, this.f31685c.a(qVar))) {
                z4 = a();
            }
            this.f31684b.unlock();
            return z4;
        } catch (IOException e) {
            f31683a.log(Level.SEVERE, "unable to refresh token", (Throwable) e);
            return false;
        }
    }

    /* JADX WARN: Finally extract failed */
    public final Long getExpiresInSeconds() {
        this.f31684b.lock();
        try {
            Long l = this.f;
            if (l == null) {
                this.f31684b.unlock();
                return null;
            }
            long longValue = (l.longValue() - this.f31686d.a()) / 1000;
            this.f31684b.unlock();
            return Long.valueOf(longValue);
        } catch (Throwable th) {
            this.f31684b.unlock();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
        if (r5.e == null) goto L_0x0032;
     */
    @Override // com.google.api.client.http.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void intercept(com.google.api.client.http.q r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            java.util.concurrent.locks.Lock r0 = r0.f31684b
            r0.lock()
            r0 = r5
            java.lang.Long r0 = r0.getExpiresInSeconds()     // Catch: all -> 0x004d
            r7 = r0
            r0 = r5
            java.lang.String r0 = r0.e     // Catch: all -> 0x004d
            if (r0 == 0) goto L_0x0024
            r0 = r7
            if (r0 == 0) goto L_0x003c
            r0 = r7
            long r0 = r0.longValue()     // Catch: all -> 0x004d
            r1 = 60
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x003c
        L_0x0024:
            r0 = r5
            boolean r0 = r0.a()     // Catch: all -> 0x004d
            r0 = r5
            java.lang.String r0 = r0.e     // Catch: all -> 0x004d
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x003c
        L_0x0032:
            r0 = r5
            java.util.concurrent.locks.Lock r0 = r0.f31684b
            r0.unlock()
            return
        L_0x003c:
            r0 = r5
            com.google.api.client.auth.oauth2.b$a r0 = r0.f31685c     // Catch: all -> 0x004d
            r1 = r6
            r2 = r5
            java.lang.String r2 = r2.e     // Catch: all -> 0x004d
            r0.a(r1, r2)     // Catch: all -> 0x004d
            goto L_0x0032
        L_0x004d:
            r6 = move-exception
            r0 = r5
            java.util.concurrent.locks.Lock r0 = r0.f31684b
            r0.unlock()
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.auth.oauth2.b.intercept(com.google.api.client.http.q):void");
    }
}
