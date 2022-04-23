package p131c.p396i.p418b;

import java.util.HashMap;
import java.util.Map;
/* renamed from: c.i.b.b */
/* loaded from: classes2-dex2jar.jar:c/i/b/b.class */
public class C6620b {

    /* renamed from: a */
    public Map<String, String> f20442a;

    public C6620b() {
        this(new HashMap());
    }

    public C6620b(Map<String, String> map) {
        this.f20442a = map;
    }

    /* renamed from: a */
    public String m20312a(String str) {
        Map<String, String> map = this.f20442a;
        return map != null ? map.get(str) : null;
    }

    /* renamed from: a */
    public void m20311a(Map<String, String> map) {
        this.f20442a = map;
    }
}
