package p193e.p194a.p1146q2.p1152w0.p1153h;

import com.truecaller.analytics.call.CallContactSource;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.q2.w0.h.c */
/* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/c.class */
public final class C19564c {

    /* renamed from: a */
    public final CallContactSource f54395a;

    /* renamed from: b */
    public final boolean f54396b;

    public C19564c(CallContactSource callContactSource, boolean z) {
        l.e(callContactSource, "source");
        this.f54395a = callContactSource;
        this.f54396b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19564c)) {
                return false;
            }
            C19564c c19564c = (C19564c) obj;
            return l.a(this.f54395a, c19564c.f54395a) && this.f54396b == c19564c.f54396b;
        }
        return true;
    }

    public int hashCode() {
        CallContactSource callContactSource = this.f54395a;
        int hashCode = callContactSource != null ? callContactSource.hashCode() : 0;
        boolean z = this.f54396b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallAnalyticsContactInfo(source=");
        m8728C.append(this.f54395a);
        m8728C.append(", isSpam=");
        return C22128a.m8590o(m8728C, this.f54396b, ")");
    }
}
