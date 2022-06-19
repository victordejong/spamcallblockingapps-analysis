package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.f0.r;
import s1.u.i;
import s1.u.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.m0.k */
/* loaded from: classes8-dex2jar.jar:e/a/m0/k.class */
public final class C18106k implements C8456a.AbstractC8461e {

    /* renamed from: e.a.m0.k$a */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/k$a.class */
    public static final class C18107a extends m implements l<String, CharSequence> {

        /* renamed from: b */
        public static final C18107a f51026b = new C18107a();

        public C18107a() {
            super(1);
        }

        /* renamed from: d */
        public /* bridge */ /* synthetic */ Object m15485d(Object obj) {
            String str = (String) obj;
            return "?";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v85 */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8461e
    /* renamed from: b */
    public int mo15465b(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr) {
        char c;
        ContentValues contentValues;
        Object[] array;
        s1.z.c.l.e(abstractC8448a, "provider");
        s1.z.c.l.e(c8456a, "helper");
        s1.z.c.l.e(uri, "uri");
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        StringBuilder m8728C = C22128a.m8728C("tracking_type IN (?, ?)");
        if (!(str == null || r.p(str))) {
            m8728C.append(" AND (" + str + ')');
        }
        String sb = m8728C.toString();
        s1.z.c.l.d(sb, "StringBuilder().apply(builderAction).toString()");
        Object[] array2 = ((ArrayList) i.n0(i.T(new String[]{"PHONE_NUMBER", "OTHER"}), strArr != null ? strArr : new String[0])).toArray(new String[0]);
        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor query = m28528m.query("filters", new String[]{"value"}, sb, (String[]) array2, null, null, null);
        ArrayList arrayList = null;
        if (query != null) {
            try {
                arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(query.getString(0));
                }
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        if (arrayList == null) {
            arrayList = s.a;
        }
        Iterator it = ((ArrayList) i.k(arrayList, 500)).iterator();
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (!it.hasNext()) {
                break;
            }
            List list = (List) it.next();
            new ContentValues(1).put("filter_action", (Integer) 0);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("normalized_destination IN (");
            String m8630e = C22128a.m8630e(sb2, i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C18107a.f51026b, 31), ')');
            Objects.requireNonNull(list.toArray(new String[0]), "null cannot be cast to non-null type kotlin.Array<T>");
            r0 = c + m28528m.update("msg_participants", contentValues, m8630e, (String[]) array);
        }
        if (c > 0) {
            abstractC8448a.m28532i(C17891a1.C17902k.m15675H());
            abstractC8448a.m28532i(C8582g0.m28306n());
        }
        return m28528m.delete(c8456a.f26172h, str, strArr);
    }
}
