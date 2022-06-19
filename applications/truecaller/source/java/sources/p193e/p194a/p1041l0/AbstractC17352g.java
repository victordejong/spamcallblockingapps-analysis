package p193e.p194a.p1041l0;

import android.os.CancellationSignal;
import com.truecaller.callhistory.data.FilterType;
import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1187r2.AbstractC19891x;
/* renamed from: e.a.l0.g */
/* loaded from: classes6-dex2jar.jar:e/a/l0/g.class */
public interface AbstractC17352g {
    /* renamed from: a */
    AbstractC19891x<AbstractC17373b> mo16220a(String str, Integer num);

    /* renamed from: b */
    AbstractC19891x<AbstractC17373b> mo16219b(Contact contact, Integer num);

    /* renamed from: c */
    AbstractC19891x<Integer> mo16218c(List<? extends HistoryEvent> list);

    /* renamed from: d */
    AbstractC19891x<HistoryEvent> mo16217d(Contact contact);

    /* renamed from: e */
    void mo16216e(long j);

    /* renamed from: f */
    boolean mo16215f(HistoryEvent historyEvent);

    /* renamed from: g */
    void mo16214g(long j);

    /* renamed from: h */
    AbstractC19891x<HistoryEvent> mo16213h(String str);

    /* renamed from: i */
    void mo16212i();

    /* renamed from: j */
    AbstractC19891x<List<HistoryEvent>> mo16211j(FilterType filterType, Integer num, CancellationSignal cancellationSignal);

    /* renamed from: k */
    AbstractC19891x<AbstractC17373b> mo16210k(String str, long j, long j2, HistoryEventsScope historyEventsScope);

    /* renamed from: l */
    AbstractC19891x<Integer> mo16209l();

    /* renamed from: m */
    AbstractC19891x<Boolean> mo16208m(List<Long> list, List<Long> list2, HistoryEventsScope historyEventsScope);

    /* renamed from: n */
    int mo16207n();

    /* renamed from: o */
    AbstractC19891x<Integer> mo16206o(String str);

    /* renamed from: p */
    List<HistoryEvent> mo16205p(FilterType filterType, Integer num, CancellationSignal cancellationSignal);

    /* renamed from: r */
    AbstractC19891x<HistoryEvent> mo16204r(String str);

    /* renamed from: s */
    AbstractC19891x<AbstractC17373b> mo16203s();

    /* renamed from: t */
    void mo16202t();

    /* renamed from: u */
    AbstractC19891x<AbstractC17373b> mo16201u(long j);

    /* renamed from: v */
    AbstractC19891x<AbstractC17373b> mo16200v(int i);

    /* renamed from: w */
    AbstractC19891x<HistoryEvent> mo16199w(String str);

    /* renamed from: x */
    boolean mo16198x(Set<Long> set);
}
