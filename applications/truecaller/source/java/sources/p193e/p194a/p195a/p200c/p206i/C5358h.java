package p193e.p194a.p195a.p200c.p206i;

import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.a.c.i.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/h.class */
public final /* synthetic */ class C5358h extends j implements l<Integer, s> {
    public C5358h(C5349b c5349b) {
        super(1, c5349b, C5349b.class, "remove", "remove(I)V", 0);
    }

    /* renamed from: d */
    public Object m33266d(Object obj) {
        int intValue = ((Number) obj).intValue();
        C5349b c5349b = (C5349b) ((b) this).b;
        C5356f item = c5349b.f18294h.getItem(intValue);
        if (item != null) {
            c5349b.f18295i.mo11854a().mo16235m(C25225a.m3962T1(Long.valueOf(item.f18314a)), C25225a.m3962T1(Long.valueOf(item.f18315b)), c5349b.f18299m ? HistoryEventsScope.ONLY_FLASH_EVENTS : HistoryEventsScope.ONLY_CALL_EVENTS).mo11828g();
        }
        return s.a;
    }
}
