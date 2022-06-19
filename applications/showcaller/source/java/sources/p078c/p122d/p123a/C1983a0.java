package p078c.p122d.p123a;

import com.liulishuo.filedownloader.message.C9369b;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.List;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.p128i0.C2036d;
/* renamed from: c.d.a.a0 */
/* loaded from: classes2-dex2jar.jar:c/d/a/a0.class */
public class C1983a0 implements C9369b.AbstractC9371b {
    /* renamed from: a */
    private boolean m28412a(List<AbstractC1978a.AbstractC1980b> list, MessageSnapshot messageSnapshot) {
        boolean mo28114h;
        if (list.size() > 1 && messageSnapshot.mo886k() == -3) {
            for (AbstractC1978a.AbstractC1980b abstractC1980b : list) {
                synchronized (abstractC1980b.mo28405B()) {
                    if (abstractC1980b.mo28375m().mo28112m(messageSnapshot)) {
                        C2036d.m28253a(this, "updateMoreLikelyCompleted", new Object[0]);
                        return true;
                    }
                }
            }
        }
        for (AbstractC1978a.AbstractC1980b abstractC1980b2 : list) {
            synchronized (abstractC1980b2.mo28405B()) {
                if (abstractC1980b2.mo28375m().mo28111o(messageSnapshot)) {
                    C2036d.m28253a(this, "updateKeepFlow", new Object[0]);
                    return true;
                }
            }
        }
        if (-4 == messageSnapshot.mo886k()) {
            for (AbstractC1978a.AbstractC1980b abstractC1980b3 : list) {
                synchronized (abstractC1980b3.mo28405B()) {
                    if (abstractC1980b3.mo28375m().mo28116a(messageSnapshot)) {
                        C2036d.m28253a(this, "updateSampleFilePathTaskRunning", new Object[0]);
                        return true;
                    }
                }
            }
        }
        if (list.size() == 1) {
            AbstractC1978a.AbstractC1980b abstractC1980b4 = list.get(0);
            synchronized (abstractC1980b4.mo28405B()) {
                C2036d.m28253a(this, "updateKeepAhead", new Object[0]);
                mo28114h = abstractC1980b4.mo28375m().mo28114h(messageSnapshot);
            }
            return mo28114h;
        }
        return false;
    }

    @Override // com.liulishuo.filedownloader.message.C9369b.AbstractC9371b
    /* renamed from: D0 */
    public void mo792D0(MessageSnapshot messageSnapshot) {
        synchronized (Integer.toString(messageSnapshot.m901e()).intern()) {
            List<AbstractC1978a.AbstractC1980b> m28283f = C2021h.m28284e().m28283f(messageSnapshot.m901e());
            if (m28283f.size() > 0) {
                AbstractC1978a mo28398J = m28283f.get(0).mo28398J();
                if (C2036d.f7151a) {
                    C2036d.m28253a(this, "~~~callback %s old[%s] new[%s] %d", Integer.valueOf(messageSnapshot.m901e()), Byte.valueOf(mo28398J.mo28383e()), Byte.valueOf(messageSnapshot.mo886k()), Integer.valueOf(m28283f.size()));
                }
                if (!m28412a(m28283f, messageSnapshot)) {
                    StringBuilder sb = new StringBuilder("The event isn't consumed, id:" + messageSnapshot.m901e() + " status:" + ((int) messageSnapshot.mo886k()) + " task-count:" + m28283f.size());
                    for (AbstractC1978a.AbstractC1980b abstractC1980b : m28283f) {
                        sb.append(" | ");
                        sb.append((int) abstractC1980b.mo28398J().mo28383e());
                    }
                    C2036d.m28249e(this, sb.toString(), new Object[0]);
                }
            } else {
                C2036d.m28249e(this, "Receive the event %d, but there isn't any running task in the upper layer", Byte.valueOf(messageSnapshot.mo886k()));
            }
        }
    }
}
