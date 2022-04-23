package p459j.p460a.p582w0.p590x4;

import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.x4.t */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/t.class */
public final class C14302t {
    static {
        new C14302t();
    }

    /* renamed from: a */
    public static final int m1647a(String str) {
        C15149k.m377b(str, "permissionGroup");
        return C15149k.m384a((Object) C13878a3.f31160a, (Object) str) ? 0 : C15149k.m384a((Object) C13878a3.f31161b, (Object) str) ? 1 : C15149k.m384a((Object) C13878a3.f31162c, (Object) str) ? 2 : C15149k.m384a((Object) C13878a3.f31164e, (Object) str) ? 3 : -1;
    }

    /* renamed from: a */
    public static final void m1648a(int i, int i2) {
        if (i != -1) {
            C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
            aVar.m1808a("permission_type", Integer.valueOf(i));
            aVar.m1808a("permission_status", Integer.valueOf(i2));
            C14296p.m1830a("whoscall_permission_status", aVar.m1811a());
        }
    }
}
