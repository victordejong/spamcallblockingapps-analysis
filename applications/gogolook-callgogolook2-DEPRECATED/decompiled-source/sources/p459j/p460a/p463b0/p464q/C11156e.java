package p459j.p460a.p463b0.p464q;

import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.q.e */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/e.class */
public final class C11156e implements AbstractC12391a {

    /* renamed from: a */
    public final int f25066a;

    /* renamed from: b */
    public final LogsGroupRealmObject f25067b;

    public C11156e(int i, LogsGroupRealmObject logsGroupRealmObject) {
        C15149k.m377b(logsGroupRealmObject, "callLog");
        this.f25066a = i;
        this.f25067b = logsGroupRealmObject;
    }

    public /* synthetic */ C11156e(int i, LogsGroupRealmObject logsGroupRealmObject, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 1 : i, logsGroupRealmObject);
    }

    /* renamed from: a */
    public final LogsGroupRealmObject m10168a() {
        return this.f25067b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11156e)) {
            return false;
        }
        C11156e eVar = (C11156e) obj;
        return (getViewType() == eVar.getViewType()) && C15149k.m384a(this.f25067b, eVar.f25067b);
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25066a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        LogsGroupRealmObject logsGroupRealmObject = this.f25067b;
        return (hashCode * 31) + (logsGroupRealmObject != null ? logsGroupRealmObject.hashCode() : 0);
    }

    public String toString() {
        return "CallLogViewData(viewType=" + getViewType() + ", callLog=" + this.f25067b + ")";
    }
}
