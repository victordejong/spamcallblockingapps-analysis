package p131c.p431l.p432a.p468n;

import android.text.TextUtils;
import java.lang.Character;
import p596g.p597a.p598a.C10088c;
/* renamed from: c.l.a.n.l */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/l.class */
public class C6853l {
    /* renamed from: a */
    public static char m19561a(String str) {
        if (TextUtils.isEmpty(str)) {
            return (char) 0;
        }
        char charAt = str.charAt(0);
        if (charAt != 0 && m19562a(charAt)) {
            try {
                String[] b = C10088c.m1558b(charAt);
                if (b != null && b.length > 0) {
                    return Character.toUpperCase(b[0].charAt(0));
                }
                return Character.toUpperCase(charAt);
            } catch (Exception e) {
                return Character.toUpperCase(charAt);
            }
        } else if (charAt != 0) {
            return Character.toUpperCase(charAt);
        } else {
            return (char) 0;
        }
    }

    /* renamed from: a */
    public static boolean m19562a(char c) {
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
        return of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || of == Character.UnicodeBlock.GENERAL_PUNCTUATION || of == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || of == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS;
    }
}
