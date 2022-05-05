package p081h.p093b.p094a.p095a;

import android.os.Bundle;
import java.util.ArrayList;
import p081h.p093b.p094a.p095a.C5542e;
import p081h.p203i.p204a.p224e.p259j.p278s.C8805a;
/* renamed from: h.b.a.a.v */
/* loaded from: classes-dex2jar.jar:h/b/a/a/v.class */
public final class C5569v {
    /* renamed from: a */
    public static C5542e m25125a(Bundle bundle, String str, String str2) {
        C5542e eVar = C5568u.f13908i;
        if (bundle == null) {
            C8805a.m16910b(str, String.format("%s got null owned items list", str2));
            return eVar;
        }
        int a = C8805a.m16916a(bundle, str);
        String b = C8805a.m16911b(bundle, str);
        C5542e.C5543a c = C5542e.m25167c();
        c.m25165a(a);
        c.m25164a(b);
        C5542e a2 = c.m25166a();
        if (a != 0) {
            C8805a.m16910b(str, String.format("%s failed. Response code: %s", str2, Integer.valueOf(a)));
            return a2;
        } else if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            C8805a.m16910b(str, String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return eVar;
        } else {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                C8805a.m16910b(str, String.format("Bundle returned from %s contains null SKUs list.", str2));
                return eVar;
            } else if (stringArrayList2 == null) {
                C8805a.m16910b(str, String.format("Bundle returned from %s contains null purchases list.", str2));
                return eVar;
            } else if (stringArrayList3 != null) {
                return C5568u.f13909j;
            } else {
                C8805a.m16910b(str, String.format("Bundle returned from %s contains null signatures list.", str2));
                return eVar;
            }
        }
    }
}
