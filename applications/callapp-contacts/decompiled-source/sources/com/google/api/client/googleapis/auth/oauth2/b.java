package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.a.aa;
import com.google.api.client.a.ab;
import com.google.api.client.a.ae;
import com.google.api.client.a.i;
import com.google.api.client.http.t;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
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
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f31733a = Pattern.compile("\\s*max-age\\s*=\\s*(\\d+)\\s*");

    /* renamed from: b  reason: collision with root package name */
    private final JsonFactory f31734b;

    /* renamed from: c  reason: collision with root package name */
    private List<PublicKey> f31735c;

    /* renamed from: d  reason: collision with root package name */
    private long f31736d;
    private final w e;
    private final Lock f;
    private final i g;
    private final String h;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/b$a.class */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        final w f31738b;

        /* renamed from: c  reason: collision with root package name */
        final JsonFactory f31739c;

        /* renamed from: a  reason: collision with root package name */
        i f31737a = i.f31625a;

        /* renamed from: d  reason: collision with root package name */
        String f31740d = "https://www.googleapis.com/oauth2/v1/certs";

        public a(w wVar, JsonFactory jsonFactory) {
            this.f31738b = (w) aa.a(wVar);
            this.f31739c = (JsonFactory) aa.a(jsonFactory);
        }
    }

    protected b(a aVar) {
        this.f = new ReentrantLock();
        this.e = aVar.f31738b;
        this.f31734b = aVar.f31739c;
        this.g = aVar.f31737a;
        this.h = aVar.f31740d;
    }

    public b(w wVar, JsonFactory jsonFactory) {
        this(new a(wVar, jsonFactory));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(com.google.api.client.http.n r5) {
        /*
            r0 = r5
            java.lang.String r0 = r0.b()
            if (r0 == 0) goto L_0x0046
            r0 = r5
            java.lang.String r0 = r0.b()
            java.lang.String r1 = ","
            java.lang.String[] r0 = r0.split(r1)
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0016:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0046
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            r9 = r0
            java.util.regex.Pattern r0 = com.google.api.client.googleapis.auth.oauth2.b.f31733a
            r1 = r9
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r9 = r0
            r0 = r9
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x0040
            r0 = r9
            r1 = 1
            java.lang.String r0 = r0.group(r1)
            long r0 = java.lang.Long.parseLong(r0)
            r10 = r0
            goto L_0x0049
        L_0x0040:
            int r8 = r8 + 1
            goto L_0x0016
        L_0x0046:
            r0 = 0
            r10 = r0
        L_0x0049:
            r0 = r10
            r12 = r0
            r0 = r5
            java.lang.Long r0 = r0.l()
            if (r0 == 0) goto L_0x0060
            r0 = r10
            r1 = r5
            java.lang.Long r1 = r1.l()
            long r1 = r1.longValue()
            long r0 = r0 - r1
            r12 = r0
        L_0x0060:
            r0 = 0
            r1 = r12
            long r0 = java.lang.Math.max(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.auth.oauth2.b.a(com.google.api.client.http.n):long");
    }

    private b b() throws GeneralSecurityException, IOException {
        this.f.lock();
        try {
            this.f31735c = new ArrayList();
            CertificateFactory a2 = ab.a();
            t o = this.e.createRequestFactory().a(new com.google.api.client.http.i(this.h)).o();
            this.f31736d = this.g.a() + (a(o.c()) * 1000);
            JsonParser createJsonParser = this.f31734b.createJsonParser(o.h());
            JsonToken currentToken = createJsonParser.getCurrentToken();
            JsonToken jsonToken = currentToken;
            if (currentToken == null) {
                jsonToken = createJsonParser.nextToken();
            }
            aa.a(jsonToken == JsonToken.START_OBJECT);
            while (createJsonParser.nextToken() != JsonToken.END_OBJECT) {
                createJsonParser.nextToken();
                this.f31735c.add(((X509Certificate) a2.generateCertificate(new ByteArrayInputStream(ae.a(createJsonParser.getText())))).getPublicKey());
            }
            this.f31735c = Collections.unmodifiableList(this.f31735c);
            createJsonParser.close();
            return this;
        } finally {
            this.f.unlock();
        }
    }

    public final List<PublicKey> a() throws GeneralSecurityException, IOException {
        this.f.lock();
        try {
            if (this.f31735c == null || this.g.a() + 300000 > this.f31736d) {
                b();
            }
            return this.f31735c;
        } finally {
            this.f.unlock();
        }
    }
}
