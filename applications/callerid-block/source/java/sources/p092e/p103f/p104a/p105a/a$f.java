package p092e.p103f.p104a.p105a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: e.f.a.a.a$f */
/* loaded from: classes2-dex2jar.jar:e/f/a/a/a$f.class */
public class a$f extends a$b {
    /* JADX INFO: Access modifiers changed from: private */
    public a$f() {
        super();
    }

    @Override // p092e.p103f.p104a.p105a.a$b, p092e.p103f.p104a.p105a.a$c
    /* renamed from: a */
    public boolean mo239a(Context context, a$d a_d) {
        Object m242c = m242c(context, "mWhiteListMap");
        if (m242c instanceof Map) {
            Map map = (Map) m242c;
            List list = (List) map.get(0);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                map.put(0, arrayList);
            }
            arrayList.add(context.getPackageName());
            return true;
        }
        return false;
    }
}
