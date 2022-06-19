package p193e.p194a.p1041l0;

import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import q3.a.i0;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callhistory.DialerCacheManagerImpl$getAggregatedContactTcIds$2", f = "DialerCacheManagerImpl.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.l0.l */
/* loaded from: classes6-dex2jar.jar:e/a/l0/l.class */
public final class C17358l extends i implements p<i0, d<? super Set<? extends String>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C17359m f48610e;

    /* renamed from: f */
    public final /* synthetic */ List f48611f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17358l(C17359m c17359m, List list, d dVar) {
        super(2, dVar);
        this.f48610e = c17359m;
        this.f48611f = list;
    }

    /* renamed from: i */
    public final d<s> m16194i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C17358l(this.f48610e, this.f48611f, dVar);
    }

    /* renamed from: k */
    public final Object m16193k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C17358l(this.f48610e, this.f48611f, dVar).m16192s(s.a);
    }

    /* renamed from: s */
    public final Object m16192s(Object obj) {
        Set set = u.a;
        C25225a.m3932a3(obj);
        Cursor query = this.f48610e.f48617f.query(Uri.withAppendedPath(C17891a1.f50888a, "aggregated_contact_raw_contact"), new String[]{"tc_id"}, "aggregated_raw_contact_tc_id in (?)", new String[]{s1.u.i.O(this.f48611f, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62)}, null);
        Set set2 = set;
        if (query != null) {
            try {
                try {
                    ArrayList arrayList = new ArrayList();
                    while (query.moveToNext()) {
                        arrayList.add(query.getString(0));
                    }
                    set2 = s1.u.i.d1(arrayList);
                } catch (Exception e) {
                    e.toString();
                    if (query != null) {
                        query.close();
                    }
                    return set;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        return set2;
    }
}
