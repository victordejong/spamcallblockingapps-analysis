package p459j.p460a.p582w0;

import java.util.List;
import p081h.p203i.p325c.p337n.C9510c;
/* renamed from: j.a.w0.d4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/d4.class */
public class C13973d4 {
    /* renamed from: a */
    public static void m2952a(Throwable th) {
        C9510c.m15023a().m15017a(th);
    }

    /* renamed from: a */
    public static void m2951a(Throwable th, Class cls) {
        if (!cls.isInstance(th)) {
            C9510c.m15023a().m15017a(th);
        }
    }

    /* renamed from: a */
    public static void m2950a(Throwable th, List<String> list) {
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                C9510c.m15023a().m15020a(str);
            }
        }
        C9510c.m15023a().m15017a(th);
    }
}
