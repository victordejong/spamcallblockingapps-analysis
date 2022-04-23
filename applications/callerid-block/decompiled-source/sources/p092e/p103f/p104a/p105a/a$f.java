package p092e.p103f.p104a.p105a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: private */
/* renamed from: e.f.a.a.a$f */
/* loaded from: classes2-dex2jar.jar:e/f/a/a/a$f.class */
public class a$f extends a$b {
    private a$f() {
        super();
    }

    @Override // p092e.p103f.p104a.p105a.a$b, p092e.p103f.p104a.p105a.a$c
    /* renamed from: a */
    public boolean mo239a(Context context, a$d a_d) {
        Object c = m242c(context, "mWhiteListMap");
        if (!(c instanceof Map)) {
            return false;
        }
        Map map = (Map) c;
        List list = (List) map.get(0);
        List list2 = list;
        if (list == null) {
            list2 = new ArrayList();
            map.put(0, list2);
        }
        list2.add(context.getPackageName());
        return true;
    }
}
