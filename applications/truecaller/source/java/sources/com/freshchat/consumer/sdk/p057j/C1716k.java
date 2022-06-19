package com.freshchat.consumer.sdk.p057j;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.freshchat.consumer.sdk.j.k */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/k.class */
public class C1716k {
    /* renamed from: a */
    public static boolean m39902a(Collection<?> collection) {
        return !isEmpty(collection);
    }

    /* renamed from: a */
    public static byte[] m39901a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: b */
    public static int m39900b(Collection<?> collection) {
        if (collection != null) {
            return collection.size();
        }
        return 0;
    }

    /* renamed from: b */
    public static <T> Set<T> m39899b(JSONArray jSONArray) {
        if (jSONArray == null) {
            return new HashSet();
        }
        int length = jSONArray.length();
        HashSet hashSet = new HashSet(length);
        for (int i = 0; i < length; i++) {
            try {
                hashSet.add(jSONArray.get(i));
            } catch (JSONException e) {
                C1723q.m39823a(e);
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public static Collection<String> m39898c(Collection<String> collection) {
        ArrayList arrayList = new ArrayList();
        if (m39902a(collection)) {
            for (String str : collection) {
                arrayList.add(str.toString().trim().toLowerCase());
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static boolean m39897c(Map<?, ?> map) {
        return map == null || map.size() == 0;
    }

    /* renamed from: c */
    public static boolean m39896c(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    /* renamed from: d */
    public static Collection<String> m39895d(Collection<String> collection) {
        ArrayList arrayList = new ArrayList();
        if (m39902a(collection)) {
            for (String str : collection) {
                arrayList.add(str.toString().trim());
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public static boolean m39894d(Map<?, ?> map) {
        return !m39897c(map);
    }

    /* renamed from: f */
    public static int m39893f(Map<?, ?> map) {
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public static boolean isEmpty(Collection<?> collection) {
        return collection == null || collection.size() == 0;
    }
}
