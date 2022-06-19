package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15335n;
import com.google.api.client.http.C15343t;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.p379a.AbstractC15230i;
import com.google.api.client.p379a.C15207aa;
import com.google.api.client.p379a.C15208ab;
import com.google.api.client.p379a.C15212ae;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.api.client.googleapis.auth.oauth2.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/b.class */
public final class C15283b {

    /* renamed from: a */
    private static final Pattern f55239a = Pattern.compile("\\s*max-age\\s*=\\s*(\\d+)\\s*");

    /* renamed from: b */
    private final JsonFactory f55240b;

    /* renamed from: c */
    private List<PublicKey> f55241c;

    /* renamed from: d */
    private long f55242d;

    /* renamed from: e */
    private final AbstractC15346w f55243e;

    /* renamed from: f */
    private final Lock f55244f;

    /* renamed from: g */
    private final AbstractC15230i f55245g;

    /* renamed from: h */
    private final String f55246h;

    /* renamed from: com.google.api.client.googleapis.auth.oauth2.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/b$a.class */
    public static final class C15284a {

        /* renamed from: b */
        final AbstractC15346w f55248b;

        /* renamed from: c */
        final JsonFactory f55249c;

        /* renamed from: a */
        AbstractC15230i f55247a = AbstractC15230i.f55077a;

        /* renamed from: d */
        String f55250d = "https://www.googleapis.com/oauth2/v1/certs";

        public C15284a(AbstractC15346w abstractC15346w, JsonFactory jsonFactory) {
            this.f55248b = (AbstractC15346w) C15207aa.m9283a(abstractC15346w);
            this.f55249c = (JsonFactory) C15207aa.m9283a(jsonFactory);
        }
    }

    protected C15283b(C15284a c15284a) {
        this.f55244f = new ReentrantLock();
        this.f55243e = c15284a.f55248b;
        this.f55240b = c15284a.f55249c;
        this.f55245g = c15284a.f55247a;
        this.f55246h = c15284a.f55250d;
    }

    public C15283b(AbstractC15346w abstractC15346w, JsonFactory jsonFactory) {
        this(new C15284a(abstractC15346w, jsonFactory));
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    private static long m9167a(C15335n c15335n) {
        char c;
        if (c15335n.m9086b() != null) {
            for (String str : c15335n.m9086b().split(",")) {
                Matcher matcher = f55239a.matcher(str);
                if (matcher.matches()) {
                    c = Long.parseLong(matcher.group(1));
                    break;
                }
            }
        }
        c = 0;
        char c2 = c;
        if (c15335n.m9071l() != null) {
            c2 = c - c15335n.m9071l().longValue();
        }
        return Math.max(0L, (long) c2);
    }

    /* renamed from: b */
    private C15283b m9166b() throws GeneralSecurityException, IOException {
        this.f55244f.lock();
        try {
            this.f55241c = new ArrayList();
            CertificateFactory m9276a = C15208ab.m9276a();
            C15343t m9031o = this.f55243e.createRequestFactory().m9028a(new C15330i(this.f55246h)).m9031o();
            this.f55242d = this.f55245g.mo9243a() + (m9167a(m9031o.m9017c()) * 1000);
            JsonParser createJsonParser = this.f55240b.createJsonParser(m9031o.m9012h());
            JsonToken currentToken = createJsonParser.getCurrentToken();
            JsonToken jsonToken = currentToken;
            if (currentToken == null) {
                jsonToken = createJsonParser.nextToken();
            }
            C15207aa.m9281a(jsonToken == JsonToken.START_OBJECT);
            while (createJsonParser.nextToken() != JsonToken.END_OBJECT) {
                createJsonParser.nextToken();
                this.f55241c.add(((X509Certificate) m9276a.generateCertificate(new ByteArrayInputStream(C15212ae.m9272a(createJsonParser.getText())))).getPublicKey());
            }
            this.f55241c = Collections.unmodifiableList(this.f55241c);
            createJsonParser.close();
            return this;
        } finally {
            this.f55244f.unlock();
        }
    }

    /* renamed from: a */
    public final List<PublicKey> m9168a() throws GeneralSecurityException, IOException {
        this.f55244f.lock();
        try {
            if (this.f55241c == null || this.f55245g.mo9243a() + 300000 > this.f55242d) {
                m9166b();
            }
            return this.f55241c;
        } finally {
            this.f55244f.unlock();
        }
    }
}
