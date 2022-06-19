package com.google.api.client.googleapis.json;

import com.google.api.client.http.C8655q;
import com.google.api.client.http.C8658t;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.util.C8731w;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonResponseException.class */
public class GoogleJsonResponseException extends HttpResponseException {
    private static final long serialVersionUID = 409811126989994864L;

    /* renamed from: e */
    private final transient GoogleJsonError f38235e;

    public GoogleJsonResponseException(HttpResponseException.C8613a c8613a, GoogleJsonError googleJsonError) {
        super(c8613a);
        this.f38235e = googleJsonError;
    }

    public static C8658t execute(AbstractC8667c abstractC8667c, C8655q c8655q) {
        C8731w.m2836d(abstractC8667c);
        boolean m3092n = c8655q.m3092n();
        if (m3092n) {
            c8655q.m3108C(false);
        }
        C8658t m3104b = c8655q.m3104b();
        c8655q.m3108C(m3092n);
        if (!m3092n || m3104b.m3061l()) {
            return m3104b;
        }
        throw from(abstractC8667c, m3104b);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.googleapis.json.GoogleJsonResponseException from(com.google.api.client.json.AbstractC8667c r6, com.google.api.client.http.C8658t r7) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.json.GoogleJsonResponseException.from(com.google.api.client.json.c, com.google.api.client.http.t):com.google.api.client.googleapis.json.GoogleJsonResponseException");
    }

    public final GoogleJsonError getDetails() {
        return this.f38235e;
    }
}
