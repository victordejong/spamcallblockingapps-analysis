package p193e.p194a.p288a0;

import com.truecaller.spamcategories.SpamCategory;
import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p288a0.p289a.AbstractC7379m;
import p193e.p194a.p288a0.p289a.C7371e;
import p193e.p194a.p288a0.p289a.C7375i;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.spamcategories.SpamCategoriesPresenter$onAttachView$1", f = "SpamCategoriesPresenter.kt", l = {76}, m = "invokeSuspend")
/* renamed from: e.a.a0.h */
/* loaded from: classes12-dex2jar.jar:e/a/a0/h.class */
public final class C7389h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f23518e;

    /* renamed from: f */
    public final /* synthetic */ C7380b f23519f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7389h(C7380b c7380b, d dVar) {
        super(2, dVar);
        this.f23519f = c7380b;
    }

    /* renamed from: i */
    public final d<s> m29702i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7389h(this.f23519f, dVar);
    }

    /* renamed from: k */
    public final Object m29701k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7389h(this.f23519f, dVar).m29700s(s.a);
    }

    /* renamed from: s */
    public final Object m29700s(Object obj) {
        a aVar = a.a;
        int i = this.f23518e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7390i abstractC7390i = this.f23519f.f23506n;
            this.f23518e = 1;
            Object mo29697c = abstractC7390i.mo29697c(this);
            obj = mo29697c;
            if (mo29697c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        List list = (List) obj;
        this.f23519f.f23496d.clear();
        List<AbstractC7379m> list2 = this.f23519f.f23496d;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        int i2 = 0;
        for (Object obj2 : list) {
            if (i2 < 0) {
                s1.u.i.N0();
                throw null;
            }
            SpamCategory spamCategory = (SpamCategory) obj2;
            arrayList.add(i2 <= 2 ? new C7371e(spamCategory.getId(), spamCategory.getName(), spamCategory.getIcon(), i2) : new C7375i(spamCategory.getId(), spamCategory.getName(), spamCategory.getIcon()));
            i2++;
        }
        list2.addAll(arrayList);
        C7380b c7380b = this.f23519f;
        if (c7380b.f23496d.size() >= 4) {
            AbstractC7385f abstractC7385f = (AbstractC7385f) c7380b.f57683a;
            if (abstractC7385f != null) {
                List<AbstractC7379m> list3 = c7380b.f23496d;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : list3) {
                    if (obj3 instanceof C7371e) {
                        arrayList2.add(obj3);
                    }
                }
                List<AbstractC7379m> list4 = c7380b.f23496d;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj4 : list4) {
                    if (obj4 instanceof C7375i) {
                        arrayList3.add(obj4);
                    }
                }
                abstractC7385f.mo29716Bn(arrayList2, arrayList3);
            }
        } else {
            AbstractC7385f abstractC7385f2 = (AbstractC7385f) c7380b.f57683a;
            if (abstractC7385f2 != null) {
                abstractC7385f2.mo29707mu();
            }
        }
        return s.a;
    }
}
