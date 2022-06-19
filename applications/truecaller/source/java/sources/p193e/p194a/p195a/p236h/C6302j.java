package p193e.p194a.p195a.p236h;

import android.content.ContentResolver;
import android.net.Uri;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6131c0;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p372b0.p430q.C8582g0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.groupinfo.GroupInfoPresenter$loadImportantMessageInfo$1", f = "GroupInfoPresenter.kt", l = {251}, m = "invokeSuspend")
/* renamed from: e.a.a.h.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/h/j.class */
public final class C6302j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f21105e;

    /* renamed from: f */
    public final /* synthetic */ C6290i f21106f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6302j(C6290i c6290i, d dVar) {
        super(2, dVar);
        this.f21106f = c6290i;
    }

    /* renamed from: i */
    public final d<s> m31479i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6302j(this.f21106f, dVar);
    }

    /* renamed from: k */
    public final Object m31478k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6302j(this.f21106f, dVar).m31477s(s.a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    public final Object m31477s(Object obj) {
        a aVar;
        ArrayList<Number> arrayList;
        a aVar2;
        String str;
        a aVar3 = a.a;
        int i = this.f21105e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C6290i c6290i = this.f21106f;
            AbstractC6284c abstractC6284c = c6290i.f21093w;
            long j = c6290i.f21080j.f13199a;
            this.f21105e = 1;
            C6286e c6286e = (C6286e) abstractC6284c;
            AbstractC6131c0 query = c6286e.f21069a.query(C8582g0.m28295y(), new String[]{"DISTINCT participant_id"}, "conversation_id = ? AND important", new String[]{String.valueOf(j)}, null);
            if (query != null) {
                try {
                    arrayList = new ArrayList();
                    while (query.moveToNext()) {
                        arrayList.add(new Long(query.getLong(0)));
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            } else {
                arrayList = null;
            }
            boolean z = true;
            if (arrayList != null) {
                z = arrayList.isEmpty();
            }
            if (z) {
                aVar2 = s1.u.s.a;
            } else {
                ContentResolver contentResolver = c6286e.f21069a;
                Uri m15672I = C17891a1.C17902k.m15672I();
                String m8618h = C22128a.m8618h(C22128a.m8728C("_id IN ("), s1.u.i.O(arrayList, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6285d.f21068b, 31), ") GROUP BY _id");
                ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
                for (Number number : arrayList) {
                    arrayList2.add(String.valueOf(number.longValue()));
                }
                Object[] array = arrayList2.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                query = c6286e.f21070b.mo31781k(contentResolver.query(m15672I, new String[]{"DISTINCT _id", "*"}, m8618h, (String[]) array, null));
                try {
                    a arrayList3 = new ArrayList();
                    if (query != null) {
                        while (query.moveToNext()) {
                            Participant mo31749g1 = query.mo31749g1();
                            l.d(mo31749g1, "participant");
                            if (mo31749g1.f11569b != 4) {
                                String str2 = mo31749g1.f11572e;
                                l.d(str2, "normalizedAddress");
                                if (!(str2.length() == 0)) {
                                    str = C6405h.m31301c(mo31749g1);
                                    arrayList3.add(str);
                                }
                            }
                            str = c6286e.f21071c.mo13768b(C2752R.string.ParticipantSelfName, new Object[0]);
                            l.d(str, "resourceProvider.getStri…ring.ParticipantSelfName)");
                            arrayList3.add(str);
                        }
                    }
                    C25225a.m4016G(query, null);
                    aVar2 = arrayList3;
                } finally {
                    try {
                        throw th;
                    } finally {
                        C25225a.m4016G(query, th);
                    }
                }
            }
            aVar = aVar2;
            if (aVar2 == aVar3) {
                return aVar3;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            aVar = obj;
        }
        List list = (List) aVar;
        C6290i c6290i2 = this.f21106f;
        AbstractC6289h abstractC6289h = (AbstractC6289h) c6290i2.f57683a;
        if (abstractC6289h != null) {
            c6290i2.f21078h = !list.isEmpty();
            abstractC6289h.mo31525Li(s1.u.i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 63));
            abstractC6289h.mo31517Xp(this.f21106f.f21078h);
            this.f21106f.m31494Oj();
        }
        return s.a;
    }
}
