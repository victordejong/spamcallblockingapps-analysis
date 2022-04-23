package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.c;
import androidx.work.impl.e;
import androidx.work.impl.f;
import androidx.work.impl.j;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.n;
import androidx.work.t;
import java.util.LinkedList;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a.class */
public abstract class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final c f6138a = new c();

    public static a a(final String str, final j jVar) {
        return new a() { // from class: androidx.work.impl.utils.a.2
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.a
            final void a() {
                WorkDatabase workDatabase = j.this.f6118c;
                workDatabase.e();
                try {
                    for (String str2 : workDatabase.j().getUnfinishedWorkWithTag(str)) {
                        a(j.this, str2);
                    }
                    workDatabase.g();
                    workDatabase.f();
                    a(j.this);
                } catch (Throwable th) {
                    workDatabase.f();
                    throw th;
                }
            }
        };
    }

    public static a a(final UUID uuid, final j jVar) {
        return new a() { // from class: androidx.work.impl.utils.a.1
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.a
            final void a() {
                WorkDatabase workDatabase = j.this.f6118c;
                workDatabase.e();
                try {
                    a(j.this, uuid.toString());
                    workDatabase.g();
                    workDatabase.f();
                    a(j.this);
                } catch (Throwable th) {
                    workDatabase.f();
                    throw th;
                }
            }
        };
    }

    static void a(j jVar) {
        f.a(jVar.f6117b, jVar.f6118c, jVar.e);
    }

    static void a(j jVar, String str) {
        WorkDatabase workDatabase = jVar.f6118c;
        WorkSpecDao j = workDatabase.j();
        DependencyDao k = workDatabase.k();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            t.a state = j.getState(str2);
            if (!(state == t.a.SUCCEEDED || state == t.a.FAILED)) {
                j.setState(t.a.CANCELLED, str2);
            }
            linkedList.addAll(k.getDependentWorkIds(str2));
        }
        jVar.f.c(str);
        for (e eVar : jVar.e) {
            eVar.a(str);
        }
    }

    public static a b(final j jVar) {
        return new a() { // from class: androidx.work.impl.utils.a.4
            @Override // androidx.work.impl.utils.a
            final void a() {
                WorkDatabase workDatabase = j.this.f6118c;
                workDatabase.e();
                try {
                    for (String str : workDatabase.j().getAllUnfinishedWork()) {
                        a(j.this, str);
                    }
                    e eVar = new e(j.this.f6118c);
                    eVar.f6179a.p().insertPreference(new Preference("last_cancel_all_time_ms", System.currentTimeMillis()));
                    workDatabase.g();
                } finally {
                    workDatabase.f();
                }
            }
        };
    }

    public static a b(final String str, final j jVar) {
        return new a() { // from class: androidx.work.impl.utils.a.3
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.a
            final void a() {
                WorkDatabase workDatabase = j.this.f6118c;
                workDatabase.e();
                try {
                    for (String str2 : workDatabase.j().getUnfinishedWorkWithName(str)) {
                        a(j.this, str2);
                    }
                    workDatabase.g();
                    workDatabase.f();
                    if (r6) {
                        a(j.this);
                    }
                } catch (Throwable th) {
                    workDatabase.f();
                    throw th;
                }
            }
        };
    }

    abstract void a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            a();
            this.f6138a.a(n.f6232a);
        } catch (Throwable th) {
            this.f6138a.a(new n.a.C0123a(th));
        }
    }
}
