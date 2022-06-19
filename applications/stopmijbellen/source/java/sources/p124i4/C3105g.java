package p124i4;

import p134j4.C3194d0;
import p134j4.C3196d2;
import p134j4.C3259w;
import p189o4.AbstractC3882s;
import p189o4.C3881r;
/* renamed from: i4.g */
/* loaded from: classes-dex2jar.jar:i4/g.class */
public final class C3105g implements AbstractC3882s {

    /* renamed from: a */
    public final /* synthetic */ int f10520a;

    /* renamed from: b */
    public final AbstractC3882s f10521b;

    public /* synthetic */ C3105g(AbstractC3882s abstractC3882s, int i) {
        this.f10520a = i;
        this.f10521b = abstractC3882s;
    }

    @Override // p189o4.AbstractC3882s
    public final /* bridge */ /* synthetic */ Object zza() {
        switch (this.f10520a) {
            case 0:
                return new C3104f(((C3110l) this.f10521b).m2605a());
            case 1:
                return new C3118t(((C3110l) this.f10521b).m2605a());
            case 2:
                return new C3194d0(C3881r.m1736a(this.f10521b));
            default:
                return new C3196d2((C3259w) this.f10521b.zza());
        }
    }
}
