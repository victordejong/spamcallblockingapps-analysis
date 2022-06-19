package p193e.p194a.p195a.p284w0;

import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.z.c.l;
/* renamed from: e.a.a.w0.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/w0/e.class */
public final class C7294e implements AbstractC7293d {

    /* renamed from: a */
    public final Map<String, Long> f23279a = new LinkedHashMap();

    /* renamed from: b */
    public final Map<String, Long> f23280b = new LinkedHashMap();

    /* renamed from: c */
    public final Map<String, Long> f23281c = new LinkedHashMap();

    /* renamed from: d */
    public final Map<String, Long> f23282d = new LinkedHashMap();

    /* renamed from: e */
    public final C8601l0 f23283e;

    @Inject
    public C7294e(C8601l0 c8601l0) {
        l.e(c8601l0, "timestampUtil");
        this.f23283e = c8601l0;
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: a */
    public void mo29834a(String str) {
        l.e(str, "id");
        this.f23280b.put(str, Long.valueOf(this.f23283e.m28258c()));
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: b */
    public long mo29833b(long j, String str) {
        l.e(str, "id");
        Long l = this.f23279a.get(str);
        if (l != null) {
            return j - l.longValue();
        }
        return 0L;
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: c */
    public void mo29832c(String str) {
        l.e(str, "id");
        this.f23279a.remove(str);
        this.f23282d.remove(str);
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: d */
    public void mo29831d(String str) {
        l.e(str, "id");
        this.f23281c.put(str, Long.valueOf(this.f23283e.m28258c()));
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: e */
    public long mo29830e(String str) {
        l.e(str, "id");
        Long l = this.f23280b.get(str);
        if (l != null) {
            long longValue = l.longValue();
            Long l2 = this.f23281c.get(str);
            if (l2 == null) {
                return 0L;
            }
            return l2.longValue() - longValue;
        }
        return 0L;
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: f */
    public long mo29829f(long j, String str) {
        l.e(str, "id");
        Long l = this.f23282d.get(str);
        if (l != null) {
            return j - l.longValue();
        }
        return 0L;
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: g */
    public void mo29828g(String str) {
        l.e(str, "id");
        this.f23282d.put(str, Long.valueOf(this.f23283e.m28258c()));
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: h */
    public long mo29827h(String str) {
        l.e(str, "id");
        Long l = this.f23279a.get(str);
        if (l != null) {
            long longValue = l.longValue();
            Long l2 = this.f23280b.get(str);
            if (l2 == null) {
                return 0L;
            }
            return l2.longValue() - longValue;
        }
        return 0L;
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7293d
    /* renamed from: i */
    public void mo29826i(String str) {
        l.e(str, "id");
        this.f23279a.put(str, Long.valueOf(this.f23283e.m28258c()));
    }
}
