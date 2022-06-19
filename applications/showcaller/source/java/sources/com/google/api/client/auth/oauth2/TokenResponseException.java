package com.google.api.client.auth.oauth2;

import com.google.api.client.http.HttpResponseException;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/oauth2/TokenResponseException.class */
public class TokenResponseException extends HttpResponseException {
    private static final long serialVersionUID = 4020689092957439244L;

    /* renamed from: e */
    private final transient TokenErrorResponse f38190e;

    TokenResponseException(HttpResponseException.C8613a c8613a, TokenErrorResponse tokenErrorResponse) {
        super(c8613a);
        this.f38190e = tokenErrorResponse;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.auth.oauth2.TokenResponseException from(com.google.api.client.json.AbstractC8667c r6, com.google.api.client.http.C8658t r7) {
        /*
            com.google.api.client.http.HttpResponseException$a r0 = new com.google.api.client.http.HttpResponseException$a
            r1 = r0
            r2 = r7
            int r2 = r2.m3065h()
            r3 = r7
            java.lang.String r3 = r3.m3064i()
            r4 = r7
            com.google.api.client.http.n r4 = r4.m3067f()
            r1.<init>(r2, r3, r4)
            r8 = r0
            r0 = r6
            java.lang.Object r0 = com.google.api.client.util.C8731w.m2836d(r0)
            r0 = r7
            java.lang.String r0 = r0.m3068e()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r7
            boolean r0 = r0.m3061l()     // Catch: java.io.IOException -> L71
            if (r0 != 0) goto L66
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r7
            java.io.InputStream r0 = r0.m3070c()     // Catch: java.io.IOException -> L71
            if (r0 == 0) goto L66
            java.lang.String r0 = "application/json; charset=UTF-8"
            r1 = r9
            boolean r0 = com.google.api.client.http.C8654p.m3123c(r0, r1)     // Catch: java.io.IOException -> L71
            if (r0 == 0) goto L66
            com.google.api.client.json.e r0 = new com.google.api.client.json.e     // Catch: java.io.IOException -> L71
            r9 = r0
            r0 = r9
            r1 = r6
            r0.<init>(r1)     // Catch: java.io.IOException -> L71
            r0 = r9
            r1 = r7
            java.io.InputStream r1 = r1.m3070c()     // Catch: java.io.IOException -> L71
            r2 = r7
            java.nio.charset.Charset r2 = r2.m3069d()     // Catch: java.io.IOException -> L71
            java.lang.Class<com.google.api.client.auth.oauth2.TokenErrorResponse> r3 = com.google.api.client.auth.oauth2.TokenErrorResponse.class
            java.lang.Object r0 = r0.mo2845a(r1, r2, r3)     // Catch: java.io.IOException -> L71
            com.google.api.client.auth.oauth2.TokenErrorResponse r0 = (com.google.api.client.auth.oauth2.TokenErrorResponse) r0     // Catch: java.io.IOException -> L71
            r6 = r0
            r0 = r6
            java.lang.String r0 = r0.toPrettyString()     // Catch: java.io.IOException -> L62
            r9 = r0
            goto L6e
        L62:
            r9 = move-exception
            goto L74
        L66:
            r0 = r7
            java.lang.String r0 = r0.m3059n()     // Catch: java.io.IOException -> L71
            r9 = r0
            r0 = r11
            r6 = r0
        L6e:
            goto L7b
        L71:
            r9 = move-exception
            r0 = 0
            r6 = r0
        L74:
            r0 = r9
            r0.printStackTrace()
            r0 = r10
            r9 = r0
        L7b:
            r0 = r7
            java.lang.StringBuilder r0 = com.google.api.client.http.HttpResponseException.computeMessageBuffer(r0)
            r7 = r0
            r0 = r9
            boolean r0 = com.google.api.client.util.C8691b0.m2932a(r0)
            if (r0 != 0) goto L9b
            r0 = r7
            java.lang.String r1 = com.google.api.client.util.C8688a0.f38484a
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r9
            com.google.api.client.http.HttpResponseException$a r0 = r0.m3246a(r1)
        L9b:
            r0 = r8
            r1 = r7
            java.lang.String r1 = r1.toString()
            com.google.api.client.http.HttpResponseException$a r0 = r0.m3244c(r1)
            com.google.api.client.auth.oauth2.TokenResponseException r0 = new com.google.api.client.auth.oauth2.TokenResponseException
            r1 = r0
            r2 = r8
            r3 = r6
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.auth.oauth2.TokenResponseException.from(com.google.api.client.json.c, com.google.api.client.http.t):com.google.api.client.auth.oauth2.TokenResponseException");
    }

    public final TokenErrorResponse getDetails() {
        return this.f38190e;
    }
}
