package p000;

import p193e.p194a.p292a4.C7452i0;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: n2 */
/* loaded from: classes5-dex2jar.jar:n2.class */
public final class C25367n2 extends m implements a<Boolean> {

    /* renamed from: b */
    public final /* synthetic */ int f70780b;

    /* renamed from: c */
    public final /* synthetic */ Object f70781c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25367n2(int i, Object obj) {
        super(0);
        this.f70780b = i;
        this.f70781c = obj;
    }

    public final Object invoke() {
        int i = this.f70780b;
        if (i != 0) {
            if (i == 1) {
                return Boolean.valueOf(((AbstractC8426f) ((C7452i0) this.f70781c).f23658F.get()).mo28597a());
            }
            if (i == 2) {
                return Boolean.valueOf(((AbstractC8541a) ((C7452i0) this.f70781c).f23660H.get()).getBoolean("ppolicy_accepted"));
            }
            if (i == 3) {
                return Boolean.valueOf(((AbstractC8541a) ((C7452i0) this.f70781c).f23660H.get()).getBoolean("region_c_reported"));
            }
            if (i == 4) {
                return Boolean.valueOf(((AbstractC8541a) ((C7452i0) this.f70781c).f23660H.get()).getBoolean("getProfileRequestDone"));
            }
            if (i != 5) {
                throw null;
            }
            return Boolean.valueOf(l.a((AbstractC12603e) i.C(((AbstractC12597c) ((C7452i0) this.f70781c).f23664L.get()).mo22841c()), AbstractC12603e.C12605b.f36738c));
        }
        return Boolean.valueOf(((AbstractC8541a) ((C7452i0) this.f70781c).f23660H.get()).getBoolean("shouldInitClevertapSDK", false));
    }
}
