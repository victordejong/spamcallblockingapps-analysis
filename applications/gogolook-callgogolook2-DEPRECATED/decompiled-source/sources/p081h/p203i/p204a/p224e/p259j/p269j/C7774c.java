package p081h.p203i.p204a.p224e.p259j.p269j;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import java.net.URI;
/* renamed from: h.i.a.e.j.j.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/c.class */
public final class C7774c {

    /* renamed from: a */
    public static String[] f18204a;

    /* renamed from: a */
    public static boolean m19509a(@NonNull URI uri, @NonNull Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("firebase_performance_whitelisted_domains", "array", context.getPackageName());
        if (identifier <= 0) {
            return true;
        }
        if (f18204a == null) {
            f18204a = resources.getStringArray(identifier);
        }
        for (String str : f18204a) {
            if (uri.getHost().contains(str)) {
                return true;
            }
        }
        return false;
    }
}
