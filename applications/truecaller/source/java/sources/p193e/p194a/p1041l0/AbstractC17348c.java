package p193e.p194a.p1041l0;

import android.os.CancellationSignal;
import com.truecaller.callhistory.data.FilterType;
import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1041l0.p1045v.AbstractC17389a;
import p193e.p194a.p1187r2.AbstractC19891x;
/* renamed from: e.a.l0.c */
/* loaded from: classes6-dex2jar.jar:e/a/l0/c.class */
public interface AbstractC17348c {
    /* renamed from: A */
    AbstractC19891x<Boolean> mo16251A(Set<Long> set);

    /* renamed from: B */
    void mo16250B(String str);

    /* renamed from: C */
    AbstractC19891x<Boolean> mo16249C(HistoryEvent historyEvent);

    /* renamed from: D */
    AbstractC19891x<HistoryEvent> mo16248D(Contact contact);

    /* renamed from: a */
    AbstractC19891x<AbstractC17373b> mo16247a(String str, Integer num);

    /* renamed from: b */
    AbstractC19891x<AbstractC17373b> mo16246b(Contact contact, Integer num);

    /* renamed from: c */
    AbstractC19891x<Integer> mo16245c(List<HistoryEvent> list);

    /* renamed from: d */
    void mo16244d(int i);

    /* renamed from: e */
    void mo16243e(long j);

    /* renamed from: f */
    AbstractC19891x<Boolean> mo16242f(HistoryEvent historyEvent, Contact contact);

    /* renamed from: g */
    void mo16241g(long j);

    /* renamed from: h */
    AbstractC19891x<HistoryEvent> mo16240h(String str);

    /* renamed from: i */
    void mo16239i(AbstractC17389a.C17390a c17390a);

    /* renamed from: j */
    AbstractC19891x<List<HistoryEvent>> mo16238j(FilterType filterType, Integer num, CancellationSignal cancellationSignal);

    /* renamed from: k */
    AbstractC19891x<AbstractC17373b> mo16237k(String str, long j, long j2, HistoryEventsScope historyEventsScope);

    /* renamed from: l */
    AbstractC19891x<Integer> mo16236l();

    /* renamed from: m */
    AbstractC19891x<Boolean> mo16235m(List<Long> list, List<Long> list2, HistoryEventsScope historyEventsScope);

    /* renamed from: n */
    void mo16234n(HistoryEvent historyEvent);

    /* renamed from: o */
    void mo16233o(CallRecording callRecording);

    /* renamed from: p */
    AbstractC19891x<AbstractC17373b> mo16232p();

    /* renamed from: q */
    AbstractC19891x<AbstractC17373b> mo16231q(int i);

    /* renamed from: r */
    AbstractC19891x<HistoryEvent> mo16230r(String str);

    /* renamed from: s */
    AbstractC19891x<AbstractC17373b> mo16229s();

    /* renamed from: t */
    void mo16228t();

    /* renamed from: u */
    AbstractC19891x<AbstractC17373b> mo16227u(long j);

    /* renamed from: v */
    AbstractC19891x<AbstractC17373b> mo16226v(int i);

    /* renamed from: w */
    AbstractC19891x<HistoryEvent> mo16225w(String str);

    /* renamed from: x */
    AbstractC19891x<Boolean> mo16224x(Set<Long> set);

    /* renamed from: y */
    void mo16223y();

    /* renamed from: z */
    AbstractC19891x<AbstractC17373b> mo16222z();
}
