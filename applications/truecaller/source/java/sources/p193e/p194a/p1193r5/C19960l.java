package p193e.p194a.p1193r5;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.whoviewedme.ProfileViewDaoImpl$deleteProfileViewsForIds$2", f = "ProfileViewDao.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.r5.l */
/* loaded from: classes8-dex2jar.jar:e/a/r5/l.class */
public final class C19960l extends i implements p<i0, d<? super Integer>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19965n f56447e;

    /* renamed from: f */
    public final /* synthetic */ Set f56448f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19960l(C19965n c19965n, Set set, d dVar) {
        super(2, dVar);
        this.f56447e = c19965n;
        this.f56448f = set;
    }

    /* renamed from: i */
    public final d<s> m11737i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19960l(this.f56447e, this.f56448f, dVar);
    }

    /* renamed from: k */
    public final Object m11736k(Object obj, Object obj2) {
        int i;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19965n c19965n = this.f56447e;
        Set set = this.f56448f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        if ((Boolean.valueOf(set.isEmpty() ^ true).booleanValue() ? set : null) != null) {
            i = new Integer(c19965n.f56461c.delete(c19965n.f56459a, "rowid IN " + s1.u.i.O(set, ",", "(", ")", 0, (CharSequence) null, (s1.z.b.l) null, 56), null)).intValue();
        } else {
            i = 0;
        }
        return new Integer(i);
    }

    /* renamed from: s */
    public final Object m11735s(Object obj) {
        int i;
        C25225a.m3932a3(obj);
        Set set = this.f56448f;
        if (!Boolean.valueOf(!set.isEmpty()).booleanValue()) {
            set = null;
        }
        if (set != null) {
            C19965n c19965n = this.f56447e;
            i = new Integer(c19965n.f56461c.delete(c19965n.f56459a, "rowid IN " + s1.u.i.O(this.f56448f, ",", "(", ")", 0, (CharSequence) null, (s1.z.b.l) null, 56), null)).intValue();
        } else {
            i = 0;
        }
        return new Integer(i);
    }
}
