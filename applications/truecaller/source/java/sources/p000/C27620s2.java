package p000;

import p193e.p194a.p1263t3.p1264c.AbstractC20513e;
import p193e.p194a.p1263t3.p1264c.AbstractC20519g;
import p193e.p194a.p1263t3.p1264c.C20524k;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: s2 */
/* loaded from: classes5-dex2jar.jar:s2.class */
public final class C27620s2 extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ int f77857b;

    /* renamed from: c */
    public final /* synthetic */ Object f77858c;

    /* renamed from: d */
    public final /* synthetic */ Object f77859d;

    /* renamed from: e */
    public final /* synthetic */ Object f77860e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C27620s2(int i, Object obj, Object obj2, Object obj3) {
        super(1);
        this.f77857b = i;
        this.f77858c = obj;
        this.f77859d = obj2;
        this.f77860e = obj3;
    }

    /* renamed from: d */
    public final Object m3d(Object obj) {
        s sVar = s.a;
        int i = this.f77857b;
        if (i == 0) {
            ((C20524k) this.f77859d).f57605c.mo27302d(((AbstractC20513e.C20517d) this.f77858c).f57590c, ((Boolean) obj).booleanValue());
            return sVar;
        } else if (i == 1) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            ((AbstractC20513e.C20517d) this.f77858c).f57591d = booleanValue;
            ((AbstractC20519g.AbstractC20520a) ((C20524k) this.f77859d).f57604b.get()).mo11067Gd(((AbstractC20513e.C20517d) this.f77858c).f57588a, booleanValue);
            return sVar;
        } else if (i != 2) {
            throw null;
        } else {
            boolean booleanValue2 = ((Boolean) obj).booleanValue();
            ((AbstractC20513e.C20517d) this.f77858c).f57592e = booleanValue2;
            ((AbstractC20519g.AbstractC20520a) ((C20524k) this.f77859d).f57604b.get()).mo11063l2(((AbstractC20513e.C20517d) this.f77858c).f57590c, booleanValue2);
            return sVar;
        }
    }
}
