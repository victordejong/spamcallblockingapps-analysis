package p131c.p135b.p136a.p148e.p153y;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: c.b.a.e.y.t */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/t.class */
public class C2429t {

    /* renamed from: e */
    public static final C2429t f9354e = new C2429t();

    /* renamed from: a */
    public final String f9355a;

    /* renamed from: b */
    public final Map<String, String> f9356b;

    /* renamed from: c */
    public String f9357c;

    /* renamed from: d */
    public final List<C2429t> f9358d;

    public C2429t() {
        this.f9355a = "";
        this.f9356b = Collections.emptyMap();
        this.f9357c = "";
        this.f9358d = Collections.emptyList();
    }

    public C2429t(String str, Map<String, String> map, C2429t tVar) {
        this.f9355a = str;
        this.f9356b = Collections.unmodifiableMap(map);
        this.f9358d = new ArrayList();
    }

    /* renamed from: a */
    public String m29766a() {
        return this.f9355a;
    }

    /* renamed from: a */
    public List<C2429t> m29765a(String str) {
        if (str != null) {
            ArrayList arrayList = new ArrayList(this.f9358d.size());
            for (C2429t tVar : this.f9358d) {
                if (str.equalsIgnoreCase(tVar.m29766a())) {
                    arrayList.add(tVar);
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    /* renamed from: b */
    public C2429t m29763b(String str) {
        if (str != null) {
            for (C2429t tVar : this.f9358d) {
                if (str.equalsIgnoreCase(tVar.m29766a())) {
                    return tVar;
                }
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    /* renamed from: b */
    public Map<String, String> m29764b() {
        return this.f9356b;
    }

    /* renamed from: c */
    public C2429t m29761c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No name specified.");
        } else if (this.f9358d.size() <= 0) {
            return null;
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this);
            while (!arrayList.isEmpty()) {
                C2429t tVar = (C2429t) arrayList.get(0);
                arrayList.remove(0);
                if (str.equalsIgnoreCase(tVar.m29766a())) {
                    return tVar;
                }
                arrayList.addAll(tVar.m29760d());
            }
            return null;
        }
    }

    /* renamed from: c */
    public String m29762c() {
        return this.f9357c;
    }

    /* renamed from: d */
    public List<C2429t> m29760d() {
        return Collections.unmodifiableList(this.f9358d);
    }

    public String toString() {
        return "XmlNode{elementName='" + this.f9355a + "', text='" + this.f9357c + "', attributes=" + this.f9356b + '}';
    }
}
