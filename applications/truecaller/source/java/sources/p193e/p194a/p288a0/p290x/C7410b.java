package p193e.p194a.p288a0.p290x;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.spamcategories.SpamCategory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.a0.x.b */
/* loaded from: classes12-dex2jar.jar:e/a/a0/x/b.class */
public final class C7410b implements AbstractC7409a {

    /* renamed from: a */
    public final AbstractC25677q f23549a;

    /* renamed from: b */
    public final AbstractC25663k<SpamCategory> f23550b;

    /* renamed from: c */
    public final AbstractC25646c0 f23551c;

    /* renamed from: e.a.a0.x.b$a */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/x/b$a.class */
    public class C7411a extends AbstractC25663k<SpamCategory> {
        public C7411a(C7410b c7410b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, SpamCategory spamCategory) {
            SpamCategory spamCategory2 = spamCategory;
            abstractC26154f.mo2650l0(1, spamCategory2.getId());
            if (spamCategory2.getName() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, spamCategory2.getName());
            }
            if (spamCategory2.getIcon() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, spamCategory2.getIcon());
            }
            if (spamCategory2.getRowId() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2650l0(4, spamCategory2.getRowId().longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `spam_categories` (`id`,`name`,`icon`,`row_id`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.a0.x.b$b */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/x/b$b.class */
    public class C7412b extends AbstractC25646c0 {
        public C7412b(C7410b c7410b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM spam_categories";
        }
    }

    /* renamed from: e.a.a0.x.b$c */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/x/b$c.class */
    public class CallableC7413c implements Callable<List<SpamCategory>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f23552a;

        public CallableC7413c(C25686y c25686y) {
            C7410b.this = r4;
            this.f23552a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SpamCategory> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C7410b.this.f23549a, this.f23552a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.NAME);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, RemoteMessageConst.Notification.ICON);
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "row_id");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new SpamCategory(m3090b.getLong(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f23552a.m3057l();
            }
        }
    }

    /* renamed from: e.a.a0.x.b$d */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/x/b$d.class */
    public class CallableC7414d implements Callable<List<SpamCategory>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f23554a;

        public CallableC7414d(C25686y c25686y) {
            C7410b.this = r4;
            this.f23554a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SpamCategory> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C7410b.this.f23549a, this.f23554a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.NAME);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, RemoteMessageConst.Notification.ICON);
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "row_id");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new SpamCategory(m3090b.getLong(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f23554a.m3057l();
            }
        }
    }

    /* renamed from: e.a.a0.x.b$e */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/x/b$e.class */
    public class CallableC7415e implements Callable<SpamCategory> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f23556a;

        public CallableC7415e(C25686y c25686y) {
            C7410b.this = r4;
            this.f23556a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public SpamCategory call() throws Exception {
            SpamCategory spamCategory = null;
            Long l = null;
            Cursor m3090b = C25653b.m3090b(C7410b.this.f23549a, this.f23556a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.NAME);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, RemoteMessageConst.Notification.ICON);
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "row_id");
                if (m3090b.moveToFirst()) {
                    long j = m3090b.getLong(m43237g0);
                    String string = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string2 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    if (!m3090b.isNull(m43237g04)) {
                        l = Long.valueOf(m3090b.getLong(m43237g04));
                    }
                    spamCategory = new SpamCategory(j, string, string2, l);
                }
                m3090b.close();
                this.f23556a.m3057l();
                return spamCategory;
            } catch (Throwable th) {
                m3090b.close();
                this.f23556a.m3057l();
                throw th;
            }
        }
    }

    public C7410b(AbstractC25677q abstractC25677q) {
        this.f23549a = abstractC25677q;
        this.f23550b = new C7411a(this, abstractC25677q);
        this.f23551c = new C7412b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p288a0.p290x.AbstractC7409a
    /* renamed from: a */
    public Object mo29677a(d<? super List<SpamCategory>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM spam_categories", 0);
        return C25650g.m3095b(this.f23549a, false, new CancellationSignal(), new CallableC7413c(m3059j), dVar);
    }

    @Override // p193e.p194a.p288a0.p290x.AbstractC7409a
    /* renamed from: b */
    public Object mo29676b(long j, d<? super SpamCategory> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM spam_categories WHERE id = ?", 1);
        m3059j.mo2650l0(1, j);
        return C25650g.m3095b(this.f23549a, false, new CancellationSignal(), new CallableC7415e(m3059j), dVar);
    }

    @Override // p193e.p194a.p288a0.p290x.AbstractC7409a
    /* renamed from: c */
    public List<Long> mo29675c(List<SpamCategory> list) {
        this.f23549a.beginTransaction();
        try {
            l.e(list, "spamCategories");
            m29672f();
            List<Long> m29673e = m29673e(list);
            this.f23549a.setTransactionSuccessful();
            return m29673e;
        } finally {
            this.f23549a.endTransaction();
        }
    }

    @Override // p193e.p194a.p288a0.p290x.AbstractC7409a
    /* renamed from: d */
    public Object mo29674d(List<Long> list, d<? super List<SpamCategory>> dVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM spam_categories WHERE id in (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        return C25650g.m3095b(this.f23549a, false, new CancellationSignal(), new CallableC7414d(m3059j), dVar);
    }

    /* renamed from: e */
    public List<Long> m29673e(List<SpamCategory> list) {
        this.f23549a.assertNotSuspendingTransaction();
        this.f23549a.beginTransaction();
        try {
            List<Long> insertAndReturnIdsList = this.f23550b.insertAndReturnIdsList(list);
            this.f23549a.setTransactionSuccessful();
            return insertAndReturnIdsList;
        } finally {
            this.f23549a.endTransaction();
        }
    }

    /* renamed from: f */
    public void m29672f() {
        this.f23549a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f23551c.acquire();
        this.f23549a.beginTransaction();
        try {
            acquire.m2673A();
            this.f23549a.setTransactionSuccessful();
        } finally {
            this.f23549a.endTransaction();
            this.f23551c.release(acquire);
        }
    }
}
