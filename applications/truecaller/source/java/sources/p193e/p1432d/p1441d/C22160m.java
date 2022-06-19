package p193e.p1432d.p1441d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* renamed from: e.d.d.m */
/* loaded from: classes-dex2jar.jar:e/d/d/m.class */
public class C22160m {

    /* renamed from: a */
    public String f61579a;

    /* renamed from: b */
    public List<String> f61580b;

    /* renamed from: c */
    public Map<String, Collection<String>> f61581c = new HashMap();

    /* renamed from: d */
    public String f61582d;

    /* renamed from: e */
    public List<String> f61583e;

    /* renamed from: f */
    public byte[] f61584f;

    /* renamed from: a */
    public void m8506a(String str, String str2) {
        HashSet hashSet;
        if (!this.f61581c.containsKey(str)) {
            hashSet = str.equals("TYPE") ? new HashSet() : new ArrayList();
            this.f61581c.put(str, hashSet);
        } else {
            hashSet = this.f61581c.get(str);
        }
        hashSet.add(str2);
    }

    /* renamed from: b */
    public void m8505b(String str) {
        String str2 = this.f61579a;
        if (str2 != null) {
            String.format("Property name is re-defined (existing: %s, requested: %s", str2, str);
        }
        this.f61579a = str;
    }
}
