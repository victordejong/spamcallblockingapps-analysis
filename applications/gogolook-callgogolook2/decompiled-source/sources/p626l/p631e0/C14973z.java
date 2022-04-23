package p626l.p631e0;

import p626l.p628b0.C14896i;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.e0.z */
/* loaded from: classes3-dex2jar.jar:l/e0/z.class */
public class C14973z extends C14972y {
    /* renamed from: c */
    public static final String m665c(String str, int i) {
        C15149k.m377b(str, "$this$drop");
        if (i >= 0) {
            String substring = str.substring(C14896i.m793b(i, str.length()));
            C15149k.m383a((Object) substring, "(this as java.lang.String).substring(startIndex)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
    }

    /* renamed from: d */
    public static final String m664d(String str, int i) {
        C15149k.m377b(str, "$this$take");
        if (i >= 0) {
            String substring = str.substring(0, C14896i.m793b(i, str.length()));
            C15149k.m383a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
    }

    /* renamed from: e */
    public static final String m663e(String str, int i) {
        C15149k.m377b(str, "$this$takeLast");
        if (i >= 0) {
            int length = str.length();
            String substring = str.substring(length - C14896i.m793b(i, length));
            C15149k.m383a((Object) substring, "(this as java.lang.String).substring(startIndex)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
    }
}
