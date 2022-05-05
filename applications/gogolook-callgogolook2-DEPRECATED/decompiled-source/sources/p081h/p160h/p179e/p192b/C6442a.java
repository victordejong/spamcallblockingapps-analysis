package p081h.p160h.p179e.p192b;

import kotlinx.coroutines.CoroutineScope;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.b.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/a.class */
public final class C6442a {
    /* renamed from: a */
    public static final String m22561a(Object obj) {
        String str;
        C15149k.m377b(obj, "receiver$0");
        if (!obj.getClass().isAnonymousClass()) {
            str = obj.getClass().getSimpleName();
            if (str.length() > 23) {
                C15149k.m383a((Object) str, "name");
                if (str != null) {
                    str = str.substring(0, 23);
                    C15149k.m383a((Object) str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                } else {
                    throw new C14986p("null cannot be cast to non-null type java.lang.String");
                }
            }
            C15149k.m383a((Object) str, "if (name.length <= 23) n…lse name.substring(0, 23)");
        } else {
            str = obj.getClass().getName();
            if (str.length() > 23) {
                C15149k.m383a((Object) str, "name");
                int length = str.length();
                int length2 = str.length();
                if (str != null) {
                    str = str.substring(length - 23, length2);
                    C15149k.m383a((Object) str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                } else {
                    throw new C14986p("null cannot be cast to non-null type java.lang.String");
                }
            }
            C15149k.m383a((Object) str, "if (name.length <= 23) n…length - 23, name.length)");
        }
        return str;
    }

    /* renamed from: a */
    public static final void m22560a(CoroutineScope coroutineScope, String str) {
        C15149k.m377b(coroutineScope, "receiver$0");
        C15149k.m377b(str, "methodName");
    }
}
