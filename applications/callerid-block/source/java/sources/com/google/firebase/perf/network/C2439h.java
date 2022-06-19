package com.google.firebase.perf.network;

import com.google.firebase.perf.f.a;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
/* renamed from: com.google.firebase.perf.network.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/h.class */
public final class C2439h {

    /* renamed from: a */
    private static final Pattern f10682a = Pattern.compile("(^|.*\\s)datatransport/\\S+ android/($|\\s.*)");

    /* renamed from: a */
    public static Long m3592a(HttpMessage httpMessage) {
        try {
            Header firstHeader = httpMessage.getFirstHeader("content-length");
            if (firstHeader == null) {
                return null;
            }
            return Long.valueOf(Long.parseLong(firstHeader.getValue()));
        } catch (NumberFormatException e) {
            a.e().a("The content-length value is not a valid number");
            return null;
        }
    }

    /* renamed from: b */
    public static String m3591b(HttpResponse httpResponse) {
        String value;
        Header firstHeader = httpResponse.getFirstHeader("content-type");
        if (firstHeader == null || (value = firstHeader.getValue()) == null) {
            return null;
        }
        return value;
    }

    /* renamed from: c */
    public static boolean m3590c(String str) {
        return str == null || !f10682a.matcher(str).matches();
    }

    /* renamed from: d */
    public static void m3589d(com.google.firebase.perf.e.a aVar) {
        if (!aVar.f()) {
            aVar.n();
        }
        aVar.b();
    }
}
