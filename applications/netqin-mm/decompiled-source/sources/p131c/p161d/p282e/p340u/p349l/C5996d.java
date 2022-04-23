package p131c.p161d.p282e.p340u.p349l;

import android.content.Context;
import android.content.res.Resources;
import java.net.URI;
import p131c.p161d.p282e.p340u.p345h.C5969a;
/* renamed from: c.d.e.u.l.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/l/d.class */
public class C5996d {

    /* renamed from: a */
    public static String[] f19476a;

    /* renamed from: a */
    public static boolean m22362a(URI uri, Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("firebase_performance_whitelisted_domains", "array", context.getPackageName());
        if (identifier == 0) {
            return true;
        }
        C5969a.m22496a().m22492c("Detected domain whitelist, only whitelisted domains will be measured.", new Object[0]);
        if (f19476a == null) {
            f19476a = resources.getStringArray(identifier);
        }
        String host = uri.getHost();
        if (host == null) {
            return true;
        }
        for (String str : f19476a) {
            if (host.contains(str)) {
                return true;
            }
        }
        return false;
    }
}
