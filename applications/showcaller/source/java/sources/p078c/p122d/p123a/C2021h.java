package p078c.p122d.p123a;

import com.liulishuo.filedownloader.message.C9372c;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.p128i0.C2036d;
/* renamed from: c.d.a.h */
/* loaded from: classes2-dex2jar.jar:c/d/a/h.class */
public class C2021h {

    /* renamed from: a */
    private final ArrayList<AbstractC1978a.AbstractC1980b> f7141a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c.d.a.h$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/h$b.class */
    public static final class C2023b {

        /* renamed from: a */
        private static final C2021h f7142a = new C2021h();
    }

    private C2021h() {
        this.f7141a = new ArrayList<>();
    }

    /* renamed from: e */
    public static C2021h m28284e() {
        return C2023b.f7142a;
    }

    /* renamed from: a */
    public void m28288a(AbstractC1978a.AbstractC1980b abstractC1980b) {
        if (!abstractC1980b.mo28398J().mo28372p()) {
            abstractC1980b.mo28365y();
        }
        if (abstractC1980b.mo28375m().mo28115f().mo28136i()) {
            m28287b(abstractC1980b);
        }
    }

    /* renamed from: b */
    public void m28287b(AbstractC1978a.AbstractC1980b abstractC1980b) {
        if (abstractC1980b.mo28406A()) {
            return;
        }
        synchronized (this.f7141a) {
            if (this.f7141a.contains(abstractC1980b)) {
                C2036d.m28245i(this, "already has %s", abstractC1980b);
            } else {
                abstractC1980b.mo28396L();
                this.f7141a.add(abstractC1980b);
                if (C2036d.f7151a) {
                    C2036d.m28246h(this, "add list in all %s %d %d", abstractC1980b, Byte.valueOf(abstractC1980b.mo28398J().mo28383e()), Integer.valueOf(this.f7141a.size()));
                }
            }
        }
    }

    /* renamed from: c */
    public int m28286c(int i) {
        int i2;
        synchronized (this.f7141a) {
            Iterator<AbstractC1978a.AbstractC1980b> it = this.f7141a.iterator();
            i2 = 0;
            while (it.hasNext()) {
                if (it.next().mo28369t(i)) {
                    i2++;
                }
            }
        }
        return i2;
    }

    /* renamed from: d */
    public void m28285d(List<AbstractC1978a.AbstractC1980b> list) {
        synchronized (this.f7141a) {
            Iterator<AbstractC1978a.AbstractC1980b> it = this.f7141a.iterator();
            while (it.hasNext()) {
                AbstractC1978a.AbstractC1980b next = it.next();
                if (!list.contains(next)) {
                    list.add(next);
                }
            }
            this.f7141a.clear();
        }
    }

    /* renamed from: f */
    public List<AbstractC1978a.AbstractC1980b> m28283f(int i) {
        byte mo28383e;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f7141a) {
            Iterator<AbstractC1978a.AbstractC1980b> it = this.f7141a.iterator();
            while (it.hasNext()) {
                AbstractC1978a.AbstractC1980b next = it.next();
                if (next.mo28369t(i) && !next.mo28401G() && (mo28383e = next.mo28398J().mo28383e()) != 0 && mo28383e != 10) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public boolean m28282g(AbstractC1978a.AbstractC1980b abstractC1980b) {
        return this.f7141a.isEmpty() || !this.f7141a.contains(abstractC1980b);
    }

    /* renamed from: h */
    public boolean m28281h(AbstractC1978a.AbstractC1980b abstractC1980b, MessageSnapshot messageSnapshot) {
        boolean remove;
        byte mo886k = messageSnapshot.mo886k();
        synchronized (this.f7141a) {
            remove = this.f7141a.remove(abstractC1980b);
            if (remove && this.f7141a.size() == 0 && C2048m.m28171c().mo817C0()) {
                C2058q.m28155d().m28150i(true);
            }
        }
        if (C2036d.f7151a && this.f7141a.size() == 0) {
            C2036d.m28246h(this, "remove %s left %d %d", abstractC1980b, Byte.valueOf(mo886k), Integer.valueOf(this.f7141a.size()));
        }
        if (remove) {
            AbstractC2062t mo28115f = abstractC1980b.mo28375m().mo28115f();
            if (mo886k == -4) {
                mo28115f.mo28138g(messageSnapshot);
            } else if (mo886k == -3) {
                mo28115f.mo28134k(C9372c.m877e(messageSnapshot));
            } else if (mo886k == -2) {
                mo28115f.mo28142c(messageSnapshot);
            } else if (mo886k == -1) {
                mo28115f.mo28141d(messageSnapshot);
            }
        } else {
            C2036d.m28252b(this, "remove error, not exist: %s %d", abstractC1980b, Byte.valueOf(mo886k));
        }
        return remove;
    }

    /* renamed from: i */
    public int m28280i() {
        return this.f7141a.size();
    }
}
