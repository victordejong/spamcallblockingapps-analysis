package p193e.p194a.p294b.p345k.p350c;

import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.governmentServices.p146ui.adapters.ViewType;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p345k.p347b.p349b.C7981b;
import p193e.p194a.p294b.p357o.p365f.p368c.C8173b;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b.k.c.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/c/g.class */
public final class C7991g implements g<List<? extends C7981b>> {

    /* renamed from: a */
    public final /* synthetic */ C7994i f24678a;

    @e(c = "com.truecaller.bizmon.covidDirectory.mvp.CovidDistrictListPresenter$loadDataFromDB$2$1", f = "CovidDistrictListMvp.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.k.c.g$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/c/g$a.class */
    public static final class C7992a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ ArrayList f24679e;

        /* renamed from: f */
        public final /* synthetic */ C7991g f24680f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7992a(ArrayList arrayList, d dVar, C7991g c7991g) {
            super(2, dVar);
            this.f24679e = arrayList;
            this.f24680f = c7991g;
        }

        /* renamed from: i */
        public final d<s> m29028i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7992a(this.f24679e, dVar, this.f24680f);
        }

        /* renamed from: k */
        public final Object m29027k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7992a c7992a = new C7992a(this.f24679e, dVar, this.f24680f);
            s sVar = s.a;
            c7992a.m29026s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m29026s(Object obj) {
            C25225a.m3932a3(obj);
            C7994i c7994i = this.f24680f.f24678a;
            AbstractC7988e abstractC7988e = (AbstractC7988e) c7994i.f57683a;
            if (abstractC7988e != null) {
                String format = new SimpleDateFormat("dd-MM-yyyy", Locale.getDefault()).format(Long.valueOf(c7994i.f24691m.getLong("covid_dir_last_sync_time", System.currentTimeMillis())));
                AbstractC7988e abstractC7988e2 = (AbstractC7988e) c7994i.f57683a;
                if (abstractC7988e2 != null) {
                    String mo13768b = c7994i.f24685g.mo13768b(C3478R.string.biz_last_updated_on, format);
                    l.d(mo13768b, "resourceProvider.getStri…t_updated_on, dateString)");
                    abstractC7988e2.mo28977zp(mo13768b);
                }
                abstractC7988e.mo28988Y1();
                String mo13768b2 = this.f24680f.f24678a.f24685g.mo13768b(C3478R.string.biz_covid_directory_district_list_title, new Object[0]);
                l.d(mo13768b2, "resourceProvider.getStri…tory_district_list_title)");
                abstractC7988e.mo28983s2(mo13768b2);
                abstractC7988e.mo28992O2();
                if (!this.f24679e.isEmpty()) {
                    abstractC7988e.mo28978y4();
                    abstractC7988e.mo28989X2(this.f24679e);
                    abstractC7988e.mo28998G1();
                }
            }
            return s.a;
        }
    }

    public C7991g(C7994i c7994i) {
        this.f24678a = c7994i;
    }

    /* renamed from: a */
    public Object m29029a(List<? extends C7981b> list, d<? super s> dVar) {
        List<? extends C7981b> list2 = list;
        C7994i c7994i = this.f24678a;
        Objects.requireNonNull(list2, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.bizmon.covidDirectory.db.entities.District> /* = java.util.ArrayList<com.truecaller.bizmon.covidDirectory.db.entities.District> */");
        ArrayList<C7981b> arrayList = (ArrayList) list2;
        Objects.requireNonNull(c7994i);
        C25225a.m3953V2(arrayList, C7993h.f24681a);
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (C7981b c7981b : arrayList) {
            C8173b c8173b = new C8173b();
            c8173b.m28839c(ViewType.TYPE_DISTRICT);
            c8173b.m28840b(c7981b);
            arrayList2.add(c8173b);
        }
        Objects.requireNonNull(this.f24678a);
        ArrayList arrayList3 = new ArrayList();
        if (!arrayList2.isEmpty()) {
            C8173b c8173b2 = new C8173b();
            c8173b2.m28840b(new C7981b(String.valueOf(((C8173b) s1.u.i.B(arrayList2)).m28841a().f24652b.charAt(0)), 0, 0L, 6));
            c8173b2.m28839c(ViewType.TYPE_INDEX);
            arrayList3.add(c8173b2);
            int size = arrayList2.size() - 1;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= size) {
                    break;
                }
                C8173b c8173b3 = new C8173b();
                char charAt = ((C8173b) arrayList2.get(i2)).m28841a().f24652b.charAt(0);
                int i3 = i2 + 1;
                if (charAt == ((C8173b) arrayList2.get(i3)).m28841a().f24652b.charAt(0)) {
                    ((C8173b) arrayList2.get(i2)).m28839c(ViewType.TYPE_DISTRICT);
                    arrayList3.add(arrayList2.get(i2));
                } else {
                    ((C8173b) arrayList2.get(i2)).m28839c(ViewType.TYPE_DISTRICT);
                    arrayList3.add(arrayList2.get(i2));
                    c8173b3.m28840b(new C7981b(String.valueOf(((C8173b) arrayList2.get(i3)).m28841a().f24652b.charAt(0)), 0, 0L, 6));
                    c8173b3.m28839c(ViewType.TYPE_INDEX);
                    arrayList3.add(c8173b3);
                }
                i = i3;
            }
            ((C8173b) arrayList2.get(size)).m28839c(ViewType.TYPE_DISTRICT);
            arrayList3.add(arrayList2.get(size));
        }
        this.f24678a.f24682d = arrayList3.size();
        C7994i c7994i2 = this.f24678a;
        a w2 = s1.a.a.a.v0.f.d.w2(c7994i2, c7994i2.f24686h, (j0) null, new C7992a(arrayList3, null, this), 2, (Object) null);
        return w2 == a.a ? w2 : s.a;
    }
}
