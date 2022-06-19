package androidx.work.impl.utils;

import androidx.work.AbstractC3150n;
import androidx.work.C3163t;
import androidx.work.impl.AbstractC3048e;
import androidx.work.impl.C3045c;
import androidx.work.impl.C3049f;
import androidx.work.impl.C3068j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.WorkSpecDao;
import java.util.LinkedList;
import java.util.UUID;
/* renamed from: androidx.work.impl.utils.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a.class */
public abstract class AbstractRunnableC3100a implements Runnable {

    /* renamed from: a */
    public final C3045c f11407a = new C3045c();

    /* renamed from: a */
    public static AbstractRunnableC3100a m39337a(final String str, final C3068j c3068j) {
        return new AbstractRunnableC3100a() { // from class: androidx.work.impl.utils.a.2
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.AbstractRunnableC3100a
            /* renamed from: a */
            final void mo39333a() {
                WorkDatabase workDatabase = c3068j.f11355c;
                workDatabase.m39959e();
                try {
                    for (String str2 : workDatabase.mo39474j().getUnfinishedWorkWithTag(str)) {
                        m39338a(c3068j, str2);
                    }
                    workDatabase.m39957g();
                    workDatabase.m39958f();
                    m39339a(c3068j);
                } catch (Throwable th) {
                    workDatabase.m39958f();
                    throw th;
                }
            }
        };
    }

    /* renamed from: a */
    public static AbstractRunnableC3100a m39336a(final UUID uuid, final C3068j c3068j) {
        return new AbstractRunnableC3100a() { // from class: androidx.work.impl.utils.a.1
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.AbstractRunnableC3100a
            /* renamed from: a */
            final void mo39333a() {
                WorkDatabase workDatabase = c3068j.f11355c;
                workDatabase.m39959e();
                try {
                    m39338a(c3068j, uuid.toString());
                    workDatabase.m39957g();
                    workDatabase.m39958f();
                    m39339a(c3068j);
                } catch (Throwable th) {
                    workDatabase.m39958f();
                    throw th;
                }
            }
        };
    }

    /* renamed from: a */
    static void m39339a(C3068j c3068j) {
        C3049f.m39383a(c3068j.f11354b, c3068j.f11355c, c3068j.f11357e);
    }

    /* renamed from: a */
    static void m39338a(C3068j c3068j, String str) {
        WorkDatabase workDatabase = c3068j.f11355c;
        WorkSpecDao mo39474j = workDatabase.mo39474j();
        DependencyDao mo39473k = workDatabase.mo39473k();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            C3163t.EnumC3164a state = mo39474j.getState(str2);
            if (state != C3163t.EnumC3164a.SUCCEEDED && state != C3163t.EnumC3164a.FAILED) {
                mo39474j.setState(C3163t.EnumC3164a.CANCELLED, str2);
            }
            linkedList.addAll(mo39473k.getDependentWorkIds(str2));
        }
        c3068j.f11358f.m39392c(str);
        for (AbstractC3048e abstractC3048e : c3068j.f11357e) {
            abstractC3048e.mo39387a(str);
        }
    }

    /* renamed from: b */
    public static AbstractRunnableC3100a m39335b(final C3068j c3068j) {
        return new AbstractRunnableC3100a() { // from class: androidx.work.impl.utils.a.4
            @Override // androidx.work.impl.utils.AbstractRunnableC3100a
            /* renamed from: a */
            final void mo39333a() {
                WorkDatabase workDatabase = c3068j.f11355c;
                workDatabase.m39959e();
                try {
                    for (String str : workDatabase.mo39474j().getAllUnfinishedWork()) {
                        m39338a(c3068j, str);
                    }
                    C3124e c3124e = new C3124e(c3068j.f11355c);
                    c3124e.f11452a.mo39468p().insertPreference(new Preference("last_cancel_all_time_ms", System.currentTimeMillis()));
                    workDatabase.m39957g();
                } finally {
                    workDatabase.m39958f();
                }
            }
        };
    }

    /* renamed from: b */
    public static AbstractRunnableC3100a m39334b(final String str, final C3068j c3068j) {
        return new AbstractRunnableC3100a() { // from class: androidx.work.impl.utils.a.3
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.AbstractRunnableC3100a
            /* renamed from: a */
            final void mo39333a() {
                WorkDatabase workDatabase = c3068j.f11355c;
                workDatabase.m39959e();
                try {
                    for (String str2 : workDatabase.mo39474j().getUnfinishedWorkWithName(str)) {
                        m39338a(c3068j, str2);
                    }
                    workDatabase.m39957g();
                    workDatabase.m39958f();
                    if (!r6) {
                        return;
                    }
                    m39339a(c3068j);
                } catch (Throwable th) {
                    workDatabase.m39958f();
                    throw th;
                }
            }
        };
    }

    /* renamed from: a */
    abstract void mo39333a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo39333a();
            this.f11407a.m39400a(AbstractC3150n.f11510a);
        } catch (Throwable th) {
            this.f11407a.m39400a(new AbstractC3150n.AbstractC3152a.C3153a(th));
        }
    }
}
