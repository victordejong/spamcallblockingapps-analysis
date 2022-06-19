package com.google.api.client.googleapis.json;

import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15343t;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.p379a.C15207aa;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonResponseException.class */
public class GoogleJsonResponseException extends HttpResponseException {
    private static final long serialVersionUID = 409811126989994864L;
    private final transient GoogleJsonError details;

    public GoogleJsonResponseException(HttpResponseException.C15302a c15302a, GoogleJsonError googleJsonError) {
        super(c15302a);
        this.details = googleJsonError;
    }

    public static C15343t execute(JsonFactory jsonFactory, C15340q c15340q) throws GoogleJsonResponseException, IOException {
        C15207aa.m9283a(jsonFactory);
        boolean m9032n = c15340q.m9032n();
        if (m9032n) {
            c15340q.m9045a(false);
        }
        C15343t m9031o = c15340q.m9031o();
        c15340q.m9045a(m9032n);
        if (!m9032n || m9031o.m9016d()) {
            return m9031o;
        }
        throw from(jsonFactory, m9031o);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:(4:94|9|10|(5:96|11|12|(1:14)|15))|(11:17|(1:19)(2:20|(5:22|23|97|24|25))|31|92|(2:33|34)(7:36|(2:38|39)|80|81|(1:83)|84|85)|91|80|81|(0)|84|85)|30|31|92|(0)(0)|91|80|81|(0)|84|85) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00be, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0184, code lost:
        r12.printStackTrace();
        r12 = r6;
        r10 = r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b0 A[Catch: IOException -> 0x00be, TRY_ENTER, TRY_LEAVE, TryCatch #7 {IOException -> 0x00be, blocks: (B:33:0x00b0, B:38:0x00cf), top: B:92:0x00ad }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.googleapis.json.GoogleJsonResponseException from(com.google.api.client.json.JsonFactory r6, com.google.api.client.http.C15343t r7) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.json.GoogleJsonResponseException.from(com.google.api.client.json.JsonFactory, com.google.api.client.http.t):com.google.api.client.googleapis.json.GoogleJsonResponseException");
    }

    public final GoogleJsonError getDetails() {
        return this.details;
    }
}
