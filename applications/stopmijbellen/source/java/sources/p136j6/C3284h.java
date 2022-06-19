package p136j6;

import java.util.Objects;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import p104g6.C2905a;
import p115h6.C3013b;
import p191o6.C3912h;
/* renamed from: j6.h */
/* loaded from: classes-dex2jar.jar:j6/h.class */
public final class C3284h {

    /* renamed from: a */
    public static final Pattern f11124a = Pattern.compile("(^|.*\\s)datatransport/\\S+ android/($|\\s.*)");

    /* renamed from: a */
    public static Long m2429a(HttpMessage httpMessage) {
        try {
            Header firstHeader = httpMessage.getFirstHeader("content-length");
            if (firstHeader == null) {
                return null;
            }
            return Long.valueOf(Long.parseLong(firstHeader.getValue()));
        } catch (NumberFormatException e) {
            C2905a m2869b = C2905a.m2869b();
            if (!m2869b.f9793b) {
                return null;
            }
            Objects.requireNonNull(m2869b.f9792a);
            return null;
        }
    }

    /* renamed from: b */
    public static String m2428b(HttpResponse httpResponse) {
        String value;
        Header firstHeader = httpResponse.getFirstHeader("content-type");
        if (firstHeader == null || (value = firstHeader.getValue()) == null) {
            return null;
        }
        return value;
    }

    /* renamed from: c */
    public static void m2427c(C3013b c3013b) {
        if (!((C3912h) c3013b.f10113d.f7078b).m1653Z()) {
            C3912h.C3914b c3914b = c3013b.f10113d;
            C3912h.EnumC3918e enumC3918e = C3912h.EnumC3918e.GENERIC_CLIENT_ERROR;
            c3914b.m4282n();
            C3912h.m1678A((C3912h) c3914b.f7078b, enumC3918e);
        }
        c3013b.m2747b();
    }
}
