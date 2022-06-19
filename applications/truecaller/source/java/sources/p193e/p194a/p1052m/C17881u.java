package p193e.p194a.p1052m;

import p193e.p194a.p1187r2.AbstractC19851d0;
/* renamed from: e.a.m.u */
/* loaded from: classes7-dex2jar.jar:e/a/m/u.class */
public final class C17881u<R> implements AbstractC19851d0<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ C17882v f50856a;

    public C17881u(C17882v c17882v) {
        this.f50856a = c17882v;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(Boolean bool) {
        Boolean bool2 = bool;
        AbstractC17879s abstractC17879s = (AbstractC17879s) this.f50856a.f57683a;
        if (abstractC17879s != null) {
            abstractC17879s.m15732b0();
        }
        if (bool2 != null) {
            if (bool2.booleanValue()) {
                AbstractC17878r abstractC17878r = (AbstractC17878r) this.f50856a.f57687b;
                if (abstractC17878r == null) {
                    return;
                }
                abstractC17878r.close();
                return;
            }
            AbstractC17879s abstractC17879s2 = (AbstractC17879s) this.f50856a.f57683a;
            if (abstractC17879s2 == null) {
                return;
            }
            abstractC17879s2.mo15737F5();
        }
    }
}
