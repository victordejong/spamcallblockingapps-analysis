package kotlin.p340io;

import java.io.File;
import kotlin.p338c.p339a.C9550b;
/* renamed from: kotlin.io.a */
/* loaded from: classes2-dex2jar.jar:kotlin/io/a.class */
public final class C9551a {
    /* renamed from: b */
    public static final String m368b(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(C9550b.m371f(" -> ", file2));
        }
        if (str != null) {
            sb.append(C9550b.m371f(": ", str));
        }
        String sb2 = sb.toString();
        C9550b.m376a(sb2, "sb.toString()");
        return sb2;
    }
}
