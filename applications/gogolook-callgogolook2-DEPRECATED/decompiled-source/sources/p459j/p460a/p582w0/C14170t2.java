package p459j.p460a.p582w0;

import android.text.TextUtils;
import java.text.Normalizer;
import java.util.regex.Pattern;
/* renamed from: j.a.w0.t2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/t2.class */
public class C14170t2 {

    /* renamed from: j.a.w0.t2$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/t2$a.class */
    public static class C14171a {

        /* renamed from: a */
        public static volatile Pattern f31690a = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
    }

    /* renamed from: a */
    public static String m2309a(String str) {
        return TextUtils.isEmpty(str) ? null : C14171a.f31690a.matcher(Normalizer.normalize(str, Normalizer.Form.NFD)).replaceAll("");
    }
}
