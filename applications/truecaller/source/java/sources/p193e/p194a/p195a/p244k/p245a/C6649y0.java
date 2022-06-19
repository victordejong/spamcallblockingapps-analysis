package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.y0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/y0.class */
public final class C6649y0 implements AbstractC6646x0 {

    /* renamed from: a */
    public final ContentResolver f21926a;

    /* renamed from: b */
    public final AbstractC6573i1 f21927b;

    /* renamed from: c */
    public final AbstractC6600p f21928c;

    /* renamed from: e.a.a.k.a.y0$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/y0$a.class */
    public static final class C6650a {

        /* renamed from: a */
        public final long f21929a;

        /* renamed from: b */
        public final byte[] f21930b;

        /* renamed from: c */
        public final int f21931c;

        public C6650a(long j, byte[] bArr, int i, int i2) {
            l.e(bArr, RemoteMessageConst.DATA);
            this.f21929a = j;
            this.f21930b = bArr;
            this.f21931c = i2;
        }
    }

    @Inject
    public C6649y0(ContentResolver contentResolver, AbstractC6573i1 abstractC6573i1, AbstractC6600p abstractC6600p) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6573i1, "imVersionManager");
        l.e(abstractC6600p, "imEventProcessor");
        this.f21926a = contentResolver;
        this.f21927b = abstractC6573i1;
        this.f21928c = abstractC6600p;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6646x0
    /* renamed from: a */
    public void mo30604a(Event event, int i, int i2) {
        l.e(event, "event");
        ContentValues contentValues = new ContentValues();
        contentValues.put("event", event.toByteArray());
        contentValues.put("api_version", Integer.valueOf(i));
        contentValues.put("event_type", Integer.valueOf(i2));
        this.f21926a.insert(C8582g0.m28298v(), contentValues);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0134 A[LOOP:0: B:3:0x0010->B:39:0x0134, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014e A[EDGE_INSN: B:47:0x014e->B:40:0x014e ?: BREAK  , SYNTHETIC] */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6646x0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<java.lang.Boolean> mo30603b() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6649y0.mo30603b():e.a.r2.x");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public final List<C6650a> m30602c(int i) {
        s S0;
        Cursor query = this.f21926a.query(C8582g0.m28298v(), new String[]{"_id", "event", "event_type"}, "api_version<=?", new String[]{String.valueOf(i)}, "_id ASC LIMIT 100");
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    long j = query.getLong(0);
                    byte[] blob = query.getBlob(1);
                    l.d(blob, "getBlob(1)");
                    arrayList.add(new C6650a(j, blob, i, query.getInt(2)));
                }
                C25225a.m4016G(query, null);
                S0 = i.S0(arrayList);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            S0 = s.a;
        }
        return S0;
    }
}
