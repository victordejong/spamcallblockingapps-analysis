package p459j.p460a.p474c0.p499h;

import androidx.annotation.Nullable;
/* renamed from: j.a.c0.h.p0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/p0.class */
public class C12196p0 {
    /* renamed from: a */
    public static boolean m6834a(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            return true;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
