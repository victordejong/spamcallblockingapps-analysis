package cn.jzvd;

import java.util.HashMap;
import java.util.LinkedHashMap;
/* renamed from: cn.jzvd.t */
/* loaded from: classes-dex2jar.jar:cn/jzvd/t.class */
public class C2129t {

    /* renamed from: a */
    public int f7387a;

    /* renamed from: b */
    public LinkedHashMap f7388b;

    /* renamed from: c */
    public String f7389c;

    /* renamed from: d */
    public HashMap<String, String> f7390d;

    /* renamed from: e */
    public boolean f7391e;

    public C2129t(Object obj) {
        this.f7388b = new LinkedHashMap();
        this.f7389c = "";
        this.f7390d = new HashMap<>();
        this.f7391e = true;
        this.f7388b.put("URL_KEY_DEFAULT", obj);
        this.f7387a = 0;
    }

    public C2129t(String str) {
        this.f7388b = new LinkedHashMap();
        this.f7389c = "";
        this.f7390d = new HashMap<>();
        this.f7391e = true;
        this.f7388b.put("URL_KEY_DEFAULT", str);
        this.f7387a = 0;
    }

    public C2129t(String str, String str2) {
        this.f7388b = new LinkedHashMap();
        this.f7389c = "";
        this.f7390d = new HashMap<>();
        this.f7391e = true;
        this.f7388b.put("URL_KEY_DEFAULT", str);
        this.f7389c = str2;
        this.f7387a = 0;
    }

    public C2129t(LinkedHashMap linkedHashMap, String str) {
        this.f7388b = new LinkedHashMap();
        this.f7389c = "";
        this.f7390d = new HashMap<>();
        this.f7391e = true;
        this.f7388b.clear();
        this.f7388b.putAll(linkedHashMap);
        this.f7389c = str;
        this.f7387a = 0;
    }

    /* renamed from: a */
    public C2129t m27955a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(this.f7388b);
        return new C2129t(linkedHashMap, this.f7389c);
    }

    /* renamed from: b */
    public Object m27954b() {
        return m27952d(this.f7387a);
    }

    /* renamed from: c */
    public Object m27953c() {
        return m27951e(this.f7387a);
    }

    /* renamed from: d */
    public String m27952d(int i) {
        int i2 = 0;
        for (Object obj : this.f7388b.keySet()) {
            if (i2 == i) {
                return obj.toString();
            }
            i2++;
        }
        return null;
    }

    /* renamed from: e */
    public Object m27951e(int i) {
        int i2 = 0;
        for (Object obj : this.f7388b.keySet()) {
            if (i2 == i) {
                return this.f7388b.get(obj);
            }
            i2++;
        }
        return null;
    }
}
