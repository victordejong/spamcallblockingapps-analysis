package com.bytedance.sdk.adnet.p143d;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.adnet.d.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/h.class */
public class C4236h {

    /* renamed from: a */
    private final Map<String, List<String>> f15497a;

    /* renamed from: b */
    private String f15498b;

    public C4236h() {
        this.f15497a = new LinkedHashMap();
        this.f15498b = null;
    }

    public C4236h(String str) {
        this.f15497a = new LinkedHashMap();
        this.f15498b = str;
    }

    /* renamed from: b */
    private String m36070b(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public String m36075a() {
        StringBuilder sb;
        String str;
        if (this.f15497a.isEmpty()) {
            return this.f15498b;
        }
        String m36071a = m36071a(this.f15497a, "UTF-8");
        String str2 = this.f15498b;
        if (str2 == null || str2.length() == 0) {
            return m36071a;
        }
        if (this.f15498b.indexOf(63) >= 0) {
            sb = new StringBuilder();
            sb.append(this.f15498b);
            str = "&";
        } else {
            sb = new StringBuilder();
            sb.append(this.f15498b);
            str = "?";
        }
        sb.append(str);
        sb.append(m36071a);
        return sb.toString();
    }

    /* renamed from: a */
    public String m36071a(Map<String, List<String>> map, String str) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String m36070b = m36070b(entry.getKey(), str);
            List<String> value = entry.getValue();
            if (value != null && value.size() > 0) {
                Iterator<String> it2 = value.iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    String m36070b2 = next != null ? m36070b(next, str) : "";
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append(m36070b);
                    if (!m36070b2.isEmpty()) {
                        sb.append("=");
                        sb.append(m36070b2);
                    }
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public void m36074a(String str, double d) {
        List<String> list = this.f15497a.get(str);
        LinkedList linkedList = list;
        if (list == null) {
            linkedList = new LinkedList();
        }
        linkedList.add(String.valueOf(d));
        this.f15497a.put(str, linkedList);
    }

    /* renamed from: a */
    public void m36073a(String str, int i) {
        List<String> list = this.f15497a.get(str);
        LinkedList linkedList = list;
        if (list == null) {
            linkedList = new LinkedList();
        }
        linkedList.add(String.valueOf(i));
        this.f15497a.put(str, linkedList);
    }

    /* renamed from: a */
    public void m36072a(String str, String str2) {
        List<String> list = this.f15497a.get(str);
        LinkedList linkedList = list;
        if (list == null) {
            linkedList = new LinkedList();
        }
        linkedList.add(String.valueOf(str2));
        this.f15497a.put(str, linkedList);
    }

    public String toString() {
        return m36075a();
    }
}
