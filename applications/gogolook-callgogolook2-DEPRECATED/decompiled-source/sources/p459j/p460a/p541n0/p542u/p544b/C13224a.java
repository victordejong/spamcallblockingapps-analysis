package p459j.p460a.p541n0.p542u.p544b;

import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.n0.u.b.a */
/* loaded from: classes3-dex2jar.jar:j/a/n0/u/b/a.class */
public final class C13224a implements Comparable<C13224a> {

    /* renamed from: a */
    public final int f29791a;

    /* renamed from: b */
    public final LogsGroupRealmObject f29792b;

    public C13224a(int i, LogsGroupRealmObject logsGroupRealmObject) {
        C15149k.m377b(logsGroupRealmObject, "logsGroupRealmObject");
        this.f29791a = i;
        this.f29792b = logsGroupRealmObject;
    }

    /* renamed from: a */
    public int compareTo(C13224a aVar) {
        C15149k.m377b(aVar, "other");
        return C15149k.m386a(this.f29791a, aVar.f29791a);
    }

    /* renamed from: a */
    public final LogsGroupRealmObject m4388a() {
        return this.f29792b;
    }
}
