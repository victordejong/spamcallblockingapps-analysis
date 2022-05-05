package okhttp3.internal.http;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000b\u001a\u0011\u0010\f\u001a\u00020\u0002*\u00020��¢\u0006\u0004\b\f\u0010\u0004\u001a!\u0010\u0011\u001a\u00020\u0010*\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u0006*\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u0006*\u00020\rH\u0002¢\u0006\u0004\b\u0015\u0010\u0014\u001a!\u0010\u001a\u001a\u00020\u0010*\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0013\u0010\u001c\u001a\u00020\u0002*\u00020\rH\u0002¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001b\u0010 \u001a\u00020\u0002*\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!\"\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$\"\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010$¨\u0006&"}, d2 = {"Lokhttp3/Response;", "response", "", "hasBody", "(Lokhttp3/Response;)Z", "Lokhttp3/Headers;", "", "headerName", "", "Lokhttp3/Challenge;", "parseChallenges", "(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;", "promisesBody", "Lokio/Buffer;", "", "result", "", "readChallengeHeader", "(Lokio/Buffer;Ljava/util/List;)V", "readQuotedString", "(Lokio/Buffer;)Ljava/lang/String;", "readToken", "Lokhttp3/CookieJar;", "Lokhttp3/HttpUrl;", "url", "headers", "receiveHeaders", "(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V", "skipCommasAndWhitespace", "(Lokio/Buffer;)Z", "", "prefix", "startsWith", "(Lokio/Buffer;B)Z", "Lokio/ByteString;", "QUOTED_STRING_DELIMITERS", "Lokio/ByteString;", "TOKEN_DELIMITERS", "okhttp"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/HttpHeaders.class */
public final class HttpHeaders {
    private static final ByteString QUOTED_STRING_DELIMITERS = ByteString.f24137j.m163d("\"\\");
    private static final ByteString TOKEN_DELIMITERS = ByteString.f24137j.m163d("\t ,=");

    @Deprecated
    public static final boolean hasBody(@NotNull Response response) {
        Intrinsics.m1830e(response, "response");
        return promisesBody(response);
    }

    @NotNull
    public static final List<Challenge> parseChallenges(@NotNull Headers parseChallenges, @NotNull String headerName) {
        boolean p;
        Intrinsics.m1830e(parseChallenges, "$this$parseChallenges");
        Intrinsics.m1830e(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = parseChallenges.size();
        for (int i = 0; i < size; i++) {
            p = StringsKt__StringsJVMKt.m1487p(headerName, parseChallenges.name(i), true);
            if (p) {
                Buffer buffer = new Buffer();
                buffer.m210M0(parseChallenges.value(i));
                try {
                    readChallengeHeader(buffer, arrayList);
                } catch (EOFException e) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(@NotNull Response promisesBody) {
        boolean p;
        Intrinsics.m1830e(promisesBody, "$this$promisesBody");
        if (Intrinsics.m1834a(promisesBody.request().method(), "HEAD")) {
            return false;
        }
        int code = promisesBody.code();
        if (((code < 100 || code >= 200) && code != 204 && code != 304) || Util.headersContentLength(promisesBody) != -1) {
            return true;
        }
        p = StringsKt__StringsJVMKt.m1487p("chunked", Response.header$default(promisesBody, "Transfer-Encoding", null, 2, null), true);
        return p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00de, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00de, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void readChallengeHeader(okio.Buffer r6, java.util.List<okhttp3.Challenge> r7) throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.readChallengeHeader(okio.Buffer, java.util.List):void");
    }

    private static final String readQuotedString(Buffer buffer) throws EOFException {
        byte b = (byte) 34;
        if (buffer.readByte() == b) {
            Buffer buffer2 = new Buffer();
            while (true) {
                long E = buffer.mo85E(QUOTED_STRING_DELIMITERS);
                if (E == -1) {
                    return null;
                }
                if (buffer.m192p(E) == b) {
                    buffer2.write(buffer, E);
                    buffer.readByte();
                    return buffer2.m199e0();
                } else if (buffer.m188v0() == E + 1) {
                    return null;
                } else {
                    buffer2.write(buffer, E);
                    buffer.readByte();
                    buffer2.write(buffer, 1L);
                }
            }
        } else {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.String readToken(okio.Buffer r5) {
        /*
            r0 = r5
            okio.ByteString r1 = okhttp3.internal.http.HttpHeaders.TOKEN_DELIMITERS
            long r0 = r0.mo85E(r1)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0017
            r0 = r5
            long r0 = r0.m188v0()
            r8 = r0
        L_0x0017:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0026
            r0 = r5
            r1 = r8
            java.lang.String r0 = r0.m197i0(r1)
            r5 = r0
            goto L_0x0028
        L_0x0026:
            r0 = 0
            r5 = r0
        L_0x0028:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.readToken(okio.Buffer):java.lang.String");
    }

    public static final void receiveHeaders(@NotNull CookieJar receiveHeaders, @NotNull HttpUrl url, @NotNull Headers headers) {
        Intrinsics.m1830e(receiveHeaders, "$this$receiveHeaders");
        Intrinsics.m1830e(url, "url");
        Intrinsics.m1830e(headers, "headers");
        if (receiveHeaders != CookieJar.NO_COOKIES) {
            List<Cookie> parseAll = Cookie.Companion.parseAll(url, headers);
            if (!parseAll.isEmpty()) {
                receiveHeaders.saveFromResponse(url, parseAll);
            }
        }
    }

    private static final boolean skipCommasAndWhitespace(Buffer buffer) {
        boolean z = false;
        while (!buffer.mo60z()) {
            byte p = buffer.m192p(0L);
            if (p == 9 || p == 32) {
                buffer.readByte();
            } else if (p != 44) {
                break;
            } else {
                buffer.readByte();
                z = true;
            }
        }
        return z;
    }

    private static final boolean startsWith(Buffer buffer, byte b) {
        return !buffer.mo60z() && buffer.m192p(0L) == b;
    }
}
