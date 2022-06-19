package org.mistergroup.shouldianswer.model.communityDatabase;

import java.util.ArrayList;
import java.util.HashMap;
import kotlin.p075c.AbstractC1641c;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.EnumC2439m;
import org.mistergroup.shouldianswer.utils.C3079ad;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader.class */
public final class CommunityReviewsLoader {

    /* renamed from: a */
    public static final C2407a f6961a = new C2407a(null);

    /* renamed from: e */
    private static final HashMap<String, C3079ad.C3080a> f6962e = new HashMap<>();

    /* renamed from: b */
    private final String f6963b;

    /* renamed from: c */
    private final String f6964c;

    /* renamed from: d */
    private final boolean f6965d;

    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$EDownloadFailed.class */
    public final class EDownloadFailed extends Exception {
        public EDownloadFailed() {
            CommunityReviewsLoader.this = r4;
        }
    }

    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$EServiceTemporarilyUnavailable.class */
    public final class EServiceTemporarilyUnavailable extends Exception {
    }

    /* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.CommunityReviewsLoader$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$a.class */
    public static final class C2407a {
        private C2407a() {
        }

        public /* synthetic */ C2407a(C1691e c1691e) {
            this();
        }
    }

    public CommunityReviewsLoader(String str, String str2, boolean z) {
        C1694h.m3117b(str, "number");
        C1694h.m3117b(str2, "country");
        this.f6963b = str;
        this.f6964c = str2;
        this.f6965d = z;
    }

    /* renamed from: a */
    public final Object m1157a(AbstractC1641c<? super ArrayList<C2413d>> abstractC1641c) {
        C3079ad.C3080a c3080a = null;
        if (f6962e.containsKey(this.f6963b)) {
            C3104j.m157a(C3104j.f9124a, "CommunityReviewsLoader use of cache disabled!", (String) null, 2, (Object) null);
        }
        if (this.f6965d) {
            HashMap<String, String> hashMap = new HashMap<>();
            HashMap<String, String> hashMap2 = hashMap;
            hashMap2.put("number", this.f6963b);
            hashMap2.put("country", this.f6964c);
            C3079ad.C3080a m212b = C3079ad.f8982a.m212b(C3079ad.f8982a.m210d(), hashMap);
            c3080a = m212b;
            if (m212b.m207a()) {
                f6962e.put(this.f6963b, m212b);
                c3080a = m212b;
            }
        }
        if (c3080a == null || !c3080a.m207a()) {
            C3104j.m157a(C3104j.f9124a, "CommunityReviewsLoader failed!", (String) null, 2, (Object) null);
            throw new EDownloadFailed();
        }
        C3104j.m157a(C3104j.f9124a, "CommunityReviewsLoader parseData", (String) null, 2, (Object) null);
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject m201c = c3080a.m201c();
            if (m201c == null) {
                C1694h.m3124a();
            }
            JSONArray jSONArray = m201c.getJSONArray("items");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                C2413d c2413d = new C2413d();
                c2413d.m1117a(jSONObject.getInt("id"));
                c2413d.m1115a(EnumC2395ag.f6924e.m1314a(jSONObject.getInt("rating")));
                c2413d.m1114a(EnumC2439m.f7139w.m1016a(jSONObject.getInt("category_id")));
                String string = jSONObject.getString("nick");
                C1694h.m3122a((Object) string, "jItem.getString(\"nick\")");
                c2413d.m1116a(string);
                String string2 = jSONObject.getString("title");
                C1694h.m3122a((Object) string2, "jItem.getString(\"title\")");
                c2413d.m1112b(string2);
                String string3 = jSONObject.getString("comment");
                C1694h.m3122a((Object) string3, "jItem.getString(\"comment\")");
                c2413d.m1110c(string3);
                arrayList.add(c2413d);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        C3104j.m157a(C3104j.f9124a, "CommunityReviewsLoader loaded " + String.valueOf(arrayList.size()) + " items", (String) null, 2, (Object) null);
        return arrayList;
    }
}
