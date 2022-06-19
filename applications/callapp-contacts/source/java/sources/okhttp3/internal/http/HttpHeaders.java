package okhttp3.internal.http;

import com.appsflyer.internal.referrer.Payload;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import p092c.C3202f;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��R\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n��\u001a\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f\u001a\n\u0010\r\u001a\u00020\u0004*\u00020\u0006\u001a\u001a\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u0012H\u0002\u001a\u000e\u0010\u0013\u001a\u0004\u0018\u00010\f*\u00020\u0010H\u0002\u001a\u000e\u0010\u0014\u001a\u0004\u0018\u00010\f*\u00020\u0010H\u0002\u001a\u001a\u0010\u0015\u001a\u00020\u000f*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\n\u001a\f\u0010\u001a\u001a\u00020\u0004*\u00020\u0010H\u0002\u001a\u0014\u0010\u001b\u001a\u00020\u0004*\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\"\u000e\u0010��\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001e"}, m4298d2 = {"QUOTED_STRING_DELIMITERS", "Lokio/ByteString;", "TOKEN_DELIMITERS", "hasBody", "", Payload.RESPONSE, "Lokhttp3/Response;", "parseChallenges", "", "Lokhttp3/Challenge;", "Lokhttp3/Headers;", "headerName", "", "promisesBody", "readChallengeHeader", "", "Lokio/Buffer;", "result", "", "readQuotedString", "readToken", "receiveHeaders", "Lokhttp3/CookieJar;", "url", "Lokhttp3/HttpUrl;", "headers", "skipCommasAndWhitespace", "startsWith", "prefix", "", "okhttp"}, m4297k = 2, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http/HttpHeaders.class */
public final class HttpHeaders {
    private static final C3208i QUOTED_STRING_DELIMITERS = C3208i.C3209a.m39170a("\"\\");
    private static final C3208i TOKEN_DELIMITERS = C3208i.C3209a.m39170a("\t ,=");

    static {
        C3208i.C3209a c3209a = C3208i.f11583d;
        C3208i.C3209a c3209a2 = C3208i.f11583d;
    }

    public static final boolean hasBody(Response response) {
        C18524p.m3840d(response, "response");
        return promisesBody(response);
    }

    public static final List<Challenge> parseChallenges(Headers parseChallenges, String headerName) {
        C18524p.m3840d(parseChallenges, "$this$parseChallenges");
        C18524p.m3840d(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = parseChallenges.size();
        for (int i = 0; i < size; i++) {
            if (C18425p.m3961a(headerName, parseChallenges.name(i))) {
                try {
                    readChallengeHeader(new C3202f().mo39143b(parseChallenges.value(i)), arrayList);
                } catch (EOFException e) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(Response promisesBody) {
        C18524p.m3840d(promisesBody, "$this$promisesBody");
        if (C18524p.m3850a((Object) promisesBody.request().method(), (Object) "HEAD")) {
            return false;
        }
        int code = promisesBody.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && Util.headersContentLength(promisesBody) == -1 && !C18425p.m3961a("chunked", Response.header$default(promisesBody, "Transfer-Encoding", null, 2, null))) ? false : true;
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
    private static final void readChallengeHeader(p092c.C3202f r6, java.util.List<okhttp3.Challenge> r7) throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.readChallengeHeader(c.f, java.util.List):void");
    }

    private static final String readQuotedString(C3202f c3202f) throws EOFException {
        if (c3202f.mo39113i() == 34) {
            C3202f c3202f2 = new C3202f();
            while (true) {
                long m39206c = c3202f.m39206c(QUOTED_STRING_DELIMITERS);
                if (m39206c == -1) {
                    return null;
                }
                if (c3202f.m39207c(m39206c) == 34) {
                    c3202f2.write(c3202f, m39206c);
                    c3202f.mo39113i();
                    return c3202f2.m39193r();
                } else if (c3202f.f11572b == m39206c + 1) {
                    return null;
                } else {
                    c3202f2.write(c3202f, m39206c);
                    c3202f.mo39113i();
                    c3202f2.write(c3202f, 1L);
                }
            }
        } else {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    private static final String readToken(C3202f c3202f) {
        ?? m39206c = c3202f.m39206c(TOKEN_DELIMITERS);
        char c = m39206c;
        if (m39206c == -1) {
            c = c3202f.f11572b;
        }
        if (c != 0) {
            return c3202f.m39203e((long) c);
        }
        return null;
    }

    public static final void receiveHeaders(CookieJar receiveHeaders, HttpUrl url, Headers headers) {
        C18524p.m3840d(receiveHeaders, "$this$receiveHeaders");
        C18524p.m3840d(url, "url");
        C18524p.m3840d(headers, "headers");
        if (receiveHeaders == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> parseAll = Cookie.Companion.parseAll(url, headers);
        if (parseAll.isEmpty()) {
            return;
        }
        receiveHeaders.saveFromResponse(url, parseAll);
    }

    private static final boolean skipCommasAndWhitespace(C3202f c3202f) {
        boolean z = false;
        while (!c3202f.mo39119e()) {
            byte m39207c = c3202f.m39207c(0L);
            if (m39207c == 9 || m39207c == 32) {
                c3202f.mo39113i();
            } else if (m39207c != 44) {
                break;
            } else {
                c3202f.mo39113i();
                z = true;
            }
        }
        return z;
    }

    private static final boolean startsWith(C3202f c3202f, byte b) {
        return !c3202f.mo39119e() && c3202f.m39207c(0L) == b;
    }
}
