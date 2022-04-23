package p530d.p531a;

import com.google.common.p493io.BaseEncoding;
import java.nio.charset.Charset;
import p530d.p531a.C9260k0;
/* renamed from: d.a.a0 */
/* loaded from: classes2-dex2jar.jar:d/a/a0.class */
public final class C9214a0 {

    /* renamed from: a */
    public static final Charset f35765a = Charset.forName("US-ASCII");

    /* renamed from: b */
    public static final BaseEncoding f35766b = C9260k0.f35814d;

    /* renamed from: d.a.a0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/a0$a.class */
    public interface AbstractC9215a<T> extends C9260k0.AbstractC9269i<T> {
    }

    /* renamed from: a */
    public static int m3147a(C9260k0 k0Var) {
        return k0Var.m3063b();
    }

    /* renamed from: a */
    public static <T> C9260k0.AbstractC9266f<T> m3146a(String str, AbstractC9215a<T> aVar) {
        boolean z = false;
        if (str != null) {
            z = false;
            if (!str.isEmpty()) {
                z = false;
                if (str.charAt(0) == ':') {
                    z = true;
                }
            }
        }
        return C9260k0.AbstractC9266f.m3044a(str, z, aVar);
    }

    /* renamed from: a */
    public static C9260k0 m3145a(byte[]... bArr) {
        return new C9260k0(bArr);
    }

    /* renamed from: b */
    public static byte[][] m3144b(C9260k0 k0Var) {
        return k0Var.m3053f();
    }
}
