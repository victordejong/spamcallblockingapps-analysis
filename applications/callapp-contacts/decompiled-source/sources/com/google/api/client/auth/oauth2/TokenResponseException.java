package com.google.api.client.auth.oauth2;

import com.google.api.client.http.HttpResponseException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/TokenResponseException.class */
public class TokenResponseException extends HttpResponseException {

    /* renamed from: a  reason: collision with root package name */
    final transient TokenErrorResponse f31681a;

    TokenResponseException(HttpResponseException.a aVar, TokenErrorResponse tokenErrorResponse) {
        super(aVar);
        this.f31681a = tokenErrorResponse;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.auth.oauth2.TokenResponseException a(com.google.api.client.json.JsonFactory r6, com.google.api.client.http.t r7) {
        /*
            com.google.api.client.http.HttpResponseException$a r0 = new com.google.api.client.http.HttpResponseException$a
            r1 = r0
            r2 = r7
            int r2 = r2.f31830c
            r3 = r7
            java.lang.String r3 = r3.f31831d
            r4 = r7
            com.google.api.client.http.q r4 = r4.e
            com.google.api.client.http.n r4 = r4.e
            r1.<init>(r2, r3, r4)
            r8 = r0
            r0 = r6
            java.lang.Object r0 = com.google.common.base.m.a(r0)
            r0 = r7
            java.lang.String r0 = r0.f31828a
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            int r0 = r0.f31830c     // Catch: IOException -> 0x0076
            boolean r0 = com.google.api.client.http.v.a(r0)     // Catch: IOException -> 0x0076
            if (r0 != 0) goto L_0x006c
            r0 = r9
            if (r0 == 0) goto L_0x006c
            r0 = r7
            java.io.InputStream r0 = r0.h()     // Catch: IOException -> 0x0076
            if (r0 == 0) goto L_0x006c
            java.lang.String r0 = "application/json; charset=UTF-8"
            r1 = r9
            boolean r0 = com.google.api.client.http.p.b(r0, r1)     // Catch: IOException -> 0x0076
            if (r0 == 0) goto L_0x006c
            com.google.api.client.json.JsonObjectParser r0 = new com.google.api.client.json.JsonObjectParser     // Catch: IOException -> 0x0076
            r9 = r0
            r0 = r9
            r1 = r6
            r0.<init>(r1)     // Catch: IOException -> 0x0076
            r0 = r9
            r1 = r7
            java.io.InputStream r1 = r1.h()     // Catch: IOException -> 0x0076
            r2 = r7
            java.nio.charset.Charset r2 = r2.l()     // Catch: IOException -> 0x0076
            java.lang.Class<com.google.api.client.auth.oauth2.TokenErrorResponse> r3 = com.google.api.client.auth.oauth2.TokenErrorResponse.class
            java.lang.Object r0 = r0.parseAndClose(r1, r2, r3)     // Catch: IOException -> 0x0076
            com.google.api.client.auth.oauth2.TokenErrorResponse r0 = (com.google.api.client.auth.oauth2.TokenErrorResponse) r0     // Catch: IOException -> 0x0076
            r9 = r0
            r0 = r9
            java.lang.String r0 = r0.toPrettyString()     // Catch: IOException -> 0x0065
            r6 = r0
            goto L_0x0086
        L_0x0065:
            r11 = move-exception
            r0 = r9
            r6 = r0
            goto L_0x007c
        L_0x006c:
            r0 = r7
            java.lang.String r0 = r0.k()     // Catch: IOException -> 0x0076
            r6 = r0
            r0 = 0
            r9 = r0
            goto L_0x0086
        L_0x0076:
            r9 = move-exception
            r0 = 0
            r6 = r0
            r0 = r9
            r11 = r0
        L_0x007c:
            r0 = r11
            r0.printStackTrace()
            r0 = r6
            r9 = r0
            r0 = r10
            r6 = r0
        L_0x0086:
            r0 = r7
            java.lang.StringBuilder r0 = com.google.api.client.http.HttpResponseException.computeMessageBuffer(r0)
            r7 = r0
            r0 = r6
            boolean r0 = com.google.common.base.l.a(r0)
            if (r0 != 0) goto L_0x00a5
            r0 = r7
            java.lang.String r1 = com.google.api.client.a.ae.f31603a
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            r0.f31767d = r1
        L_0x00a5:
            r0 = r8
            r1 = r7
            java.lang.String r1 = r1.toString()
            r0.e = r1
            com.google.api.client.auth.oauth2.TokenResponseException r0 = new com.google.api.client.auth.oauth2.TokenResponseException
            r1 = r0
            r2 = r8
            r3 = r9
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.auth.oauth2.TokenResponseException.a(com.google.api.client.json.JsonFactory, com.google.api.client.http.t):com.google.api.client.auth.oauth2.TokenResponseException");
    }
}
