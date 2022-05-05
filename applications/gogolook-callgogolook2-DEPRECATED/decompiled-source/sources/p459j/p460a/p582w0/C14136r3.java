package p459j.p460a.p582w0;

import android.text.SpannableString;
import java.util.Arrays;
import p626l.p631e0.C14938c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.r3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/r3.class */
public final class C14136r3 {
    static {
        new C14136r3();
    }

    /* renamed from: a */
    public static final SpannableString m2388a(String str, String str2, Object... objArr) {
        C15149k.m377b(str, "text");
        C15149k.m377b(str2, "tailText");
        C15149k.m377b(objArr, "spans");
        SpannableString spannableString = new SpannableString(str + ' ' + str2);
        for (Object obj : objArr) {
            spannableString.setSpan(obj, str.length() + 1, str.length() + 1 + str2.length(), 17);
        }
        return spannableString;
    }

    /* renamed from: a */
    public static final String m2389a(String str, int i) {
        C15149k.m377b(str, "text");
        byte[] bytes = str.getBytes(C14938c.f32979a);
        C15149k.m383a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
        if (bytes.length > i) {
            int length = str.length();
            byte[] bytes2 = str.getBytes(C14938c.f32979a);
            C15149k.m383a((Object) bytes2, "(this as java.lang.String).getBytes(charset)");
            byte[] copyOf = Arrays.copyOf(bytes2, i + 1);
            C15149k.m383a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
            str = str.substring(0, str.offsetByCodePoints(0, str.codePointCount(0, Math.min(length, new String(copyOf, C14938c.f32979a).length())) - 1));
            C15149k.m383a((Object) str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return str;
    }
}
