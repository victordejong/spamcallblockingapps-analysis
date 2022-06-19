package androidx.work.impl;

import android.content.Context;
import androidx.room.C1019h;
import androidx.room.RoomDatabase;
import androidx.work.impl.C1278h;
import androidx.work.impl.p018n.AbstractC1322b;
import androidx.work.impl.p018n.AbstractC1326e;
import androidx.work.impl.p018n.AbstractC1330h;
import androidx.work.impl.p018n.AbstractC1335k;
import androidx.work.impl.p018n.AbstractC1339n;
import androidx.work.impl.p018n.AbstractC1347q;
import androidx.work.impl.p018n.AbstractC1359t;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p020b.p070r.p071a.AbstractC1772b;
import p020b.p070r.p071a.AbstractC1773c;
import p020b.p070r.p071a.p072g.C1787c;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase.class */
public abstract class WorkDatabase extends RoomDatabase {

    /* renamed from: l */
    private static final long f5304l = TimeUnit.DAYS.toMillis(1);

    /* renamed from: androidx.work.impl.WorkDatabase$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase$a.class */
    public class C1246a implements AbstractC1773c.AbstractC1777c {

        /* renamed from: a */
        final /* synthetic */ Context f5305a;

        C1246a(Context context) {
            this.f5305a = context;
        }

        @Override // p020b.p070r.p071a.AbstractC1773c.AbstractC1777c
        /* renamed from: a */
        public AbstractC1773c mo28902a(AbstractC1773c.C1775b c1775b) {
            AbstractC1773c.C1775b.C1776a m28926a = AbstractC1773c.C1775b.m28926a(this.f5305a);
            m28926a.m28923c(c1775b.f6611b).m28924b(c1775b.f6612c).m28922d(true);
            return new C1787c().mo28902a(m28926a.m28925a());
        }
    }

    /* renamed from: androidx.work.impl.WorkDatabase$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase$b.class */
    public class C1247b extends RoomDatabase.AbstractC0995b {
        C1247b() {
        }

        @Override // androidx.room.RoomDatabase.AbstractC0995b
        /* renamed from: c */
        public void mo30529c(AbstractC1772b abstractC1772b) {
            super.mo30529c(abstractC1772b);
            abstractC1772b.mo28912h();
            try {
                abstractC1772b.mo28910n(WorkDatabase.m30530w());
                abstractC1772b.mo28919G();
            } finally {
                abstractC1772b.mo28916O();
            }
        }
    }

    /* renamed from: s */
    public static WorkDatabase m30533s(Context context, Executor executor, boolean z) {
        RoomDatabase.C0994a c0994a;
        if (z) {
            c0994a = C1019h.m31233c(context, WorkDatabase.class).m31276c();
        } else {
            c0994a = C1019h.m31235a(context, WorkDatabase.class, C1288i.m30401d());
            c0994a.m31273f(new C1246a(context));
        }
        return (WorkDatabase) c0994a.m31272g(executor).m31278a(m30532u()).m31277b(C1278h.f5432a).m31277b(new C1278h.C1286h(context, 2, 3)).m31277b(C1278h.f5433b).m31277b(C1278h.f5434c).m31277b(new C1278h.C1286h(context, 5, 6)).m31277b(C1278h.f5435d).m31277b(C1278h.f5436e).m31277b(C1278h.f5437f).m31277b(new C1278h.C1287i(context)).m31277b(new C1278h.C1286h(context, 10, 11)).m31277b(C1278h.f5438g).m31274e().m31275d();
    }

    /* renamed from: u */
    static RoomDatabase.AbstractC0995b m30532u() {
        return new C1247b();
    }

    /* renamed from: v */
    static long m30531v() {
        return System.currentTimeMillis() - f5304l;
    }

    /* renamed from: w */
    static String m30530w() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + m30531v() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    /* renamed from: A */
    public abstract AbstractC1339n mo30528A();

    /* renamed from: B */
    public abstract AbstractC1347q mo30527B();

    /* renamed from: C */
    public abstract AbstractC1359t mo30526C();

    /* renamed from: t */
    public abstract AbstractC1322b mo30512t();

    /* renamed from: x */
    public abstract AbstractC1326e mo30511x();

    /* renamed from: y */
    public abstract AbstractC1330h mo30510y();

    /* renamed from: z */
    public abstract AbstractC1335k mo30509z();
}
