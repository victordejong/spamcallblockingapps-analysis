package p193e.p194a.p1041l0;

import java.util.Set;
import p193e.p194a.p1041l0.AbstractC17356k;
import s1.z.c.l;
/* renamed from: e.a.l0.h */
/* loaded from: classes6-dex2jar.jar:e/a/l0/h.class */
public final class C17353h implements AbstractC17356k.AbstractC17357a {

    /* renamed from: a */
    public final /* synthetic */ C17308a f48608a;

    public C17353h(C17308a c17308a) {
        this.f48608a = c17308a;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17356k.AbstractC17357a
    /* renamed from: a */
    public void mo16195a(Set<String> set, Set<Long> set2, boolean z) {
        l.e(set, "tcIds");
        l.e(set2, "callIds");
        String str = "Dialer contact cache - Invalidating \ntcIds" + set + " \n callIds" + set2;
        synchronized (this.f48608a) {
            if ((!set.isEmpty()) || z) {
                this.f48608a.f48542a = true;
                for (String str2 : set) {
                    this.f48608a.f48543b.remove(str2);
                }
            }
            for (Number number : set2) {
                this.f48608a.f48544c.remove(Long.valueOf(number.longValue()));
            }
        }
    }
}
