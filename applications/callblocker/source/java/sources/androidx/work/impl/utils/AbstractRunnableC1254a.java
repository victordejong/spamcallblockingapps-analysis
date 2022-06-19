package androidx.work.impl.utils;

import androidx.work.AbstractC1296n;
import androidx.work.C1308s;
import androidx.work.impl.AbstractC1228d;
import androidx.work.impl.C1167b;
import androidx.work.impl.C1229e;
import androidx.work.impl.C1249i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p055b.AbstractC1169b;
import androidx.work.impl.p055b.AbstractC1194q;
import java.util.LinkedList;
import java.util.UUID;
/* renamed from: androidx.work.impl.utils.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a.class */
public abstract class AbstractRunnableC1254a implements Runnable {

    /* renamed from: a */
    private final C1167b f4244a = new C1167b();

    /* renamed from: a */
    public static AbstractRunnableC1254a m17615a(final String str, final C1249i c1249i, final boolean z) {
        return new AbstractRunnableC1254a() { // from class: androidx.work.impl.utils.a.2
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.AbstractRunnableC1254a
            /* renamed from: b */
            void mo17613b() {
                WorkDatabase m17652c = c1249i.m17652c();
                m17652c.m18291g();
                try {
                    for (String str2 : m17652c.mo17885o().mo17785h(str)) {
                        m17616a(c1249i, str2);
                    }
                    m17652c.m18288j();
                    m17652c.m18290h();
                    if (!z) {
                        return;
                    }
                    m17617a(c1249i);
                } catch (Throwable th) {
                    m17652c.m18290h();
                    throw th;
                }
            }
        };
    }

    /* renamed from: a */
    public static AbstractRunnableC1254a m17614a(final UUID uuid, final C1249i c1249i) {
        return new AbstractRunnableC1254a() { // from class: androidx.work.impl.utils.a.1
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.AbstractRunnableC1254a
            /* renamed from: b */
            void mo17613b() {
                WorkDatabase m17652c = c1249i.m17652c();
                m17652c.m18291g();
                try {
                    m17616a(c1249i, uuid.toString());
                    m17652c.m18288j();
                    m17652c.m18290h();
                    m17617a(c1249i);
                } catch (Throwable th) {
                    m17652c.m18290h();
                    throw th;
                }
            }
        };
    }

    /* renamed from: a */
    private void m17618a(WorkDatabase workDatabase, String str) {
        AbstractC1194q mo17885o = workDatabase.mo17885o();
        AbstractC1169b mo17884p = workDatabase.mo17884p();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            C1308s.EnumC1309a mo17787f = mo17885o.mo17787f(str2);
            if (mo17787f != C1308s.EnumC1309a.SUCCEEDED && mo17787f != C1308s.EnumC1309a.FAILED) {
                mo17885o.mo17799a(C1308s.EnumC1309a.CANCELLED, str2);
            }
            linkedList.addAll(mo17884p.mo17823b(str2));
        }
    }

    /* renamed from: a */
    public AbstractC1296n m17619a() {
        return this.f4244a;
    }

    /* renamed from: a */
    void m17617a(C1249i c1249i) {
        C1229e.m17700a(c1249i.m17650d(), c1249i.m17652c(), c1249i.m17649e());
    }

    /* renamed from: a */
    void m17616a(C1249i c1249i, String str) {
        m17618a(c1249i.m17652c(), str);
        c1249i.m17648f().m17708d(str);
        for (AbstractC1228d abstractC1228d : c1249i.m17649e()) {
            abstractC1228d.mo17704a(str);
        }
    }

    /* renamed from: b */
    abstract void mo17613b();

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo17613b();
            this.f4244a.m17826a(AbstractC1296n.f4338a);
        } catch (Throwable th) {
            this.f4244a.m17826a(new AbstractC1296n.AbstractC1298a.C1299a(th));
        }
    }
}
