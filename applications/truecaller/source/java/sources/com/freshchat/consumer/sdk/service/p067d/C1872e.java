package com.freshchat.consumer.sdk.service.p067d;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.beans.Tag;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.p048a.C1461a;
import com.freshchat.consumer.sdk.p049c.C1513i;
import com.freshchat.consumer.sdk.p052e.C1530c;
import com.freshchat.consumer.sdk.p052e.C1531d;
import com.freshchat.consumer.sdk.p052e.C1533f;
import com.freshchat.consumer.sdk.p057j.C1567a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.freshchat.consumer.sdk.service.d.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/e.class */
public class C1872e {
    /* renamed from: a */
    private static void m39381a(C1466e c1466e, List<Article> list) {
        if (c1466e != null) {
            try {
                if (C1716k.isEmpty(list)) {
                    return;
                }
                String m40955bt = c1466e.m40955bt();
                if (C1626as.isEmpty(m40955bt)) {
                    return;
                }
                long parseLong = Long.parseLong(m40955bt);
                ArrayList arrayList = new ArrayList();
                for (Article article : list) {
                    if (Long.parseLong(article.getUpdatedAt()) > parseLong) {
                        arrayList.add(article.getId());
                    }
                }
                if (C1716k.isEmpty(arrayList)) {
                    return;
                }
                JSONObject m40903iK = c1466e.m40903iK();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (c1466e.m40903iK().has(str)) {
                        m40903iK.remove(str);
                    }
                }
                c1466e.m40997a(m40903iK);
            } catch (Exception e) {
                C1613ai.m40283e("FRESHCHAT_WARNING", e.toString());
            }
        }
    }

    /* renamed from: c */
    private static Map<String, String> m39379c(C1466e c1466e) {
        String m40955bt = c1466e.m40955bt();
        HashMap hashMap = new HashMap();
        if (C1626as.m40233a(m40955bt)) {
            hashMap.put("If-Modified-Since", m40955bt);
        }
        return hashMap;
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* renamed from: c */
    private static boolean m39380c(Context context, C1461a c1461a) {
        boolean z;
        JSONObject m41027cm;
        JSONException e;
        String valueOf;
        JSONObject jSONObject;
        if (!c1461a.isValid() || !c1461a.m41026cn() || (m41027cm = c1461a.m41027cm()) == null) {
            z = false;
        } else {
            try {
                JSONArray jSONArray = m41027cm.getJSONArray("categories");
                int length = jSONArray.length();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (m39378c(jSONObject2)) {
                        Category category = Category.getCategory(jSONObject2);
                        arrayList.add(category);
                        JSONArray optJSONArray = jSONObject2.optJSONArray("articles");
                        JSONArray jSONArray2 = jSONArray;
                        int i2 = length;
                        if (optJSONArray != null) {
                            int length2 = optJSONArray.length();
                            int i3 = 0;
                            while (true) {
                                jSONArray2 = jSONArray;
                                i2 = length;
                                if (i3 >= length2) {
                                    break;
                                }
                                JSONObject jSONObject3 = optJSONArray.getJSONObject(i3);
                                if (m39378c(jSONObject3)) {
                                    Article article = Article.getArticle(jSONObject3);
                                    arrayList2.add(article);
                                    List<Tag> m39375a = C1873f.m39375a(article.getId(), jSONObject3.optJSONArray("tags"), Tag.TaggedType.ARTICLE);
                                    if (m39375a != null) {
                                        arrayList3.addAll(m39375a);
                                    }
                                }
                                i3++;
                            }
                        }
                        List<Tag> m39375a2 = C1873f.m39375a(category.getId(), jSONObject2.optJSONArray("tags"), Tag.TaggedType.CATEGORY);
                        length = i2;
                        jSONArray = jSONArray2;
                        if (m39375a2 != null) {
                            arrayList3.addAll(m39375a2);
                            length = i2;
                            jSONArray = jSONArray2;
                        }
                    }
                }
                C1466e m39377w = m39377w(context);
                m39381a(m39377w, arrayList2);
                m39377w.m40981bO();
                C1513i c1513i = new C1513i(context);
                c1513i.m40702a(arrayList, arrayList2, arrayList3);
                try {
                    c1513i.m40696cM();
                    m39377w.m40956bs();
                    if (m41027cm.has("contentLocale") && (jSONObject = m41027cm.getJSONObject("contentLocale")) != null) {
                        m39377w.m40875z(jSONObject.toString());
                    }
                    if (m41027cm.has("lastModifiedAt")) {
                        valueOf = m41027cm.getString("lastModifiedAt");
                    } else {
                        if (C1716k.m39902a(arrayList)) {
                            char c = 0;
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                c = Math.max((long) c, ((Category) it.next()).getUpdatedAt());
                            }
                            valueOf = String.valueOf((long) c);
                        }
                        m39377w.m41016A(C1612ah.m40289bc(context));
                        z = true;
                    }
                    m39377w.m40876y(valueOf);
                    m39377w.m41016A(C1612ah.m40289bc(context));
                    z = true;
                } catch (JSONException e2) {
                    e = e2;
                    z = true;
                    C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
                    return z;
                }
            } catch (JSONException e3) {
                e = e3;
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    private static boolean m39378c(JSONObject jSONObject) {
        try {
            if (!jSONObject.getBoolean("enabled")) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("platforms");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (jSONArray.getString(i).equalsIgnoreCase(Constants.ANDROID_PLATFORM)) {
                    return true;
                }
            }
            return false;
        } catch (JSONException e) {
            C1723q.m39823a(e);
            return false;
        }
    }

    /* renamed from: w */
    private static C1466e m39377w(Context context) {
        return C1466e.m40905i(context);
    }

    /* renamed from: x */
    public static boolean m39376x(Context context) {
        boolean z;
        C1466e m40905i = C1466e.m40905i(context);
        try {
            C1594aa.m40342fF();
            C1531d m40606a = new C1530c(context).m40606a(C1567a.m40470z(context), m39379c(m40905i));
            int statusCode = m40606a.getStatusCode();
            if (m40606a.getStatusCode() == 410) {
                C1533f.m40588o(context, C1530c.m40608a(m40606a));
                z = false;
            } else if (statusCode == 200) {
                z = m39380c(context, new C1461a(m40606a.getInputStream()));
            } else {
                z = false;
                if (statusCode == 304) {
                    m40905i.m40956bs();
                    z = false;
                }
            }
        } catch (DeletedException | Exception e) {
            C1723q.m39823a(e);
            z = false;
        }
        return z;
    }
}
