package okhttp3;

import java.io.IOException;
import java.net.CookieHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import okhttp3.Cookie;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import org.apache.commons.lang3.C20753d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lokhttp3/JavaNetCookieJar;", "Lokhttp3/CookieJar;", "cookieHandler", "Ljava/net/CookieHandler;", "(Ljava/net/CookieHandler;)V", "decodeHeaderAsJavaNetCookies", "", "Lokhttp3/Cookie;", "url", "Lokhttp3/HttpUrl;", "header", "", "loadForRequest", "saveFromResponse", "", "cookies", "okhttp-urlconnection"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/JavaNetCookieJar.class */
public final class JavaNetCookieJar implements CookieJar {
    private final CookieHandler cookieHandler;

    public JavaNetCookieJar(CookieHandler cookieHandler) {
        C18524p.m3840d(cookieHandler, "cookieHandler");
        this.cookieHandler = cookieHandler;
    }

    private final List<Cookie> decodeHeaderAsJavaNetCookies(HttpUrl httpUrl, String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length) {
                int delimiterOffset = Util.delimiterOffset(str, ";,", i2, length);
                int delimiterOffset2 = Util.delimiterOffset(str, '=', i2, delimiterOffset);
                String trimSubstring = Util.trimSubstring(str, i2, delimiterOffset2);
                if (!C18425p.m3957a(trimSubstring, C20753d.f67243b, false)) {
                    String trimSubstring2 = delimiterOffset2 < delimiterOffset ? Util.trimSubstring(str, delimiterOffset2 + 1, delimiterOffset) : "";
                    String str2 = trimSubstring2;
                    if (C18425p.m3957a(trimSubstring2, "\"", false)) {
                        str2 = trimSubstring2;
                        if (C18425p.m3954b(trimSubstring2, "\"", false)) {
                            int length2 = trimSubstring2.length();
                            Objects.requireNonNull(trimSubstring2, "null cannot be cast to non-null type java.lang.String");
                            str2 = trimSubstring2.substring(1, length2 - 1);
                            C18524p.m3843b(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        }
                    }
                    arrayList.add(new Cookie.Builder().name(trimSubstring).value(str2).domain(httpUrl.host()).build());
                }
                i = delimiterOffset + 1;
            } else {
                return arrayList;
            }
        }
    }

    @Override // okhttp3.CookieJar
    public final List<Cookie> loadForRequest(HttpUrl url) {
        C18524p.m3840d(url, "url");
        try {
            Map<String, List<String>> cookieHeaders = this.cookieHandler.get(url.uri(), C18247ai.m4257a());
            ArrayList arrayList = null;
            C18524p.m3843b(cookieHeaders, "cookieHeaders");
            for (Map.Entry<String, List<String>> entry : cookieHeaders.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (C18425p.m3961a("Cookie", key) || C18425p.m3961a("Cookie2", key)) {
                    C18524p.m3843b(value, "value");
                    if (!value.isEmpty()) {
                        Iterator<String> it2 = value.iterator();
                        while (true) {
                            ArrayList arrayList2 = arrayList;
                            arrayList = arrayList2;
                            if (it2.hasNext()) {
                                String header = it2.next();
                                arrayList = arrayList2;
                                if (arrayList2 == null) {
                                    arrayList = new ArrayList();
                                }
                                C18524p.m3843b(header, "header");
                                arrayList.addAll(decodeHeaderAsJavaNetCookies(url, header));
                            }
                        }
                    }
                }
            }
            if (arrayList == null) {
                return C18297z.f63400a;
            }
            List<Cookie> unmodifiableList = Collections.unmodifiableList(arrayList);
            C18524p.m3843b(unmodifiableList, "Collections.unmodifiableList(cookies)");
            return unmodifiableList;
        } catch (IOException e) {
            Platform platform = Platform.Companion.get();
            StringBuilder sb = new StringBuilder("Loading cookies failed for ");
            HttpUrl resolve = url.resolve("/...");
            C18524p.m3851a(resolve);
            sb.append(resolve);
            platform.log(sb.toString(), 5, e);
            return C18297z.f63400a;
        }
    }

    @Override // okhttp3.CookieJar
    public final void saveFromResponse(HttpUrl url, List<Cookie> cookies) {
        C18524p.m3840d(url, "url");
        C18524p.m3840d(cookies, "cookies");
        ArrayList arrayList = new ArrayList();
        for (Cookie cookie : cookies) {
            arrayList.add(Internal.cookieToString(cookie, true));
        }
        try {
            this.cookieHandler.put(url.uri(), C18247ai.m4258a(C20126t.m1103a("Set-Cookie", arrayList)));
        } catch (IOException e) {
            Platform platform = Platform.Companion.get();
            StringBuilder sb = new StringBuilder("Saving cookies failed for ");
            HttpUrl resolve = url.resolve("/...");
            C18524p.m3851a(resolve);
            sb.append(resolve);
            platform.log(sb.toString(), 5, e);
        }
    }
}
