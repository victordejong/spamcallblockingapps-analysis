package p124i4;

import java.util.Objects;
import p134j4.AbstractC3228l2;
import p134j4.C3220j2;
import p134j4.C3224k2;
import p189o4.AbstractC3882s;
import p189o4.C3881r;
/* renamed from: i4.i */
/* loaded from: classes-dex2jar.jar:i4/i.class */
public final class C3107i implements AbstractC3882s {

    /* renamed from: a */
    public final /* synthetic */ int f10525a;

    /* renamed from: b */
    public final AbstractC3882s f10526b;

    /* renamed from: c */
    public final AbstractC3882s f10527c;

    /* renamed from: d */
    public final AbstractC3882s f10528d;

    public /* synthetic */ C3107i(AbstractC3882s abstractC3882s, AbstractC3882s abstractC3882s2, AbstractC3882s abstractC3882s3, int i) {
        this.f10525a = i;
        this.f10526b = abstractC3882s;
        this.f10527c = abstractC3882s2;
        this.f10528d = abstractC3882s3;
    }

    @Override // p189o4.AbstractC3882s
    public final Object zza() {
        switch (this.f10525a) {
            case 0:
                return new C3106h((C3116r) this.f10526b.zza(), (C3104f) this.f10527c.zza(), ((C3110l) this.f10528d).m2605a());
            default:
                AbstractC3228l2 abstractC3228l2 = C3220j2.m2538a(((C3224k2) this.f10526b).m2534a()) == null ? (AbstractC3228l2) C3881r.m1736a(this.f10527c).zza() : (AbstractC3228l2) C3881r.m1736a(this.f10528d).zza();
                Objects.requireNonNull(abstractC3228l2, "Cannot return null from a non-@Nullable @Provides method");
                return abstractC3228l2;
        }
    }
}
