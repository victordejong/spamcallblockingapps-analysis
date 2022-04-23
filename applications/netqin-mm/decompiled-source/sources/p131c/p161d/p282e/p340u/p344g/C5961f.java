package p131c.p161d.p282e.p340u.p344g;

import java.util.Map;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p350m.C6044w;
/* renamed from: c.d.e.u.g.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/f.class */
public final class C5961f extends AbstractC5965j {

    /* renamed from: b */
    public static final C5969a f19365b = C5969a.m22496a();

    /* renamed from: a */
    public C6044w f19366a;

    public C5961f(C6044w wVar) {
        this.f19366a = wVar;
    }

    @Override // p131c.p161d.p282e.p340u.p344g.AbstractC5965j
    /* renamed from: a */
    public boolean mo22504a() {
        if (!m22516b(this.f19366a, 0)) {
            C5969a aVar = f19365b;
            aVar.m22491d("Invalid Trace:" + this.f19366a.m22219E(), new Object[0]);
            return false;
        } else if (!m22517b(this.f19366a) || m22521a(this.f19366a)) {
            return true;
        } else {
            C5969a aVar2 = f19365b;
            aVar2.m22491d("Invalid Counters for Trace:" + this.f19366a.m22219E(), new Object[0]);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m22521a(C6044w wVar) {
        return m22520a(wVar, 0);
    }

    /* renamed from: a */
    public final boolean m22520a(C6044w wVar, int i) {
        if (wVar == null) {
            return false;
        }
        if (i > 1) {
            f19365b.m22491d("Exceed MAX_SUBTRACE_DEEP:1", new Object[0]);
            return false;
        }
        for (Map.Entry<String, Long> entry : wVar.m22189y().entrySet()) {
            if (!m22514c(entry.getKey())) {
                C5969a aVar = f19365b;
                aVar.m22491d("invalid CounterId:" + entry.getKey(), new Object[0]);
                return false;
            } else if (!m22519a(entry.getValue())) {
                C5969a aVar2 = f19365b;
                aVar2.m22491d("invalid CounterValue:" + entry.getValue(), new Object[0]);
                return false;
            }
        }
        for (C6044w wVar2 : wVar.m22217G()) {
            if (!m22520a(wVar2, i + 1)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m22519a(Long l) {
        return l != null;
    }

    /* renamed from: a */
    public final boolean m22518a(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String a = AbstractC5965j.m22501a(entry);
            if (a != null) {
                f19365b.m22491d(a, new Object[0]);
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public final boolean m22517b(C6044w wVar) {
        if (wVar.m22190x() > 0) {
            return true;
        }
        for (C6044w wVar2 : wVar.m22217G()) {
            if (wVar2.m22190x() > 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m22516b(C6044w wVar, int i) {
        if (wVar == null) {
            f19365b.m22491d("TraceMetric is null", new Object[0]);
            return false;
        } else if (i > 1) {
            f19365b.m22491d("Exceed MAX_SUBTRACE_DEEP:1", new Object[0]);
            return false;
        } else if (!m22513d(wVar.m22219E())) {
            C5969a aVar = f19365b;
            aVar.m22491d("invalid TraceId:" + wVar.m22219E(), new Object[0]);
            return false;
        } else if (!m22515c(wVar)) {
            C5969a aVar2 = f19365b;
            aVar2.m22491d("invalid TraceDuration:" + wVar.m22222A(), new Object[0]);
            return false;
        } else if (!wVar.m22216H()) {
            f19365b.m22491d("clientStartTimeUs is null.", new Object[0]);
            return false;
        } else {
            for (C6044w wVar2 : wVar.m22217G()) {
                if (!m22516b(wVar2, i + 1)) {
                    return false;
                }
            }
            return m22518a(wVar.m22188z());
        }
    }

    /* renamed from: c */
    public final boolean m22515c(C6044w wVar) {
        return wVar != null && wVar.m22222A() > 0;
    }

    /* renamed from: c */
    public final boolean m22514c(String str) {
        if (str == null) {
            return false;
        }
        String trim = str.trim();
        if (trim.isEmpty()) {
            f19365b.m22491d("counterId is empty", new Object[0]);
            return false;
        } else if (trim.length() <= 100) {
            return true;
        } else {
            f19365b.m22491d("counterId exceeded max length 100", new Object[0]);
            return false;
        }
    }

    /* renamed from: d */
    public final boolean m22513d(String str) {
        if (str == null) {
            return false;
        }
        String trim = str.trim();
        boolean z = false;
        if (!trim.isEmpty()) {
            z = false;
            if (trim.length() <= 100) {
                z = true;
            }
        }
        return z;
    }
}
