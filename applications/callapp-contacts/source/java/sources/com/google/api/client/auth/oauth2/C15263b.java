package com.google.api.client.auth.oauth2;

import com.google.api.client.http.AbstractC15334m;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.AbstractC15347x;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15343t;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.p379a.AbstractC15230i;
import com.google.common.base.C15386j;
import com.google.common.base.C15391m;
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
/* renamed from: com.google.api.client.auth.oauth2.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/b.class */
public class C15263b implements AbstractC15334m, AbstractC15342s, AbstractC15347x {

    /* renamed from: a */
    static final Logger f55150a = Logger.getLogger(C15263b.class.getName());

    /* renamed from: b */
    private final Lock f55151b;

    /* renamed from: c */
    private final AbstractC15264a f55152c;

    /* renamed from: d */
    private final AbstractC15230i f55153d;

    /* renamed from: e */
    private String f55154e;

    /* renamed from: f */
    private Long f55155f;

    /* renamed from: g */
    private String f55156g;

    /* renamed from: h */
    private final AbstractC15346w f55157h;

    /* renamed from: i */
    private final AbstractC15334m f55158i;

    /* renamed from: j */
    private final JsonFactory f55159j;

    /* renamed from: k */
    private final String f55160k;

    /* renamed from: l */
    private final Collection<Object> f55161l;

    /* renamed from: m */
    private final AbstractC15342s f55162m;

    /* renamed from: com.google.api.client.auth.oauth2.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/b$a.class */
    public interface AbstractC15264a {
        /* renamed from: a */
        String mo9194a(C15340q c15340q);

        /* renamed from: a */
        void mo9193a(C15340q c15340q, String str) throws IOException;
    }

    /* renamed from: com.google.api.client.auth.oauth2.b$b */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/b$b.class */
    public static final class C15265b {

        /* renamed from: a */
        final AbstractC15264a f55163a;

        /* renamed from: b */
        AbstractC15346w f55164b;

        /* renamed from: c */
        JsonFactory f55165c;

        /* renamed from: d */
        C15330i f55166d;

        /* renamed from: f */
        AbstractC15334m f55168f;

        /* renamed from: g */
        AbstractC15342s f55169g;

        /* renamed from: e */
        AbstractC15230i f55167e = AbstractC15230i.f55077a;

        /* renamed from: h */
        Collection<Object> f55170h = new ArrayList();

        public C15265b(AbstractC15264a abstractC15264a) {
            this.f55163a = (AbstractC15264a) C15391m.m8946a(abstractC15264a);
        }
    }

    public C15263b(AbstractC15264a abstractC15264a) {
        this(new C15265b(abstractC15264a));
    }

    protected C15263b(C15265b c15265b) {
        this.f55151b = new ReentrantLock();
        this.f55152c = (AbstractC15264a) C15391m.m8946a(c15265b.f55163a);
        this.f55157h = c15265b.f55164b;
        this.f55159j = c15265b.f55165c;
        this.f55160k = c15265b.f55166d == null ? null : c15265b.f55166d.m9106b();
        this.f55158i = c15265b.f55168f;
        this.f55162m = c15265b.f55169g;
        this.f55161l = Collections.unmodifiableCollection(c15265b.f55170h);
        this.f55153d = (AbstractC15230i) C15391m.m8946a(c15265b.f55167e);
    }

    /* renamed from: a */
    private C15263b m9198a(Long l) {
        this.f55151b.lock();
        try {
            this.f55155f = l;
            return this;
        } finally {
            this.f55151b.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private boolean m9199a() throws IOException {
        this.f55151b.lock();
        boolean z = true;
        try {
            try {
                TokenResponse b = this.f55156g == null ? null : new C15266c(this.f55157h, this.f55159j, new C15330i(this.f55160k), this.f55156g).mo9183b(this.f55158i).mo9182b(this.f55162m).m9184b();
                if (b != null) {
                    m9197a(b.getAccessToken());
                    if (b.getRefreshToken() != null) {
                        m9195b(b.getRefreshToken());
                    }
                    m9196b(b.getExpiresInSeconds());
                    Iterator<Object> it2 = this.f55161l.iterator();
                    while (it2.hasNext()) {
                        it2.next();
                    }
                    this.f55151b.unlock();
                    return true;
                }
            } catch (TokenResponseException e) {
                if (400 > e.getStatusCode() || e.getStatusCode() >= 500) {
                    z = false;
                }
                if (e.f55148a != null && z) {
                    m9197a((String) null);
                    m9196b((Long) null);
                }
                Iterator<Object> it3 = this.f55161l.iterator();
                while (it3.hasNext()) {
                    it3.next();
                }
                if (z) {
                    throw e;
                }
            }
            this.f55151b.unlock();
            return false;
        } catch (Throwable th) {
            this.f55151b.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    private C15263b m9196b(Long l) {
        return m9198a(l == null ? null : Long.valueOf(this.f55153d.mo9243a() + (l.longValue() * 1000)));
    }

    /* renamed from: b */
    private C15263b m9195b(String str) {
        this.f55151b.lock();
        if (str != null) {
            try {
                C15391m.m8942a((this.f55159j == null || this.f55157h == null || this.f55158i == null || this.f55160k == null) ? false : true, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl");
            } finally {
                this.f55151b.unlock();
            }
        }
        this.f55156g = str;
        return this;
    }

    /* renamed from: a */
    public final C15263b m9197a(String str) {
        this.f55151b.lock();
        try {
            this.f55154e = str;
            return this;
        } finally {
            this.f55151b.unlock();
        }
    }

    /* renamed from: a */
    public void mo9023a(C15340q c15340q) throws IOException {
        c15340q.f55362c = this;
        c15340q.f55372m = this;
    }

    @Override // com.google.api.client.http.AbstractC15347x
    /* renamed from: a */
    public final boolean mo9003a(C15340q c15340q, C15343t c15343t, boolean z) {
        boolean z2;
        boolean z3;
        List<String> list = c15343t.f55392e.f55364e.authenticate;
        if (list != null) {
            for (String str : list) {
                if (str.startsWith("Bearer ")) {
                    z3 = C15261a.f55149a.matcher(str).find();
                    z2 = true;
                    break;
                }
            }
        }
        z3 = false;
        z2 = false;
        if (!z2) {
            z3 = c15343t.f55390c == 401;
        }
        if (z3) {
            try {
                this.f55151b.lock();
                boolean z4 = true;
                if (C15386j.m8951a(this.f55154e, this.f55152c.mo9194a(c15340q))) {
                    z4 = m9199a();
                }
                this.f55151b.unlock();
                return z4;
            } catch (IOException e) {
                f55150a.log(Level.SEVERE, "unable to refresh token", (Throwable) e);
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Finally extract failed */
    public final Long getExpiresInSeconds() {
        this.f55151b.lock();
        try {
            Long l = this.f55155f;
            if (l == null) {
                this.f55151b.unlock();
                return null;
            }
            long longValue = (l.longValue() - this.f55153d.mo9243a()) / 1000;
            this.f55151b.unlock();
            return Long.valueOf(longValue);
        } catch (Throwable th) {
            this.f55151b.unlock();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
        if (r5.f55154e == null) goto L12;
     */
    @Override // com.google.api.client.http.AbstractC15334m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void intercept(com.google.api.client.http.C15340q r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            java.util.concurrent.locks.Lock r0 = r0.f55151b
            r0.lock()
            r0 = r5
            java.lang.Long r0 = r0.getExpiresInSeconds()     // Catch: java.lang.Throwable -> L4d
            r7 = r0
            r0 = r5
            java.lang.String r0 = r0.f55154e     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L24
            r0 = r7
            if (r0 == 0) goto L3c
            r0 = r7
            long r0 = r0.longValue()     // Catch: java.lang.Throwable -> L4d
            r1 = 60
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L3c
        L24:
            r0 = r5
            boolean r0 = r0.m9199a()     // Catch: java.lang.Throwable -> L4d
            r0 = r5
            java.lang.String r0 = r0.f55154e     // Catch: java.lang.Throwable -> L4d
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L3c
        L32:
            r0 = r5
            java.util.concurrent.locks.Lock r0 = r0.f55151b
            r0.unlock()
            return
        L3c:
            r0 = r5
            com.google.api.client.auth.oauth2.b$a r0 = r0.f55152c     // Catch: java.lang.Throwable -> L4d
            r1 = r6
            r2 = r5
            java.lang.String r2 = r2.f55154e     // Catch: java.lang.Throwable -> L4d
            r0.mo9193a(r1, r2)     // Catch: java.lang.Throwable -> L4d
            goto L32
        L4d:
            r6 = move-exception
            r0 = r5
            java.util.concurrent.locks.Lock r0 = r0.f55151b
            r0.unlock()
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.auth.oauth2.C15263b.intercept(com.google.api.client.http.q):void");
    }
}
