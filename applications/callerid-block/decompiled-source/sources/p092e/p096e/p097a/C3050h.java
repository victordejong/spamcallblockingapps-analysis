package p092e.p096e.p097a;

import com.liulishuo.filedownloader.message.C2767c;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p092e.p096e.p097a.AbstractC3005a;
import p092e.p096e.p097a.p102h0.C3062d;
/* renamed from: e.e.a.h */
/* loaded from: classes2-dex2jar.jar:e/e/a/h.class */
public class C3050h {

    /* renamed from: a */
    private final ArrayList<AbstractC3005a.AbstractC3007b> f12676a;

    /* renamed from: e.e.a.h$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/h$b.class */
    private static final class C3052b {

        /* renamed from: a */
        private static final C3050h f12677a = new C3050h();
    }

    private C3050h() {
        this.f12676a = new ArrayList<>();
    }

    /* renamed from: e */
    public static C3050h m440e() {
        return C3052b.f12677a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m444a(AbstractC3005a.AbstractC3007b bVar) {
        if (!bVar.mo573J().mo581A()) {
            bVar.mo549o();
        }
        if (bVar.mo541w().mo257f().mo288b()) {
            m443b(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m443b(AbstractC3005a.AbstractC3007b bVar) {
        if (!bVar.mo544t()) {
            synchronized (this.f12676a) {
                if (this.f12676a.contains(bVar)) {
                    C3062d.m406i(this, "already has %s", bVar);
                } else {
                    bVar.mo570M();
                    this.f12676a.add(bVar);
                    if (C3062d.f12682a) {
                        C3062d.m407h(this, "add list in all %s %d %d", bVar, Byte.valueOf(bVar.mo573J().mo557e()), Integer.valueOf(this.f12676a.size()));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m442c(int i) {
        int i2;
        synchronized (this.f12676a) {
            try {
                Iterator<AbstractC3005a.AbstractC3007b> it = this.f12676a.iterator();
                i2 = 0;
                while (it.hasNext()) {
                    if (it.next().mo556f(i)) {
                        i2++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m441d(List<AbstractC3005a.AbstractC3007b> list) {
        synchronized (this.f12676a) {
            try {
                Iterator<AbstractC3005a.AbstractC3007b> it = this.f12676a.iterator();
                while (it.hasNext()) {
                    AbstractC3005a.AbstractC3007b next = it.next();
                    if (!list.contains(next)) {
                        list.add(next);
                    }
                }
                this.f12676a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public List<AbstractC3005a.AbstractC3007b> m439f(int i) {
        byte e;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f12676a) {
            try {
                Iterator<AbstractC3005a.AbstractC3007b> it = this.f12676a.iterator();
                while (it.hasNext()) {
                    AbstractC3005a.AbstractC3007b next = it.next();
                    if (next.mo556f(i) && !next.mo576G() && (e = next.mo573J().mo557e()) != 0 && e != 10) {
                        arrayList.add(next);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public boolean m438g(AbstractC3005a.AbstractC3007b bVar) {
        return this.f12676a.isEmpty() || !this.f12676a.contains(bVar);
    }

    /* renamed from: h */
    public boolean m437h(AbstractC3005a.AbstractC3007b bVar, MessageSnapshot messageSnapshot) {
        boolean remove;
        byte m = messageSnapshot.mo1841m();
        synchronized (this.f12676a) {
            remove = this.f12676a.remove(bVar);
            if (remove && this.f12676a.size() == 0 && C3075m.m321b().mo271x0()) {
                C3085q.m300d().m295i(true);
            }
        }
        if (C3062d.f12682a && this.f12676a.size() == 0) {
            C3062d.m407h(this, "remove %s left %d %d", bVar, Byte.valueOf(m), Integer.valueOf(this.f12676a.size()));
        }
        if (remove) {
            AbstractC3088s f = bVar.mo541w().mo257f();
            if (m == -4) {
                f.mo277m(messageSnapshot);
            } else if (m == -3) {
                f.mo286d(C2767c.m1832e(messageSnapshot));
            } else if (m == -2) {
                f.mo282h(messageSnapshot);
            } else if (m == -1) {
                f.mo281i(messageSnapshot);
            }
        } else {
            C3062d.m413b(this, "remove error, not exist: %s %d", bVar, Byte.valueOf(m));
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public int m436i() {
        return this.f12676a.size();
    }
}
