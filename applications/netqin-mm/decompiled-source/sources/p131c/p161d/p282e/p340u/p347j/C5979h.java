package p131c.p161d.p282e.p340u.p347j;

import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import p131c.p161d.p282e.p340u.p343f.C5954a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
/* renamed from: c.d.e.u.j.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/j/h.class */
public final class C5979h {

    /* renamed from: a */
    public static final Pattern f19412a = Pattern.compile("(^|.*\\s)datatransport/\\S+ android/($|\\s.*)");

    /* renamed from: a */
    public static Long m22428a(HttpMessage httpMessage) {
        try {
            Header firstHeader = httpMessage.getFirstHeader("content-length");
            if (firstHeader != null) {
                return Long.valueOf(Long.parseLong(firstHeader.getValue()));
            }
            return null;
        } catch (NumberFormatException e) {
            C5969a.m22496a().m22495a("The content-length value is not a valid number", new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public static String m22427a(HttpResponse httpResponse) {
        String value;
        Header firstHeader = httpResponse.getFirstHeader("content-type");
        if (firstHeader == null || (value = firstHeader.getValue()) == null) {
            return null;
        }
        return value;
    }

    /* renamed from: a */
    public static void m22430a(C5954a aVar) {
        if (!aVar.m22557d()) {
            aVar.m22549g();
        }
        aVar.m22568a();
    }

    /* renamed from: a */
    public static boolean m22429a(String str) {
        return str == null || !f19412a.matcher(str).matches();
    }
}
