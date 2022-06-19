package p193e.p194a.p1392y2.p1393p;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.background_work.WorkActionPeriod;
import com.truecaller.background_work.persistence.WorkActionRetryResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1392y2.C21761g;
import s1.z.c.l;
/* renamed from: e.a.y2.p.d */
/* loaded from: classes5-dex2jar.jar:e/a/y2/p/d.class */
public final class C21777d extends AbstractC21776c {

    /* renamed from: a */
    public final AbstractC25677q f60614a;

    /* renamed from: b */
    public final AbstractC25663k<WorkActionRetryResult> f60615b;

    /* renamed from: c */
    public final C21775b f60616c = new C21775b();

    /* renamed from: d */
    public final AbstractC25646c0 f60617d;

    /* renamed from: e.a.y2.p.d$a */
    /* loaded from: classes5-dex2jar.jar:e/a/y2/p/d$a.class */
    public class C21778a extends AbstractC25663k<WorkActionRetryResult> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21778a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C21777d.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, WorkActionRetryResult workActionRetryResult) {
            WorkActionRetryResult workActionRetryResult2 = workActionRetryResult;
            if (workActionRetryResult2.getActionName() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, workActionRetryResult2.getActionName());
            }
            String m9094a = C21777d.this.f60616c.m9094a(workActionRetryResult2.getPeriod());
            if (m9094a == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, m9094a);
            }
            abstractC26154f.mo2650l0(3, workActionRetryResult2.getInternetRequired() ? 1L : 0L);
            abstractC26154f.mo2650l0(4, workActionRetryResult2.getRetriedTimes());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR IGNORE INTO `WorkActionRetryResult` (`actionName`,`period`,`internetRequired`,`retriedTimes`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.y2.p.d$b */
    /* loaded from: classes5-dex2jar.jar:e/a/y2/p/d$b.class */
    public class C21779b extends AbstractC25646c0 {
        public C21779b(C21777d c21777d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM WorkActionRetryResult WHERE period = ? AND internetRequired = ?";
        }
    }

    public C21777d(AbstractC25677q abstractC25677q) {
        this.f60614a = abstractC25677q;
        this.f60615b = new C21778a(abstractC25677q);
        this.f60617d = new C21779b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1392y2.p1393p.AbstractC21776c
    /* renamed from: a */
    public void mo9093a(List<String> list, WorkActionPeriod workActionPeriod, boolean z) {
        this.f60614a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM WorkActionRetryResult WHERE period = ");
        sb.append("?");
        sb.append(" AND internetRequired = ");
        sb.append("?");
        sb.append(" AND actionName NOT IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f60614a.compileStatement(sb.toString());
        String m9094a = this.f60616c.m9094a(workActionPeriod);
        if (m9094a == null) {
            compileStatement.mo2648y0(1);
        } else {
            compileStatement.mo2651f0(1, m9094a);
        }
        compileStatement.mo2650l0(2, z ? 1L : 0L);
        int i = 3;
        for (String str : list) {
            if (str == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2651f0(i, str);
            }
            i++;
        }
        this.f60614a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f60614a.setTransactionSuccessful();
        } finally {
            this.f60614a.endTransaction();
        }
    }

    @Override // p193e.p194a.p1392y2.p1393p.AbstractC21776c
    /* renamed from: b */
    public void mo9092b(WorkActionPeriod workActionPeriod, boolean z) {
        this.f60614a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f60617d.acquire();
        String m9094a = this.f60616c.m9094a(workActionPeriod);
        if (m9094a == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, m9094a);
        }
        acquire.mo2650l0(2, z ? 1L : 0L);
        this.f60614a.beginTransaction();
        try {
            acquire.m2673A();
            this.f60614a.setTransactionSuccessful();
        } finally {
            this.f60614a.endTransaction();
            this.f60617d.release(acquire);
        }
    }

    @Override // p193e.p194a.p1392y2.p1393p.AbstractC21776c
    /* renamed from: c */
    public List<WorkActionRetryResult> mo9091c(WorkActionPeriod workActionPeriod, boolean z, Collection<String> collection) {
        StringBuilder m8688M = C22128a.m8688M("SELECT * FROM WorkActionRetryResult WHERE period = ", "?", " AND internetRequired = ", "?", " AND actionName IN (");
        int size = collection.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(")");
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), size + 2);
        String m9094a = this.f60616c.m9094a(workActionPeriod);
        if (m9094a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, m9094a);
        }
        m3059j.mo2650l0(2, z ? 1L : 0L);
        int i = 3;
        for (String str : collection) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        this.f60614a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f60614a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "actionName");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "period");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "internetRequired");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "retriedTimes");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                Objects.requireNonNull(this.f60616c);
                l.e(string2, AnalyticsConstants.NAME);
                arrayList.add(new WorkActionRetryResult(string, WorkActionPeriod.valueOf(string2), m3090b.getInt(m43237g03) != 0, m3090b.getInt(m43237g04)));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p1392y2.p1393p.AbstractC21776c
    /* renamed from: d */
    public void mo9090d(WorkActionPeriod workActionPeriod, boolean z, List<String> list) {
        this.f60614a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE WorkActionRetryResult SET retriedTimes = retriedTimes + 1 ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("            WHERE period = ");
        sb.append("?");
        sb.append(" AND internetRequired = ");
        sb.append("?");
        sb.append(" AND actionName IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f60614a.compileStatement(sb.toString());
        String m9094a = this.f60616c.m9094a(workActionPeriod);
        if (m9094a == null) {
            compileStatement.mo2648y0(1);
        } else {
            compileStatement.mo2651f0(1, m9094a);
        }
        compileStatement.mo2650l0(2, z ? 1L : 0L);
        int i = 3;
        for (String str : list) {
            if (str == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2651f0(i, str);
            }
            i++;
        }
        this.f60614a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f60614a.setTransactionSuccessful();
        } finally {
            this.f60614a.endTransaction();
        }
    }

    @Override // p193e.p194a.p1392y2.p1393p.AbstractC21776c
    /* renamed from: e */
    public void mo9089e(List<WorkActionRetryResult> list) {
        this.f60614a.assertNotSuspendingTransaction();
        this.f60614a.beginTransaction();
        try {
            this.f60615b.insert(list);
            this.f60614a.setTransactionSuccessful();
        } finally {
            this.f60614a.endTransaction();
        }
    }

    @Override // p193e.p194a.p1392y2.p1393p.AbstractC21776c
    /* renamed from: f */
    public void mo9088f(List<String> list, C21761g c21761g) {
        this.f60614a.beginTransaction();
        try {
            super.mo9088f(list, c21761g);
            this.f60614a.setTransactionSuccessful();
        } finally {
            this.f60614a.endTransaction();
        }
    }
}
