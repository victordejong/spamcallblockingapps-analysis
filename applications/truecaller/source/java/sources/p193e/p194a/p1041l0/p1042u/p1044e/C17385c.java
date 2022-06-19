package p193e.p194a.p1041l0.p1042u.p1044e;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.data.entity.CallRecording;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1041l0.p1042u.p1043d.C17374c;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19849c0;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19892y;
import p193e.p194a.p982k0.p988m.AbstractC16353a;
import p193e.p194a.p997k3.p998j.C16462c;
import p193e.p194a.p997k3.p998j.C16463d;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.l0.u.e.c */
/* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/c.class */
public final class C17385c implements AbstractC17384b {

    /* renamed from: a */
    public final ContentResolver f48727a;

    /* renamed from: b */
    public final AbstractC16353a f48728b;

    /* renamed from: e.a.l0.u.e.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/c$a.class */
    public static final class C17386a<T> implements AbstractC19849c0<AbstractC17373b> {

        /* renamed from: a */
        public final /* synthetic */ Cursor f48729a;

        public C17386a(Cursor cursor) {
            this.f48729a = cursor;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC17373b abstractC17373b) {
            l.e(abstractC17373b, "it");
            this.f48729a.close();
        }
    }

    @Inject
    public C17385c(ContentResolver contentResolver, AbstractC16353a abstractC16353a) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC16353a, "callRecordingStorageHelper");
        this.f48727a = contentResolver;
        this.f48728b = abstractC16353a;
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: M1 */
    public AbstractC19891x<Boolean> mo16153M1(CallRecording callRecording) {
        AbstractC19891x<Boolean> abstractC19891x;
        Boolean bool = Boolean.FALSE;
        l.e(callRecording, "callRecording");
        try {
            if (this.f48728b.mo17514a(callRecording.f11505c)) {
                boolean z = true;
                if (this.f48727a.delete(C17891a1.C17894c.m15706a(), "history_event_id=?", new String[]{callRecording.f11504b}) <= 0) {
                    z = false;
                }
                abstractC19891x = AbstractC19891x.m11834h(Boolean.valueOf(z));
            } else {
                abstractC19891x = AbstractC19891x.m11834h(bool);
            }
            l.d(abstractC19891x, "if (deletedFromStorage) …wrap(false)\n            }");
        } catch (Exception e) {
            abstractC19891x = AbstractC19891x.m11834h(bool);
            l.d(abstractC19891x, "Promise.wrap(false)");
        }
        return abstractC19891x;
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: N1 */
    public AbstractC19891x<AbstractC17373b> mo16152N1() {
        C19892y c19892y;
        Cursor query = this.f48727a.query(C17891a1.C17894c.m15705b(), null, null, null, "timestamp DESC");
        if (query == null) {
            c19892y = AbstractC19891x.m11834h(null);
            l.d(c19892y, "Promise.wrap(null)");
        } else {
            c19892y = new C19892y(new C17374c(query, new C16463d(query), new C16462c(query), false), new C17386a(query));
            l.d(c19892y, "Promise.wrap(\n          …eaner { cursor.close() })");
        }
        return c19892y;
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: O1 */
    public AbstractC19891x<Long> mo16151O1(String str) {
        l.e(str, "path");
        Cursor query = this.f48727a.query(Uri.parse(str), new String[]{"_size"}, null, null, null);
        boolean z = false;
        if (query != null) {
            boolean z2 = false;
            try {
                if (query.moveToFirst()) {
                    z2 = query.getLong(0);
                }
                Throwable th = null;
                z = z2;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        AbstractC19891x<Long> m11834h = AbstractC19891x.m11834h(Long.valueOf(z ? 1L : 0L));
        l.d(m11834h, "Promise.wrap(size)");
        return m11834h;
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: P1 */
    public AbstractC19891x<Boolean> mo16150P1(Collection<Long> collection) {
        AbstractC19891x<Boolean> abstractC19891x;
        String m16148a;
        List<String> m16147b;
        Boolean bool = Boolean.FALSE;
        l.e(collection, "ids");
        try {
            m16148a = m16148a(collection);
            m16147b = m16147b(collection);
        } catch (Exception e) {
            abstractC19891x = AbstractC19891x.m11834h(bool);
            l.d(abstractC19891x, "Promise.wrap(false)");
        }
        if (m16147b == null) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(bool);
            l.d(m11834h, "Promise.wrap(false)");
            return m11834h;
        }
        boolean z = false;
        int i = 0;
        for (String str : m16147b) {
            if (str != null && !this.f48728b.mo17514a(str)) {
            }
            i++;
        }
        if (i == 0) {
            AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(bool);
            l.d(m11834h2, "Promise.wrap(false)");
            return m11834h2;
        }
        if (this.f48727a.delete(C17891a1.C17894c.m15706a(), m16148a, null) > 0) {
            z = true;
        }
        abstractC19891x = AbstractC19891x.m11834h(Boolean.valueOf(z));
        l.d(abstractC19891x, "if (storageDeletedCount …dCount > 0)\n            }");
        return abstractC19891x;
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: Q1 */
    public AbstractC19891x<List<String>> mo16149Q1(Collection<Long> collection) {
        AbstractC19891x<List<String>> abstractC19891x;
        l.e(collection, "ids");
        List<String> m16147b = m16147b(collection);
        if (m16147b != null) {
            abstractC19891x = AbstractC19891x.m11834h(i.z(m16147b));
        } else {
            abstractC19891x = AbstractC19891x.m11834h(s.a);
            l.d(abstractC19891x, "Promise.wrap(emptyList())");
        }
        return abstractC19891x;
    }

    /* renamed from: a */
    public final String m16148a(Collection<Long> collection) {
        return C22128a.m8630e(C22128a.m8728C("_id in ("), i.O(collection, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62), ')');
    }

    /* renamed from: b */
    public final List<String> m16147b(Collection<Long> collection) {
        Cursor query = this.f48727a.query(C17891a1.C17894c.m15706a(), new String[]{"recording_path"}, m16148a(collection), null, null);
        ArrayList arrayList = null;
        if (query != null) {
            try {
                arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(C19291g.m13628F1(query, "recording_path"));
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return arrayList;
    }
}
