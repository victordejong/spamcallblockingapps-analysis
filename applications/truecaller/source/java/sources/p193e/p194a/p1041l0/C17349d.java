package p193e.p194a.p1041l0;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callhistory.data.FilterType;
import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17387d;
import p193e.p194a.p1041l0.p1045v.AbstractC17389a;
import p193e.p194a.p1041l0.p1047x.AbstractC17395a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.l0.d */
/* loaded from: classes6-dex2jar.jar:e/a/l0/d.class */
public final class C17349d implements AbstractC17348c {

    /* renamed from: a */
    public final AbstractC17352g f48599a;

    /* renamed from: b */
    public final AbstractC17363p f48600b;

    /* renamed from: c */
    public final AbstractC17366r f48601c;

    /* renamed from: d */
    public final C16487j f48602d;

    /* renamed from: e */
    public final AbstractC17395a f48603e;

    /* renamed from: f */
    public final AbstractC17387d f48604f;

    /* renamed from: g */
    public final ContentResolver f48605g;

    @Inject
    public C17349d(AbstractC17352g abstractC17352g, AbstractC17363p abstractC17363p, AbstractC17366r abstractC17366r, C16487j c16487j, AbstractC17395a abstractC17395a, AbstractC17387d abstractC17387d, ContentResolver contentResolver) {
        l.e(abstractC17352g, "callLogManager");
        l.e(abstractC17363p, "searchHistoryManager");
        l.e(abstractC17366r, "syncManager");
        l.e(c16487j, "rawContactDao");
        l.e(abstractC17395a, "widgetDataProvider");
        l.e(abstractC17387d, "callRecordingHistoryEventInserter");
        l.e(contentResolver, "contentResolver");
        this.f48599a = abstractC17352g;
        this.f48600b = abstractC17363p;
        this.f48601c = abstractC17366r;
        this.f48602d = c16487j;
        this.f48603e = abstractC17395a;
        this.f48604f = abstractC17387d;
        this.f48605g = contentResolver;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: A */
    public AbstractC19891x<Boolean> mo16251A(Set<Long> set) {
        Boolean bool = Boolean.FALSE;
        l.e(set, "historyIds");
        try {
            ContentValues contentValues = new ContentValues();
            boolean z = false;
            contentValues.put("new", (Integer) 0);
            contentValues.put("is_read", (Integer) 1);
            ContentResolver contentResolver = this.f48605g;
            Uri m15699b = C17891a1.C17901j.m15699b();
            String str = "_id IN (" + h.u("?", ",", set.size()) + ')';
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
            for (Number number : set) {
                arrayList.add(String.valueOf(number.longValue()));
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            if (contentResolver.update(m15699b, contentValues, str, (String[]) array) != 0) {
                z = true;
            }
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(z));
            l.d(m11834h, "Promise.wrap(count != 0)");
            return m11834h;
        } catch (RuntimeExecutionException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(bool);
            l.d(m11834h2, "Promise.wrap(false)");
            return m11834h2;
        } catch (IllegalArgumentException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
            AbstractC19891x<Boolean> m11834h3 = AbstractC19891x.m11834h(bool);
            l.d(m11834h3, "Promise.wrap(false)");
            return m11834h3;
        } catch (SecurityException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
            AbstractC19891x<Boolean> m11834h4 = AbstractC19891x.m11834h(bool);
            l.d(m11834h4, "Promise.wrap(false)");
            return m11834h4;
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: B */
    public void mo16250B(String str) {
        l.e(str, "normalizedNumber");
        try {
            Cursor query = this.f48605g.query(C17891a1.C17901j.m15699b(), new String[]{"_id", "call_log_id"}, "normalized_number =? AND type = 3 AND (new = 1 OR is_read = 0)", new String[]{str}, null);
            if (query == null) {
                return;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            while (query.moveToNext()) {
                l.d(query, "it");
                long m13632E0 = C19291g.m13632E0(query, "call_log_id");
                long m13632E02 = C19291g.m13632E0(query, "_id");
                if (m13632E0 > 0) {
                    linkedHashSet.add(Long.valueOf(m13632E0));
                } else {
                    linkedHashSet2.add(Long.valueOf(m13632E02));
                }
            }
            if (!linkedHashSet.isEmpty()) {
                mo16224x(linkedHashSet);
            }
            if (!linkedHashSet2.isEmpty()) {
                mo16251A(linkedHashSet2);
            }
            C25225a.m4016G(query, null);
        } catch (SQLiteException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: C */
    public AbstractC19891x<Boolean> mo16249C(HistoryEvent historyEvent) {
        l.e(historyEvent, "historyEvent");
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(this.f48599a.mo16215f(historyEvent)));
        l.d(m11834h, "Promise.wrap(callLogMana…dCallEvent(historyEvent))");
        return m11834h;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: D */
    public AbstractC19891x<HistoryEvent> mo16248D(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return this.f48599a.mo16217d(contact);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: a */
    public AbstractC19891x<AbstractC17373b> mo16247a(String str, Integer num) {
        l.e(str, "normalizedNumber");
        return this.f48599a.mo16220a(str, num);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: b */
    public AbstractC19891x<AbstractC17373b> mo16246b(Contact contact, Integer num) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return this.f48599a.mo16219b(contact, num);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: c */
    public AbstractC19891x<Integer> mo16245c(List<? extends HistoryEvent> list) {
        l.e(list, "eventsToRestore");
        return this.f48599a.mo16218c(list);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: d */
    public void mo16244d(int i) {
        this.f48600b.mo16180d(i);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: e */
    public void mo16243e(long j) {
        this.f48599a.mo16216e(j);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: f */
    public AbstractC19891x<Boolean> mo16242f(HistoryEvent historyEvent, Contact contact) {
        l.e(historyEvent, "event");
        l.e(contact, AnalyticsConstants.CONTACT);
        this.f48602d.m17331c(contact);
        historyEvent.setTcId(contact.getTcId());
        mo16234n(historyEvent);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.TRUE);
        l.d(m11834h, "Promise.wrap(true)");
        return m11834h;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: g */
    public void mo16241g(long j) {
        this.f48599a.mo16214g(j);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: h */
    public AbstractC19891x<HistoryEvent> mo16240h(String str) {
        l.e(str, "normalizedNumber");
        return this.f48599a.mo16213h(str);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: i */
    public void mo16239i(AbstractC17389a.C17390a c17390a) {
        l.e(c17390a, "batch");
        this.f48601c.mo16172i(c17390a);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: j */
    public AbstractC19891x<List<HistoryEvent>> mo16238j(FilterType filterType, Integer num, CancellationSignal cancellationSignal) {
        l.e(filterType, "callTypeFilter");
        return this.f48599a.mo16211j(filterType, num, cancellationSignal);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: k */
    public AbstractC19891x<AbstractC17373b> mo16237k(String str, long j, long j2, HistoryEventsScope historyEventsScope) {
        l.e(str, "normalizedNumber");
        l.e(historyEventsScope, "scope");
        return this.f48599a.mo16210k(str, j, j2, historyEventsScope);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: l */
    public AbstractC19891x<Integer> mo16236l() {
        return this.f48599a.mo16209l();
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: m */
    public AbstractC19891x<Boolean> mo16235m(List<Long> list, List<Long> list2, HistoryEventsScope historyEventsScope) {
        l.e(historyEventsScope, "scope");
        return this.f48599a.mo16208m(list, list2, historyEventsScope);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: n */
    public void mo16234n(HistoryEvent historyEvent) {
        l.e(historyEvent, "event");
        if (this.f48600b.mo16182a(historyEvent)) {
            this.f48600b.mo16181b(historyEvent);
        } else {
            this.f48599a.mo16215f(historyEvent);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: o */
    public void mo16233o(CallRecording callRecording) {
        l.e(callRecording, "callRecording");
        this.f48604f.mo16146o(callRecording);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: p */
    public AbstractC19891x<AbstractC17373b> mo16232p() {
        return this.f48603e.mo16143p();
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: q */
    public AbstractC19891x<AbstractC17373b> mo16231q(int i) {
        return this.f48600b.mo16179q(i);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: r */
    public AbstractC19891x<HistoryEvent> mo16230r(String str) {
        l.e(str, "tcId");
        return this.f48599a.mo16204r(str);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: s */
    public AbstractC19891x<AbstractC17373b> mo16229s() {
        return this.f48599a.mo16203s();
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: t */
    public void mo16228t() {
        this.f48599a.mo16202t();
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: u */
    public AbstractC19891x<AbstractC17373b> mo16227u(long j) {
        return this.f48599a.mo16201u(j);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: v */
    public AbstractC19891x<AbstractC17373b> mo16226v(int i) {
        return this.f48599a.mo16200v(i);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: w */
    public AbstractC19891x<HistoryEvent> mo16225w(String str) {
        l.e(str, "eventId");
        return this.f48599a.mo16199w(str);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: x */
    public AbstractC19891x<Boolean> mo16224x(Set<Long> set) {
        l.e(set, "callLogIds");
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(this.f48599a.mo16198x(set)));
        l.d(m11834h, "Promise.wrap(callLogMana…r.markAsSeen(callLogIds))");
        return m11834h;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: y */
    public void mo16223y() {
        this.f48601c.mo16178b(true);
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: z */
    public AbstractC19891x<AbstractC17373b> mo16222z() {
        return mo16227u(RecyclerView.FOREVER_NS);
    }
}
