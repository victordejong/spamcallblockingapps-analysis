package androidx.work.impl.utils;

import androidx.work.AbstractC0556h;
import androidx.work.WorkInfo$State;
import androidx.work.impl.AbstractC0570d;
import androidx.work.impl.C0571e;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.b;
import androidx.work.impl.h;
import androidx.work.impl.p009l.AbstractC0584b;
import androidx.work.impl.p009l.AbstractC0591k;
import java.util.LinkedList;
/* renamed from: androidx.work.impl.utils.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a.class */
public abstract class AbstractRunnableC0596a implements Runnable {

    /* renamed from: b */
    private final b f3113b = new b();

    /* renamed from: b */
    public static AbstractRunnableC0596a m11628b(String str, h hVar, boolean z) {
        return new b(hVar, str, z);
    }

    /* renamed from: c */
    public static AbstractRunnableC0596a m11627c(String str, h hVar) {
        return new a(hVar, str);
    }

    /* renamed from: e */
    private void m11625e(WorkDatabase workDatabase, String str) {
        AbstractC0591k y = workDatabase.y();
        AbstractC0584b s = workDatabase.s();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            WorkInfo$State g = y.m11658g(str2);
            if (!(g == WorkInfo$State.SUCCEEDED || g == WorkInfo$State.FAILED)) {
                y.m11664a(WorkInfo$State.CANCELLED, str2);
            }
            linkedList.addAll(s.m11673d(str2));
        }
    }

    /* renamed from: a */
    void m11629a(h hVar, String str) {
        m11625e(hVar.n(), str);
        hVar.l().h(str);
        for (AbstractC0570d dVar : hVar.m()) {
            dVar.m11719b(str);
        }
    }

    /* renamed from: d */
    public AbstractC0556h m11626d() {
        return this.f3113b;
    }

    /* renamed from: f */
    void m11624f(h hVar) {
        C0571e.m11716b(hVar.h(), hVar.n(), hVar.m());
    }

    /* renamed from: g */
    abstract void m11623g();

    @Override // java.lang.Runnable
    public void run() {
        try {
            m11623g();
            this.f3113b.a(AbstractC0556h.f2989a);
        } catch (Throwable th) {
            this.f3113b.a(new AbstractC0556h.AbstractC0558b.a(th));
        }
    }
}
