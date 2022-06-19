package com.freshchat.consumer.sdk.service.p067d;

import com.freshchat.consumer.sdk.beans.Tag;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.freshchat.consumer.sdk.service.d.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/f.class */
public class C1873f {
    /* renamed from: a */
    public static List<Tag> m39375a(String str, JSONArray jSONArray, Tag.TaggedType taggedType) {
        ArrayList arrayList;
        Exception e;
        ArrayList arrayList2;
        ArrayList arrayList3;
        if (jSONArray == null) {
            return null;
        }
        try {
            arrayList3 = new ArrayList();
        } catch (Exception e2) {
            e = e2;
            arrayList2 = null;
        }
        try {
            int length = jSONArray.length();
            int i = 0;
            while (true) {
                arrayList = arrayList3;
                if (i >= length) {
                    break;
                }
                try {
                    arrayList3.add(new Tag(jSONArray.get(i).toString(), str, taggedType));
                    continue;
                } catch (JSONException e3) {
                    C1613ai.m40282e("FRESHCHAT", "Exception occured", e3);
                    continue;
                }
                i++;
            }
        } catch (Exception e4) {
            e = e4;
            arrayList2 = arrayList3;
            C1723q.m39823a(e);
            arrayList = arrayList2;
            return arrayList;
        }
        return arrayList;
    }
}
