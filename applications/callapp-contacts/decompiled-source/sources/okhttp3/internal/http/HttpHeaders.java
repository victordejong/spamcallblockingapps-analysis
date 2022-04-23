package okhttp3.internal.http;

import c.f;
import c.i;
import com.appsflyer.internal.referrer.Payload;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n��\u001a\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f\u001a\n\u0010\r\u001a\u00020\u0004*\u00020\u0006\u001a\u001a\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u0012H\u0002\u001a\u000e\u0010\u0013\u001a\u0004\u0018\u00010\f*\u00020\u0010H\u0002\u001a\u000e\u0010\u0014\u001a\u0004\u0018\u00010\f*\u00020\u0010H\u0002\u001a\u001a\u0010\u0015\u001a\u00020\u000f*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\n\u001a\f\u0010\u001a\u001a\u00020\u0004*\u00020\u0010H\u0002\u001a\u0014\u0010\u001b\u001a\u00020\u0004*\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\"\u000e\u0010��\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001e"}, d2 = {"QUOTED_STRING_DELIMITERS", "Lokio/ByteString;", "TOKEN_DELIMITERS", "hasBody", "", Payload.RESPONSE, "Lokhttp3/Response;", "parseChallenges", "", "Lokhttp3/Challenge;", "Lokhttp3/Headers;", "headerName", "", "promisesBody", "readChallengeHeader", "", "Lokio/Buffer;", "result", "", "readQuotedString", "readToken", "receiveHeaders", "Lokhttp3/CookieJar;", "url", "Lokhttp3/HttpUrl;", "headers", "skipCommasAndWhitespace", "startsWith", "prefix", "", "okhttp"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http/HttpHeaders.class */
public final class HttpHeaders {
    private static final i QUOTED_STRING_DELIMITERS = i.a.a("\"\\");
    private static final i TOKEN_DELIMITERS = i.a.a("\t ,=");

    static {
        i.a aVar = i.f6297d;
        i.a aVar2 = i.f6297d;
    }

    public static final boolean hasBody(Response response) {
        p.d(response, "response");
        return promisesBody(response);
    }

    public static final List<Challenge> parseChallenges(Headers parseChallenges, String headerName) {
        p.d(parseChallenges, "$this$parseChallenges");
        p.d(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = parseChallenges.size();
        for (int i = 0; i < size; i++) {
            if (kotlin.h.p.a(headerName, parseChallenges.name(i))) {
                try {
                    readChallengeHeader(new f().b(parseChallenges.value(i)), arrayList);
                } catch (EOFException e) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(Response promisesBody) {
        p.d(promisesBody, "$this$promisesBody");
        if (p.a((Object) promisesBody.request().method(), (Object) "HEAD")) {
            return false;
        }
        int code = promisesBody.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && Util.headersContentLength(promisesBody) == -1 && !kotlin.h.p.a("chunked", Response.header$default(promisesBody, "Transfer-Encoding", null, 2, null))) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0135, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0135, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void readChallengeHeader(c.f r6, java.util.List<okhttp3.Challenge> r7) throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.readChallengeHeader(c.f, java.util.List):void");
    }

    private static final String readQuotedString(f fVar) throws EOFException {
        if (fVar.i() == 34) {
            f fVar2 = new f();
            while (true) {
                long c2 = fVar.c(QUOTED_STRING_DELIMITERS);
                if (c2 == -1) {
                    return null;
                }
                if (fVar.c(c2) == 34) {
                    fVar2.write(fVar, c2);
                    fVar.i();
                    return fVar2.r();
                } else if (fVar.f6289b == c2 + 1) {
                    return null;
                } else {
                    fVar2.write(fVar, c2);
                    fVar.i();
                    fVar2.write(fVar, 1L);
                }
            }
        } else {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [c.f] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.String readToken(c.f r5) {
        /*
            r0 = r5
            c.i r1 = okhttp3.internal.http.HttpHeaders.TOKEN_DELIMITERS
            long r0 = r0.c(r1)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0017
            r0 = r5
            long r0 = r0.f6289b
            r8 = r0
        L_0x0017:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0023
            r0 = r5
            r1 = r8
            java.lang.String r0 = r0.e(r1)
            return r0
        L_0x0023:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.readToken(c.f):java.lang.String");
    }

    public static final void receiveHeaders(CookieJar receiveHeaders, HttpUrl url, Headers headers) {
        p.d(receiveHeaders, "$this$receiveHeaders");
        p.d(url, "url");
        p.d(headers, "headers");
        if (receiveHeaders != CookieJar.NO_COOKIES) {
            List<Cookie> parseAll = Cookie.Companion.parseAll(url, headers);
            if (!parseAll.isEmpty()) {
                receiveHeaders.saveFromResponse(url, parseAll);
            }
        }
    }

    private static final boolean skipCommasAndWhitespace(f fVar) {
        boolean z = false;
        while (!fVar.e()) {
            byte c2 = fVar.c(0L);
            if (c2 == 9 || c2 == 32) {
                fVar.i();
            } else if (c2 != 44) {
                break;
            } else {
                fVar.i();
                z = true;
            }
        }
        return z;
    }

    private static final boolean startsWith(f fVar, byte b2) {
        return !fVar.e() && fVar.c(0L) == b2;
    }
}
