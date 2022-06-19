package com.appnext.suggestedappswider.p023b;

import com.appnext.suggestedappswider.models.SuggestedAppsWiderModel;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.d0.c;
import s1.u.i;
import s1.u.z;
import s1.z.c.l;
@Metadata(d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\f\n\u0002\b\u0006\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u0007H\u0002J\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\u0006\u0010\u000f\u001a\u00020\u0007J\u0014\u0010\u0010\u001a\u00020\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R6\u0010\u0005\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006j\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`\nX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsBulksManager;", "", "()V", "RANDOM_KEY_STRING_LENGTH", "", "adsBulkContainers", "Ljava/util/HashMap;", "", "", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;", "Lkotlin/collections/HashMap;", "charPool", "", "generateNewKey", "getModelsContainerByKey", AnalyticsConstants.KEY, "setNewModelsContainer", "suggestedAppsWiderModelsContainer", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.appnext.suggestedappswider.b.a */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/b/a.class */
public final class C0682a {

    /* renamed from: hl */
    public static final C0682a f2126hl = new C0682a();

    /* renamed from: hm */
    private static final List<Character> f2127hm = i.l0(i.j0(new c('a', 'z'), new c('A', 'Z')), new c('0', '9'));

    /* renamed from: hn */
    private static final HashMap<String, List<SuggestedAppsWiderModel>> f2128hn = new HashMap<>();

    private C0682a() {
    }

    /* renamed from: M */
    public static List<SuggestedAppsWiderModel> m42123M(String str) {
        l.e(str, AnalyticsConstants.KEY);
        return f2128hn.get(str);
    }

    /* renamed from: i */
    public final String m42122i(List<SuggestedAppsWiderModel> list) {
        l.e(list, "suggestedAppsWiderModelsContainer");
        String str = "";
        while (true) {
            String str2 = str;
            if (!l.a(str2, "")) {
                HashMap<String, List<SuggestedAppsWiderModel>> hashMap = f2128hn;
                if (!hashMap.containsKey(str2)) {
                    hashMap.put(str2, list);
                    return str2;
                }
            }
            s1.d0.i iVar = new s1.d0.i(1, 10);
            ArrayList<Number> arrayList = new ArrayList(C25225a.m4004J(iVar, 10));
            z it = iVar.iterator();
            while (it.hasNext()) {
                it.a();
                arrayList.add(Integer.valueOf(s1.c0.c.b.d(0, f2127hm.size())));
            }
            List<Character> list2 = f2127hm;
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
            for (Number number : arrayList) {
                arrayList2.add(list2.get(number.intValue()));
            }
            str = i.O(arrayList2, "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
        }
    }
}
