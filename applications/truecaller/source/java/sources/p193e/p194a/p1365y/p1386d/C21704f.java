package p193e.p194a.p1365y.p1386d;

import android.database.Cursor;
import java.util.Objects;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.y.d.f */
/* loaded from: classes9-dex2jar.jar:e/a/y/d/f.class */
public final class C21704f implements AbstractC21701c {

    /* renamed from: a */
    public final AbstractC25677q f60476a;

    /* renamed from: b */
    public final AbstractC25663k<C21710g> f60477b;

    /* renamed from: c */
    public final AbstractC25663k<C21720m> f60478c;

    /* renamed from: d */
    public final AbstractC25646c0 f60479d;

    /* renamed from: e */
    public final AbstractC25646c0 f60480e;

    /* renamed from: f */
    public final AbstractC25646c0 f60481f;

    /* renamed from: e.a.y.d.f$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/d/f$a.class */
    public class C21705a extends AbstractC25663k<C21710g> {
        public C21705a(C21704f c21704f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C21710g c21710g) {
            C21710g c21710g2 = c21710g;
            Objects.requireNonNull(c21710g2);
            abstractC26154f.mo2648y0(1);
            String str = c21710g2.f60482a;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            String str2 = c21710g2.f60483b;
            if (str2 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, str2);
            }
            abstractC26154f.mo2650l0(4, c21710g2.f60484c);
            String str3 = c21710g2.f60485d;
            if (str3 == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, str3);
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `flash_state` (`_id`,`phone`,`type`,`timestamp`,`history`) VALUES (?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.y.d.f$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/d/f$b.class */
    public class C21706b extends AbstractC25663k<C21720m> {
        public C21706b(C21704f c21704f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C21720m c21720m) {
            C21720m c21720m2 = c21720m;
            Objects.requireNonNull(c21720m2);
            abstractC26154f.mo2648y0(1);
            String str = c21720m2.f60512a;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            abstractC26154f.mo2650l0(3, c21720m2.f60513b);
            abstractC26154f.mo2650l0(4, c21720m2.f60514c);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `flash_cache` (`_id`,`phone`,`flash_enabled`,`version`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.y.d.f$c */
    /* loaded from: classes9-dex2jar.jar:e/a/y/d/f$c.class */
    public class C21707c extends AbstractC25646c0 {
        public C21707c(C21704f c21704f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM flash_state WHERE phone = ?";
        }
    }

    /* renamed from: e.a.y.d.f$d */
    /* loaded from: classes9-dex2jar.jar:e/a/y/d/f$d.class */
    public class C21708d extends AbstractC25646c0 {
        public C21708d(C21704f c21704f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE flash_state SET timestamp = ?, type = ?, history = ? WHERE phone = ?";
        }
    }

    /* renamed from: e.a.y.d.f$e */
    /* loaded from: classes9-dex2jar.jar:e/a/y/d/f$e.class */
    public class C21709e extends AbstractC25646c0 {
        public C21709e(C21704f c21704f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE flash_cache SET flash_enabled = ?, version = ? WHERE phone = ?";
        }
    }

    public C21704f(AbstractC25677q abstractC25677q) {
        this.f60476a = abstractC25677q;
        this.f60477b = new C21705a(this, abstractC25677q);
        this.f60478c = new C21706b(this, abstractC25677q);
        this.f60479d = new C21707c(this, abstractC25677q);
        this.f60480e = new C21708d(this, abstractC25677q);
        this.f60481f = new C21709e(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: a */
    public Cursor mo9182a(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM flash_state WHERE phone = ?", 1);
        m3059j.mo2651f0(1, str);
        return this.f60476a.query(m3059j);
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: b */
    public int mo9181b(String str) {
        this.f60476a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f60479d.acquire();
        acquire.mo2651f0(1, str);
        this.f60476a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f60476a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f60476a.endTransaction();
            this.f60479d.release(acquire);
        }
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: c */
    public int mo9180c(String[] strArr) {
        this.f60476a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM flash_cache WHERE phone IN (");
        C25655d.m3086a(sb, strArr.length);
        sb.append(")");
        AbstractC26154f compileStatement = this.f60476a.compileStatement(sb.toString());
        int i = 1;
        for (String str : strArr) {
            if (str == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2651f0(i, str);
            }
            i++;
        }
        this.f60476a.beginTransaction();
        try {
            int m2673A = compileStatement.m2673A();
            this.f60476a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f60476a.endTransaction();
        }
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: d */
    public long mo9179d(C21720m c21720m) {
        this.f60476a.assertNotSuspendingTransaction();
        this.f60476a.beginTransaction();
        try {
            long insertAndReturnId = this.f60478c.insertAndReturnId(c21720m);
            this.f60476a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f60476a.endTransaction();
        }
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: e */
    public Cursor mo9178e() {
        return this.f60476a.query(C25686y.m3059j("SELECT * FROM flash_cache", 0));
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: f */
    public Cursor mo9177f(int i, String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM flash_state WHERE timestamp > ? AND type != ? ORDER BY timestamp DESC", 2);
        m3059j.mo2650l0(1, i);
        if (str == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2651f0(2, str);
        }
        return this.f60476a.query(m3059j);
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: g */
    public int mo9176g(long j, String str, String str2, String str3) {
        this.f60476a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f60480e.acquire();
        acquire.mo2650l0(1, j);
        acquire.mo2651f0(2, str);
        if (str2 == null) {
            acquire.mo2648y0(3);
        } else {
            acquire.mo2651f0(3, str2);
        }
        acquire.mo2651f0(4, str3);
        this.f60476a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f60476a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f60476a.endTransaction();
            this.f60480e.release(acquire);
        }
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: h */
    public Cursor mo9175h(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT phone FROM flash_cache WHERE phone IN (");
        int length = strArr.length;
        C25655d.m3086a(sb, length);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), length + 0);
        int i = 1;
        for (String str : strArr) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        return this.f60476a.query(m3059j);
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: i */
    public long mo9174i(C21710g c21710g) {
        this.f60476a.assertNotSuspendingTransaction();
        this.f60476a.beginTransaction();
        try {
            long insertAndReturnId = this.f60477b.insertAndReturnId(c21710g);
            this.f60476a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f60476a.endTransaction();
        }
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21701c
    /* renamed from: j */
    public int mo9173j(int i, int i2, String str) {
        this.f60476a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f60481f.acquire();
        acquire.mo2650l0(1, i);
        acquire.mo2650l0(2, i2);
        acquire.mo2651f0(3, str);
        this.f60476a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f60476a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f60476a.endTransaction();
            this.f60481f.release(acquire);
        }
    }
}
