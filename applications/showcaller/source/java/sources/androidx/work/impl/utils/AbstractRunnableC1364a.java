package androidx.work.impl.utils;

import androidx.work.AbstractC1408l;
import androidx.work.WorkInfo$State;
import androidx.work.impl.AbstractC1268e;
import androidx.work.impl.C1265c;
import androidx.work.impl.C1269f;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p018n.AbstractC1322b;
import androidx.work.impl.p018n.AbstractC1347q;
import java.util.LinkedList;
import java.util.UUID;
/* renamed from: androidx.work.impl.utils.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a.class */
public abstract class AbstractRunnableC1364a implements Runnable {

    /* renamed from: d */
    private final C1265c f5632d = new C1265c();

    /* renamed from: androidx.work.impl.utils.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a$a.class */
    public class C1365a extends AbstractRunnableC1364a {

        /* renamed from: e */
        final /* synthetic */ C1289j f5633e;

        /* renamed from: f */
        final /* synthetic */ UUID f5634f;

        C1365a(C1289j c1289j, UUID uuid) {
            this.f5633e = c1289j;
            this.f5634f = uuid;
        }

        /* JADX WARN: Finally extract failed */
        @Override // androidx.work.impl.utils.AbstractRunnableC1364a
        /* renamed from: h */
        void mo30229h() {
            WorkDatabase m30388o = this.f5633e.m30388o();
            m30388o.m31293c();
            try {
                m30236a(this.f5633e, this.f5634f.toString());
                m30388o.m31280r();
                m30388o.m31291g();
                m30230g(this.f5633e);
            } catch (Throwable th) {
                m30388o.m31291g();
                throw th;
            }
        }
    }

    /* renamed from: androidx.work.impl.utils.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a$b.class */
    public class C1366b extends AbstractRunnableC1364a {

        /* renamed from: e */
        final /* synthetic */ C1289j f5635e;

        /* renamed from: f */
        final /* synthetic */ String f5636f;

        C1366b(C1289j c1289j, String str) {
            this.f5635e = c1289j;
            this.f5636f = str;
        }

        /* JADX WARN: Finally extract failed */
        @Override // androidx.work.impl.utils.AbstractRunnableC1364a
        /* renamed from: h */
        void mo30229h() {
            WorkDatabase m30388o = this.f5635e.m30388o();
            m30388o.m31293c();
            try {
                for (String str : m30388o.mo30527B().mo30267p(this.f5636f)) {
                    m30236a(this.f5635e, str);
                }
                m30388o.m31280r();
                m30388o.m31291g();
                m30230g(this.f5635e);
            } catch (Throwable th) {
                m30388o.m31291g();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.utils.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a$c.class */
    public class C1367c extends AbstractRunnableC1364a {

        /* renamed from: e */
        final /* synthetic */ C1289j f5637e;

        /* renamed from: f */
        final /* synthetic */ String f5638f;

        /* renamed from: g */
        final /* synthetic */ boolean f5639g;

        C1367c(C1289j c1289j, String str, boolean z) {
            this.f5637e = c1289j;
            this.f5638f = str;
            this.f5639g = z;
        }

        /* JADX WARN: Finally extract failed */
        @Override // androidx.work.impl.utils.AbstractRunnableC1364a
        /* renamed from: h */
        void mo30229h() {
            WorkDatabase m30388o = this.f5637e.m30388o();
            m30388o.m31293c();
            try {
                for (String str : m30388o.mo30527B().mo30271l(this.f5638f)) {
                    m30236a(this.f5637e, str);
                }
                m30388o.m31280r();
                m30388o.m31291g();
                if (!this.f5639g) {
                    return;
                }
                m30230g(this.f5637e);
            } catch (Throwable th) {
                m30388o.m31291g();
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static AbstractRunnableC1364a m30235b(UUID uuid, C1289j c1289j) {
        return new C1365a(c1289j, uuid);
    }

    /* renamed from: c */
    public static AbstractRunnableC1364a m30234c(String str, C1289j c1289j, boolean z) {
        return new C1367c(c1289j, str, z);
    }

    /* renamed from: d */
    public static AbstractRunnableC1364a m30233d(String str, C1289j c1289j) {
        return new C1366b(c1289j, str);
    }

    /* renamed from: f */
    private void m30231f(WorkDatabase workDatabase, String str) {
        AbstractC1347q mo30527B = workDatabase.mo30527B();
        AbstractC1322b mo30512t = workDatabase.mo30512t();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            WorkInfo$State mo30270m = mo30527B.mo30270m(str2);
            if (mo30270m != WorkInfo$State.SUCCEEDED && mo30270m != WorkInfo$State.FAILED) {
                mo30527B.mo30281b(WorkInfo$State.CANCELLED, str2);
            }
            linkedList.addAll(mo30512t.mo30305b(str2));
        }
    }

    /* renamed from: a */
    void m30236a(C1289j c1289j, String str) {
        m30231f(c1289j.m30388o(), str);
        c1289j.m30390m().m30440l(str);
        for (AbstractC1268e abstractC1268e : c1289j.m30389n()) {
            abstractC1268e.mo30355e(str);
        }
    }

    /* renamed from: e */
    public AbstractC1408l m30232e() {
        return this.f5632d;
    }

    /* renamed from: g */
    void m30230g(C1289j c1289j) {
        C1269f.m30435b(c1289j.m30394i(), c1289j.m30388o(), c1289j.m30389n());
    }

    /* renamed from: h */
    abstract void mo30229h();

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo30229h();
            this.f5632d.m30449a(AbstractC1408l.f5745a);
        } catch (Throwable th) {
            this.f5632d.m30449a(new AbstractC1408l.AbstractC1410b.C1411a(th));
        }
    }
}
