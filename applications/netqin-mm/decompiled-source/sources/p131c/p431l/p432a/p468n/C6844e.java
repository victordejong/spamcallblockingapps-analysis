package p131c.p431l.p432a.p468n;

import android.app.LocalActivityManager;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: c.l.a.n.e */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/e.class */
public class C6844e {
    /* renamed from: a */
    public static void m19589a(List<View> list, LocalActivityManager localActivityManager, ArrayList<String> arrayList) {
        if (!C6842c.m19608b(list)) {
            for (int i = 0; i < list.size(); i++) {
                View view = list.get(i);
                if (view != null) {
                    view.setTag(null);
                }
            }
        }
        if (localActivityManager != null && !C6842c.m19608b(arrayList)) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (!TextUtils.isEmpty(next)) {
                    localActivityManager.destroyActivity(next, true);
                }
            }
            localActivityManager.removeAllActivities();
        }
        C6842c.m19609a(list);
    }
}
