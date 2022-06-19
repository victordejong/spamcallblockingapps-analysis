package p000;

import p193e.p194a.p1111o2.C18913u;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e3 */
/* loaded from: classes6-dex2jar.jar:e3.class */
public final class C25273e3 extends m implements l<Integer, Integer> {

    /* renamed from: b */
    public final /* synthetic */ int f70705b;

    /* renamed from: c */
    public final /* synthetic */ Object f70706c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25273e3(int i, Object obj) {
        super(1);
        this.f70705b = i;
        this.f70706c = obj;
    }

    /* renamed from: d */
    public final Object m3724d(Object obj) {
        int i = this.f70705b;
        if (i == 0) {
            int intValue = ((Number) obj).intValue();
            C18913u c18913u = (C18913u) this.f70706c;
            return Integer.valueOf(c18913u.mo14329j(c18913u.f53042g.mo14338a(intValue, c18913u.f53040e.getItemCount(), ((C18913u) this.f70706c).f53041f.getItemCount())));
        } else if (i != 1) {
            throw null;
        } else {
            int intValue2 = ((Number) obj).intValue();
            C18913u c18913u2 = (C18913u) this.f70706c;
            return Integer.valueOf(c18913u2.mo14329j(c18913u2.f53042g.mo14337b(intValue2, c18913u2.f53040e.getItemCount(), ((C18913u) this.f70706c).f53041f.getItemCount())));
        }
    }
}
