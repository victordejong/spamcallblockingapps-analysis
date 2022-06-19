package p193e.p1577m.p1578a.p1596c.p1636q1;

import android.text.TextUtils;
import android.util.Log;
import com.tenor.android.core.constant.StringConstant;
import java.net.UnknownHostException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.q1.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/n.class */
public final class C24789n {
    /* renamed from: a */
    public static String m4576a(String str, Throwable th) {
        String str2;
        boolean z;
        if (th == null) {
            str2 = null;
        } else {
            Throwable th2 = th;
            while (true) {
                Throwable th3 = th2;
                if (th3 == null) {
                    z = false;
                    break;
                } else if (th3 instanceof UnknownHostException) {
                    z = true;
                    break;
                } else {
                    th2 = th3.getCause();
                }
            }
            str2 = z ? "UnknownHostException (no network)" : Log.getStackTraceString(th).trim().replace("\t", "    ");
        }
        String str3 = str;
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder m8696K = C22128a.m8696K(str, "\n  ");
            m8696K.append(str2.replace(StringConstant.NEW_LINE, "\n  "));
            m8696K.append('\n');
            str3 = m8696K.toString();
        }
        return str3;
    }
}
