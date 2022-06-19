package com.google.api.client.auth.oauth2;

import com.google.api.client.http.HttpResponseException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/TokenResponseException.class */
public class TokenResponseException extends HttpResponseException {

    /* renamed from: a */
    final transient TokenErrorResponse f55148a;

    TokenResponseException(HttpResponseException.C15302a c15302a, TokenErrorResponse tokenErrorResponse) {
        super(c15302a);
        this.f55148a = tokenErrorResponse;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.auth.oauth2.TokenResponseException m9201a(com.google.api.client.json.JsonFactory r6, com.google.api.client.http.C15343t r7) {
        /*
            com.google.api.client.http.HttpResponseException$a r0 = new com.google.api.client.http.HttpResponseException$a
            r1 = r0
            r2 = r7
            int r2 = r2.f55390c
            r3 = r7
            java.lang.String r3 = r3.f55391d
            r4 = r7
            com.google.api.client.http.q r4 = r4.f55392e
            com.google.api.client.http.n r4 = r4.f55364e
            r1.<init>(r2, r3, r4)
            r8 = r0
            r0 = r6
            java.lang.Object r0 = com.google.common.base.C15391m.m8946a(r0)
            r0 = r7
            java.lang.String r0 = r0.f55388a
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            int r0 = r0.f55390c     // Catch: java.io.IOException -> L76
            boolean r0 = com.google.api.client.http.C15345v.m9005a(r0)     // Catch: java.io.IOException -> L76
            if (r0 != 0) goto L6c
            r0 = r9
            if (r0 == 0) goto L6c
            r0 = r7
            java.io.InputStream r0 = r0.m9012h()     // Catch: java.io.IOException -> L76
            if (r0 == 0) goto L6c
            java.lang.String r0 = "application/json; charset=UTF-8"
            r1 = r9
            boolean r0 = com.google.api.client.http.C15339p.m9063b(r0, r1)     // Catch: java.io.IOException -> L76
            if (r0 == 0) goto L6c
            com.google.api.client.json.JsonObjectParser r0 = new com.google.api.client.json.JsonObjectParser     // Catch: java.io.IOException -> L76
            r9 = r0
            r0 = r9
            r1 = r6
            r0.<init>(r1)     // Catch: java.io.IOException -> L76
            r0 = r9
            r1 = r7
            java.io.InputStream r1 = r1.m9012h()     // Catch: java.io.IOException -> L76
            r2 = r7
            java.nio.charset.Charset r2 = r2.m9008l()     // Catch: java.io.IOException -> L76
            java.lang.Class<com.google.api.client.auth.oauth2.TokenErrorResponse> r3 = com.google.api.client.auth.oauth2.TokenErrorResponse.class
            java.lang.Object r0 = r0.parseAndClose(r1, r2, r3)     // Catch: java.io.IOException -> L76
            com.google.api.client.auth.oauth2.TokenErrorResponse r0 = (com.google.api.client.auth.oauth2.TokenErrorResponse) r0     // Catch: java.io.IOException -> L76
            r9 = r0
            r0 = r9
            java.lang.String r0 = r0.toPrettyString()     // Catch: java.io.IOException -> L65
            r6 = r0
            goto L86
        L65:
            r11 = move-exception
            r0 = r9
            r6 = r0
            goto L7c
        L6c:
            r0 = r7
            java.lang.String r0 = r0.m9009k()     // Catch: java.io.IOException -> L76
            r6 = r0
            r0 = 0
            r9 = r0
            goto L86
        L76:
            r9 = move-exception
            r0 = 0
            r6 = r0
            r0 = r9
            r11 = r0
        L7c:
            r0 = r11
            r0.printStackTrace()
            r0 = r6
            r9 = r0
            r0 = r10
            r6 = r0
        L86:
            r0 = r7
            java.lang.StringBuilder r0 = com.google.api.client.http.HttpResponseException.computeMessageBuffer(r0)
            r7 = r0
            r0 = r6
            boolean r0 = com.google.common.base.C15388l.m8950a(r0)
            if (r0 != 0) goto La5
            r0 = r7
            java.lang.String r1 = com.google.api.client.p379a.C15212ae.f55053a
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            r0.f55287d = r1
        La5:
            r0 = r8
            r1 = r7
            java.lang.String r1 = r1.toString()
            r0.f55288e = r1
            com.google.api.client.auth.oauth2.TokenResponseException r0 = new com.google.api.client.auth.oauth2.TokenResponseException
            r1 = r0
            r2 = r8
            r3 = r9
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.auth.oauth2.TokenResponseException.m9201a(com.google.api.client.json.JsonFactory, com.google.api.client.http.t):com.google.api.client.auth.oauth2.TokenResponseException");
    }
}
