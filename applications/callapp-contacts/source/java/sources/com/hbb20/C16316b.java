package com.hbb20;

import android.content.Context;
import android.util.SparseArray;
import com.hbb20.CountryCodePicker;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.hbb20.b */
/* loaded from: classes4-dex2jar.jar:com/hbb20/b.class */
public final class C16316b {

    /* renamed from: c */
    private static SparseArray<C16316b> f57711c;

    /* renamed from: a */
    String f57712a;

    /* renamed from: b */
    int f57713b;

    /* renamed from: d */
    private HashMap<String, String> f57714d;

    private C16316b(String str, int i, HashMap<String, String> hashMap) {
        this.f57712a = str;
        this.f57713b = i;
        this.f57714d = hashMap;
    }

    /* renamed from: a */
    public static C16316b m7396a(int i) {
        if (f57711c == null) {
            f57711c = new SparseArray<>();
            HashMap hashMap = new HashMap();
            hashMap.put("ag", "268");
            hashMap.put("ai", "264");
            hashMap.put("as", "684");
            hashMap.put("bb", "246");
            hashMap.put("bm", "441");
            hashMap.put("bs", "242");
            hashMap.put("ca", "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/601/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/");
            hashMap.put("dm", "767");
            hashMap.put("do", "809/829/849");
            hashMap.put("gd", "473");
            hashMap.put("gu", "671");
            hashMap.put("jm", "876");
            hashMap.put("kn", "869");
            hashMap.put("ky", "345");
            hashMap.put("lc", "758");
            hashMap.put("mp", "670");
            hashMap.put("ms", "664");
            hashMap.put("pr", "787");
            hashMap.put("sx", "721");
            hashMap.put("tc", "649");
            hashMap.put("tt", "868");
            hashMap.put("vc", "784");
            hashMap.put("vg", "284");
            hashMap.put("vi", "340");
            f57711c.put(1, new C16316b("us", 3, hashMap));
            HashMap hashMap2 = new HashMap();
            hashMap2.put("gg", "1481");
            hashMap2.put("im", "1624");
            hashMap2.put("je", "1534");
            f57711c.put(44, new C16316b("gb", 4, hashMap2));
            HashMap hashMap3 = new HashMap();
            hashMap3.put("ax", "18");
            f57711c.put(358, new C16316b("fi", 2, hashMap3));
        }
        return f57711c.get(i);
    }

    /* renamed from: a */
    public final C16315a m7395a(Context context, CountryCodePicker.EnumC16310e enumC16310e, String str) {
        String str2 = this.f57712a;
        for (Map.Entry<String, String> entry : this.f57714d.entrySet()) {
            if (entry.getValue().contains(str)) {
                str2 = entry.getKey();
            }
        }
        return C16315a.m7415a(context, enumC16310e, str2);
    }
}
