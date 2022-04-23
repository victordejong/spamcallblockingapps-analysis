package okhttp3;

import java.io.IOException;
import java.net.CookieHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.t;
import okhttp3.Cookie;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import org.apache.commons.lang3.d;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lokhttp3/JavaNetCookieJar;", "Lokhttp3/CookieJar;", "cookieHandler", "Ljava/net/CookieHandler;", "(Ljava/net/CookieHandler;)V", "decodeHeaderAsJavaNetCookies", "", "Lokhttp3/Cookie;", "url", "Lokhttp3/HttpUrl;", "header", "", "loadForRequest", "saveFromResponse", "", "cookies", "okhttp-urlconnection"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/JavaNetCookieJar.class */
public final class JavaNetCookieJar implements CookieJar {
    private final CookieHandler cookieHandler;

    public JavaNetCookieJar(CookieHandler cookieHandler) {
        p.d(cookieHandler, "cookieHandler");
        this.cookieHandler = cookieHandler;
    }

    private final List<Cookie> decodeHeaderAsJavaNetCookies(HttpUrl httpUrl, String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int delimiterOffset = Util.delimiterOffset(str, ";,", i, length);
            int delimiterOffset2 = Util.delimiterOffset(str, '=', i, delimiterOffset);
            String trimSubstring = Util.trimSubstring(str, i, delimiterOffset2);
            if (!kotlin.h.p.a(trimSubstring, d.f39169b, false)) {
                String trimSubstring2 = delimiterOffset2 < delimiterOffset ? Util.trimSubstring(str, delimiterOffset2 + 1, delimiterOffset) : "";
                String str2 = trimSubstring2;
                if (kotlin.h.p.a(trimSubstring2, "\"", false)) {
                    str2 = trimSubstring2;
                    if (kotlin.h.p.b(trimSubstring2, "\"", false)) {
                        int length2 = trimSubstring2.length();
                        Objects.requireNonNull(trimSubstring2, "null cannot be cast to non-null type java.lang.String");
                        str2 = trimSubstring2.substring(1, length2 - 1);
                        p.b(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    }
                }
                arrayList.add(new Cookie.Builder().name(trimSubstring).value(str2).domain(httpUrl.host()).build());
            }
            i = delimiterOffset + 1;
        }
        return arrayList;
    }

    @Override // okhttp3.CookieJar
    public final List<Cookie> loadForRequest(HttpUrl url) {
        p.d(url, "url");
        try {
            Map<String, List<String>> cookieHeaders = this.cookieHandler.get(url.uri(), ai.a());
            ArrayList arrayList = null;
            p.b(cookieHeaders, "cookieHeaders");
            for (Map.Entry<String, List<String>> entry : cookieHeaders.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (kotlin.h.p.a("Cookie", key) || kotlin.h.p.a("Cookie2", key)) {
                    p.b(value, "value");
                    if (!value.isEmpty()) {
                        Iterator<String> it2 = value.iterator();
                        while (true) {
                            arrayList = arrayList;
                            if (it2.hasNext()) {
                                String header = it2.next();
                                arrayList = arrayList;
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                p.b(header, "header");
                                arrayList.addAll(decodeHeaderAsJavaNetCookies(url, header));
                            }
                        }
                    }
                }
            }
            if (arrayList == null) {
                return z.f36608a;
            }
            List<Cookie> unmodifiableList = Collections.unmodifiableList(arrayList);
            p.b(unmodifiableList, "Collections.unmodifiableList(cookies)");
            return unmodifiableList;
        } catch (IOException e) {
            Platform platform = Platform.Companion.get();
            StringBuilder sb = new StringBuilder("Loading cookies failed for ");
            HttpUrl resolve = url.resolve("/...");
            p.a(resolve);
            sb.append(resolve);
            platform.log(sb.toString(), 5, e);
            return z.f36608a;
        }
    }

    @Override // okhttp3.CookieJar
    public final void saveFromResponse(HttpUrl url, List<Cookie> cookies) {
        p.d(url, "url");
        p.d(cookies, "cookies");
        ArrayList arrayList = new ArrayList();
        for (Cookie cookie : cookies) {
            arrayList.add(Internal.cookieToString(cookie, true));
        }
        try {
            this.cookieHandler.put(url.uri(), ai.a(t.a("Set-Cookie", arrayList)));
        } catch (IOException e) {
            Platform platform = Platform.Companion.get();
            StringBuilder sb = new StringBuilder("Saving cookies failed for ");
            HttpUrl resolve = url.resolve("/...");
            p.a(resolve);
            sb.append(resolve);
            platform.log(sb.toString(), 5, e);
        }
    }
}
