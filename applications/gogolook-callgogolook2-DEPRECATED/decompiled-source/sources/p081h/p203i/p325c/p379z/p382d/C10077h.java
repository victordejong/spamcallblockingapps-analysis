package p081h.p203i.p325c.p379z.p382d;

import androidx.annotation.NonNull;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
/* renamed from: h.i.c.z.d.h */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/d/h.class */
public final class C10077h {
    /* renamed from: a */
    public static Long m13453a(@NonNull HttpMessage httpMessage) {
        try {
            Header firstHeader = httpMessage.getFirstHeader("content-length");
            if (firstHeader != null) {
                return Long.valueOf(Long.parseLong(firstHeader.getValue()));
            }
            return null;
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m13452a(@NonNull HttpResponse httpResponse) {
        String value;
        Header firstHeader = httpResponse.getFirstHeader("content-type");
        if (firstHeader == null || (value = firstHeader.getValue()) == null) {
            return null;
        }
        return value;
    }

    /* renamed from: a */
    public static void m13454a(C7759a1 a1Var) {
        if (a1Var.m19564s() == null) {
            a1Var.m19563t();
        }
        a1Var.m19561v();
    }
}
