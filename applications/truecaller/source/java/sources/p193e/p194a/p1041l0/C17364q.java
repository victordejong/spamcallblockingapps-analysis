package p193e.p194a.p1041l0;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import com.truecaller.service.WidgetListProvider;
import javax.inject.Inject;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1187r2.AbstractC19849c0;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19892y;
import p193e.p194a.p997k3.AbstractC16451d;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.l0.q */
/* loaded from: classes6-dex2jar.jar:e/a/l0/q.class */
public final class C17364q implements AbstractC17363p {

    /* renamed from: a */
    public final Context f48637a;

    /* renamed from: b */
    public final AbstractC16451d f48638b;

    /* renamed from: e.a.l0.q$a */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/q$a.class */
    public static final class C17365a<T> implements AbstractC19849c0<AbstractC17373b> {

        /* renamed from: a */
        public static final C17365a f48639a = new C17365a();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            l.e(abstractC17373b2, "it");
            abstractC17373b2.close();
        }
    }

    @Inject
    public C17364q(Context context, AbstractC16451d abstractC16451d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC16451d, "extraInfoReaderProvider");
        this.f48637a = context;
        this.f48638b = abstractC16451d;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17363p
    /* renamed from: a */
    public boolean mo16182a(HistoryEvent historyEvent) {
        l.e(historyEvent, "event");
        int i = historyEvent.f11550q;
        return i == 5 || i == 6;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17363p
    /* renamed from: b */
    public void mo16181b(HistoryEvent historyEvent) {
        l.e(historyEvent, "event");
        if (h.j(historyEvent.getTcId()) && !h.j(historyEvent.f11535b)) {
            Cursor cursor = null;
            try {
                Cursor query = this.f48637a.getContentResolver().query(C17891a1.C17899h.m15701a(), new String[]{"tc_id"}, "data1=? AND data_type=4", new String[]{historyEvent.f11535b}, null);
                if (query != null && query.moveToFirst()) {
                    cursor = query;
                    historyEvent.setTcId(query.getString(0));
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        if (h.m(historyEvent.getTcId()) && historyEvent.f11550q != 6) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("timestamp", Long.valueOf(historyEvent.f11541h));
            String tcId = historyEvent.getTcId();
            if (tcId != null && this.f48637a.getContentResolver().update(C17891a1.C17901j.m15699b(), contentValues, "tc_id=? AND type=5", new String[]{tcId}) != 0) {
                WidgetListProvider.m34742b(this.f48637a);
                return;
            }
        }
        historyEvent.f11551r = 0;
        if (this.f48637a.getContentResolver().insert(C17891a1.C17901j.m15699b(), C18334g0.m15266G0(historyEvent)) != null) {
            WidgetListProvider.m34742b(this.f48637a);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17363p
    /* renamed from: d */
    public void mo16180d(int i) {
        try {
            AssertionUtil.isTrue(i == 5 || i == 6, new String[0]);
            if (this.f48637a.getContentResolver().delete(C17891a1.C17901j.m15699b(), "type=?", new String[]{String.valueOf(i)}) == 0) {
                return;
            }
            WidgetListProvider.m34742b(this.f48637a);
        } catch (SQLiteException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17363p
    /* renamed from: q */
    public AbstractC19891x<AbstractC17373b> mo16179q(int i) {
        Cursor cursor;
        SQLiteException e;
        AssertionUtil.isTrue(i == 5 || i == 6, new String[0]);
        try {
            cursor = this.f48637a.getContentResolver().query(C17891a1.C17901j.m15697d(), null, "type=?", new String[]{String.valueOf(i)}, "timestamp DESC");
            if (cursor != null) {
                try {
                    C19892y c19892y = new C19892y(C18334g0.m15264H0(cursor, this.f48638b.mo10130a(), true), C17365a.f48639a);
                    l.d(c19892y, "Promise.wrap<HistoryEven…er, true)) { it.close() }");
                    return c19892y;
                } catch (SQLiteException e2) {
                    e = e2;
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    AbstractC19891x<AbstractC17373b> m11834h = AbstractC19891x.m11834h(null);
                    l.d(m11834h, "Promise.wrap(null)");
                    return m11834h;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        }
        AbstractC19891x<AbstractC17373b> m11834h2 = AbstractC19891x.m11834h(null);
        l.d(m11834h2, "Promise.wrap(null)");
        return m11834h2;
    }
}
