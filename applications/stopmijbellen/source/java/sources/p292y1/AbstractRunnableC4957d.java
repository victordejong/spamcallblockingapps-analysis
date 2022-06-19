package p292y1;

import androidx.work.impl.WorkDatabase;
import java.util.LinkedList;
import p186o1.AbstractC3824h;
import p186o1.AbstractC3829k;
import p186o1.EnumC3836m;
import p197p1.AbstractC4000d;
import p197p1.C3997b;
import p197p1.C3998c;
import p197p1.C4001e;
import p197p1.C4006j;
import p197p1.RunnableC4007k;
import p282x1.AbstractC4810b;
import p282x1.AbstractC4834q;
import p282x1.C4811c;
import p282x1.C4835r;
/* renamed from: y1.d */
/* loaded from: classes-dex2jar.jar:y1/d.class */
public abstract class AbstractRunnableC4957d implements Runnable {

    /* renamed from: a */
    public final C3997b f15121a = new C3997b();

    /* renamed from: a */
    public void m181a(C4006j c4006j, String str) {
        boolean z;
        WorkDatabase workDatabase = c4006j.f12584c;
        AbstractC4834q mo7475q = workDatabase.mo7475q();
        AbstractC4810b mo7480l = workDatabase.mo7480l();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (true) {
            z = true;
            if (linkedList.isEmpty()) {
                break;
            }
            String str2 = (String) linkedList.remove();
            C4835r c4835r = (C4835r) mo7475q;
            EnumC3836m m383f = c4835r.m383f(str2);
            if (m383f != EnumC3836m.SUCCEEDED && m383f != EnumC3836m.FAILED) {
                c4835r.m373p(EnumC3836m.CANCELLED, str2);
            }
            linkedList.addAll(((C4811c) mo7480l).m400a(str2));
        }
        C3998c c3998c = c4006j.f12587f;
        synchronized (c3998c.f12561k) {
            AbstractC3824h.m1774c().mo1772a(C3998c.f12550l, String.format("Processor cancelling %s", str), new Throwable[0]);
            c3998c.f12559i.add(str);
            RunnableC4007k remove = c3998c.f12556f.remove(str);
            if (remove == null) {
                z = false;
            }
            RunnableC4007k runnableC4007k = remove;
            if (remove == null) {
                runnableC4007k = c3998c.f12557g.remove(str);
            }
            C3998c.m1550c(str, runnableC4007k);
            if (z) {
                c3998c.m1545h();
            }
        }
        for (AbstractC4000d abstractC4000d : c4006j.f12586e) {
            abstractC4000d.mo1126b(str);
        }
    }

    /* renamed from: b */
    public void m180b(C4006j c4006j) {
        C4001e.m1542a(c4006j.f12583b, c4006j.f12584c, c4006j.f12586e);
    }

    /* renamed from: c */
    public abstract void mo179c();

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo179c();
            this.f15121a.m1552a(AbstractC3829k.f12320a);
        } catch (Throwable th) {
            this.f15121a.m1552a(new AbstractC3829k.AbstractC3831b.C3832a(th));
        }
    }
}
