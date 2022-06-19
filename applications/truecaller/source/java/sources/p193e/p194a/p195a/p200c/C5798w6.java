package p193e.p194a.p195a.p200c;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.MessageDetailsProvider$fetchArchivedData$2", f = "MessageDetailsProvider.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.a.c.w6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/w6.class */
public final class C5798w6 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C5826y6 f19404e;

    /* renamed from: f */
    public final /* synthetic */ List f19405f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5798w6(C5826y6 c5826y6, List list, d dVar) {
        super(2, dVar);
        this.f19404e = c5826y6;
        this.f19405f = list;
    }

    /* renamed from: i */
    public final d<s> m32587i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5798w6(this.f19404e, this.f19405f, dVar);
    }

    /* renamed from: k */
    public final Object m32586k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5798w6(this.f19404e, this.f19405f, dVar).m32585s(s.a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    public final Object m32585s(Object obj) {
        s sVar = s.a;
        C25225a.m3932a3(obj);
        List<k> list = this.f19405f;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (k kVar : list) {
            Message message = (Message) kVar.a;
            long j = message.f13381b;
            int i = 3;
            if (message.f13399t != 3) {
                i = 1;
            }
            arrayList.add(new C5282f8(j, i));
        }
        List r = s1.u.i.r(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : r) {
            if (!Boolean.valueOf(this.f19404e.f19558a.containsKey((C5282f8) obj2)).booleanValue()) {
                arrayList2.add(obj2);
            }
        }
        if (arrayList2.isEmpty()) {
            return sVar;
        }
        ContentResolver contentResolver = this.f19404e.f19559b;
        Uri m15550a = C17891a1.C17905n.m15550a();
        String m8618h = C22128a.m8618h(C22128a.m8728C("conversation_id IN ("), s1.u.i.O(arrayList2, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C5809x6.f19429b, 31), ") AND archived_date");
        ArrayList arrayList3 = new ArrayList(C25225a.m4004J(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(String.valueOf(((C5282f8) it.next()).f18096a));
        }
        Object[] array = arrayList3.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor query = contentResolver.query(m15550a, new String[]{"conversation_id", "filter"}, m8618h, (String[]) array, null);
        try {
            ArrayList arrayList4 = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList4.add(new C5282f8(query.getLong(0), query.getInt(1)));
                }
            }
            C25225a.m4016G(query, null);
            Set d1 = s1.u.i.d1(arrayList4);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                C5282f8 c5282f8 = (C5282f8) it2.next();
                this.f19404e.f19558a.put(c5282f8, Boolean.valueOf(d1.contains(c5282f8)));
            }
            return sVar;
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }
}
