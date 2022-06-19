package p193e.p194a.p1392y2;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.y2.f */
/* loaded from: classes5-dex2jar.jar:e/a/y2/f.class */
public final class C21760f implements AbstractC19549v {

    /* renamed from: a */
    public final String f60593a;

    /* renamed from: b */
    public final String f60594b;

    /* renamed from: c */
    public final String f60595c;

    /* renamed from: d */
    public final boolean f60596d;

    public C21760f(String str, String str2, String str3, boolean z) {
        C22128a.m8703I0(str, "actionName", str2, "result", str3, "period");
        this.f60593a = str;
        this.f60594b = str2;
        this.f60595c = str3;
        this.f60596d = z;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("actionName", this.f60593a);
        bundle.putString("result", this.f60594b);
        bundle.putString("period", this.f60595c);
        bundle.putBoolean("internetRequired", this.f60596d);
        return new AbstractC19580x.C19582b("JointActionsWorker", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21760f)) {
                return false;
            }
            C21760f c21760f = (C21760f) obj;
            return l.a(this.f60593a, c21760f.f60593a) && l.a(this.f60594b, c21760f.f60594b) && l.a(this.f60595c, c21760f.f60595c) && this.f60596d == c21760f.f60596d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f60593a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f60594b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f60595c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        boolean z = this.f60596d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("JointActionsWorkerEvent(actionName=");
        m8728C.append(this.f60593a);
        m8728C.append(", result=");
        m8728C.append(this.f60594b);
        m8728C.append(", period=");
        m8728C.append(this.f60595c);
        m8728C.append(", internetRequired=");
        return C22128a.m8590o(m8728C, this.f60596d, ")");
    }
}
