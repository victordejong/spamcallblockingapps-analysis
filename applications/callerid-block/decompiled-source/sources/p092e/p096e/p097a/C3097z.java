package p092e.p096e.p097a;

import com.liulishuo.filedownloader.message.C2764b;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.List;
import p092e.p096e.p097a.AbstractC3005a;
import p092e.p096e.p097a.p102h0.C3062d;
/* renamed from: e.e.a.z */
/* loaded from: classes2-dex2jar.jar:e/e/a/z.class */
public class C3097z implements C2764b.AbstractC2766b {
    /* renamed from: a */
    private boolean m245a(List<AbstractC3005a.AbstractC3007b> list, MessageSnapshot messageSnapshot) {
        boolean i;
        if (list.size() > 1 && messageSnapshot.mo1841m() == -3) {
            for (AbstractC3005a.AbstractC3007b bVar : list) {
                synchronized (bVar.mo542v()) {
                    if (bVar.mo541w().mo256g(messageSnapshot)) {
                        C3062d.m414a(this, "updateMoreLikelyCompleted", new Object[0]);
                        return true;
                    }
                }
            }
        }
        for (AbstractC3005a.AbstractC3007b bVar2 : list) {
            synchronized (bVar2.mo542v()) {
                if (bVar2.mo541w().mo254m(messageSnapshot)) {
                    C3062d.m414a(this, "updateKeepFlow", new Object[0]);
                    return true;
                }
            }
        }
        if (-4 == messageSnapshot.mo1841m()) {
            for (AbstractC3005a.AbstractC3007b bVar3 : list) {
                synchronized (bVar3.mo542v()) {
                    if (bVar3.mo541w().mo258a(messageSnapshot)) {
                        C3062d.m414a(this, "updateSampleFilePathTaskRunning", new Object[0]);
                        return true;
                    }
                }
            }
        }
        if (list.size() != 1) {
            return false;
        }
        AbstractC3005a.AbstractC3007b bVar4 = list.get(0);
        synchronized (bVar4.mo542v()) {
            C3062d.m414a(this, "updateKeepAhead", new Object[0]);
            i = bVar4.mo541w().mo255i(messageSnapshot);
        }
        return i;
    }

    @Override // com.liulishuo.filedownloader.message.C2764b.AbstractC2766b
    /* renamed from: r1 */
    public void mo244r1(MessageSnapshot messageSnapshot) {
        synchronized (Integer.toString(messageSnapshot.m1856e()).intern()) {
            try {
                List<AbstractC3005a.AbstractC3007b> f = C3050h.m440e().m439f(messageSnapshot.m1856e());
                if (f.size() > 0) {
                    AbstractC3005a J = f.get(0).mo573J();
                    if (C3062d.f12682a) {
                        C3062d.m414a(this, "~~~callback %s old[%s] new[%s] %d", Integer.valueOf(messageSnapshot.m1856e()), Byte.valueOf(J.mo557e()), Byte.valueOf(messageSnapshot.mo1841m()), Integer.valueOf(f.size()));
                    }
                    if (!m245a(f, messageSnapshot)) {
                        StringBuilder sb = new StringBuilder("The event isn't consumed, id:" + messageSnapshot.m1856e() + " status:" + ((int) messageSnapshot.mo1841m()) + " task-count:" + f.size());
                        for (AbstractC3005a.AbstractC3007b bVar : f) {
                            sb.append(" | ");
                            sb.append((int) bVar.mo573J().mo557e());
                        }
                        C3062d.m410e(this, sb.toString(), new Object[0]);
                    }
                } else {
                    C3062d.m410e(this, "Receive the event %d, but there isn't any running task in the upper layer", Byte.valueOf(messageSnapshot.mo1841m()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
