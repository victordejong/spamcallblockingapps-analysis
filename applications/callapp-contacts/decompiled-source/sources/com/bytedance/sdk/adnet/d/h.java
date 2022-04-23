package com.bytedance.sdk.adnet.d;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, List<String>> f8356a;

    /* renamed from: b  reason: collision with root package name */
    private String f8357b;

    public h() {
        this.f8356a = new LinkedHashMap();
        this.f8357b = null;
    }

    public h(String str) {
        this.f8356a = new LinkedHashMap();
        this.f8357b = str;
    }

    private String b(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public String a() {
        StringBuilder sb;
        String str;
        if (this.f8356a.isEmpty()) {
            return this.f8357b;
        }
        String a2 = a(this.f8356a, "UTF-8");
        String str2 = this.f8357b;
        if (str2 == null || str2.length() == 0) {
            return a2;
        }
        if (this.f8357b.indexOf(63) >= 0) {
            sb = new StringBuilder();
            sb.append(this.f8357b);
            str = "&";
        } else {
            sb = new StringBuilder();
            sb.append(this.f8357b);
            str = "?";
        }
        sb.append(str);
        sb.append(a2);
        return sb.toString();
    }

    public String a(Map<String, List<String>> map, String str) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String b2 = b(entry.getKey(), str);
            List<String> value = entry.getValue();
            if (value != null && value.size() > 0) {
                Iterator<String> it2 = value.iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    String b3 = next != null ? b(next, str) : "";
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append(b2);
                    if (!b3.isEmpty()) {
                        sb.append("=");
                        sb.append(b3);
                    }
                }
            }
        }
        return sb.toString();
    }

    public void a(String str, double d2) {
        List<String> list = this.f8356a.get(str);
        List<String> list2 = list;
        if (list == null) {
            list2 = new LinkedList<>();
        }
        list2.add(String.valueOf(d2));
        this.f8356a.put(str, list2);
    }

    public void a(String str, int i) {
        List<String> list = this.f8356a.get(str);
        List<String> list2 = list;
        if (list == null) {
            list2 = new LinkedList<>();
        }
        list2.add(String.valueOf(i));
        this.f8356a.put(str, list2);
    }

    public void a(String str, String str2) {
        List<String> list = this.f8356a.get(str);
        List<String> list2 = list;
        if (list == null) {
            list2 = new LinkedList<>();
        }
        list2.add(String.valueOf(str2));
        this.f8356a.put(str, list2);
    }

    public String toString() {
        return a();
    }
}
