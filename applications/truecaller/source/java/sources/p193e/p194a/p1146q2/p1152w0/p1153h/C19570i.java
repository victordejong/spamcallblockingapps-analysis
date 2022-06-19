package p193e.p194a.p1146q2.p1152w0.p1153h;

import java.util.concurrent.ConcurrentHashMap;
import s1.f0.h;
import s1.z.c.l;
/* renamed from: e.a.q2.w0.h.i */
/* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/i.class */
public final class C19570i implements AbstractC19569h {

    /* renamed from: a */
    public final ConcurrentHashMap<String, String> f54397a = new ConcurrentHashMap<>();

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19569h
    /* renamed from: a */
    public void mo13155a(String str, String str2) {
        l.e(str2, "initPoint");
        ConcurrentHashMap<String, String> concurrentHashMap = this.f54397a;
        String str3 = "";
        if (str != null) {
            l.e(str, "$this$clearNonNumberCharacters");
            str3 = new h("[^\\d]+").e(str, "");
        }
        concurrentHashMap.put(str3, str2);
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19569h
    /* renamed from: b */
    public String mo13154b(String str) {
        ConcurrentHashMap<String, String> concurrentHashMap = this.f54397a;
        String str2 = "";
        if (str != null) {
            l.e(str, "$this$clearNonNumberCharacters");
            str2 = new h("[^\\d]+").e(str, "");
        }
        return concurrentHashMap.get(str2);
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19569h
    public void clear() {
        this.f54397a.clear();
    }
}
