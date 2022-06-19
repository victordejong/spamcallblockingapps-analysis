package p193e.p194a.p294b.p345k.p347b.p348a;

import android.database.Cursor;
import java.util.Objects;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p294b.p345k.p347b.p349b.C7982c;
/* renamed from: e.a.b.k.b.a.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/f.class */
public final class C7976f implements AbstractC7975e {

    /* renamed from: a */
    public final AbstractC25677q f24641a;

    /* renamed from: b */
    public final AbstractC25663k<C7982c> f24642b;

    /* renamed from: c */
    public final AbstractC25646c0 f24643c;

    /* renamed from: d */
    public final AbstractC25646c0 f24644d;

    /* renamed from: e.a.b.k.b.a.f$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/f$a.class */
    public class C7977a extends AbstractC25663k<C7982c> {
        public C7977a(C7976f c7976f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C7982c c7982c) {
            C7982c c7982c2 = c7982c;
            Objects.requireNonNull(c7982c2);
            abstractC26154f.mo2650l0(1, 0L);
            String str = c7982c2.f24655a;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            abstractC26154f.mo2650l0(3, c7982c2.f24656b);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `state` (`id`,`name`,`general_count`) VALUES (nullif(?, 0),?,?)";
        }
    }

    /* renamed from: e.a.b.k.b.a.f$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/f$b.class */
    public class C7978b extends AbstractC25646c0 {
        public C7978b(C7976f c7976f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM state";
        }
    }

    /* renamed from: e.a.b.k.b.a.f$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/f$c.class */
    public class C7979c extends AbstractC25646c0 {
        public C7979c(C7976f c7976f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE state SET general_count = general_count + ? WHERE name = ?";
        }
    }

    public C7976f(AbstractC25677q abstractC25677q) {
        this.f24641a = abstractC25677q;
        this.f24642b = new C7977a(this, abstractC25677q);
        this.f24643c = new C7978b(this, abstractC25677q);
        this.f24644d = new C7979c(this, abstractC25677q);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7975e
    /* renamed from: a */
    public boolean mo29046a(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM state WHERE name = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f24641a.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor m3090b = C25653b.m3090b(this.f24641a, m3059j, false, null);
        try {
            if (m3090b.moveToFirst()) {
                z = m3090b.getInt(0) != 0;
            }
            m3090b.close();
            m3059j.m3057l();
            return z;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7975e
    /* renamed from: b */
    public long mo29045b(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT  id  FROM state WHERE name = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f24641a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f24641a, m3059j, false, null);
        try {
            char c = m3090b.moveToFirst() ? m3090b.getLong(0) : (char) 0;
            m3090b.close();
            m3059j.m3057l();
            return c;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7975e
    /* renamed from: c */
    public void mo29044c() {
        this.f24641a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f24643c.acquire();
        this.f24641a.beginTransaction();
        try {
            acquire.m2673A();
            this.f24641a.setTransactionSuccessful();
        } finally {
            this.f24641a.endTransaction();
            this.f24643c.release(acquire);
        }
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7975e
    /* renamed from: d */
    public long mo29043d(C7982c c7982c) {
        this.f24641a.assertNotSuspendingTransaction();
        this.f24641a.beginTransaction();
        try {
            long insertAndReturnId = this.f24642b.insertAndReturnId(c7982c);
            this.f24641a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f24641a.endTransaction();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7975e
    /* renamed from: e */
    public void mo29042e(String str, int i) {
        this.f24641a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f24644d.acquire();
        acquire.mo2650l0(1, i);
        if (str == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str);
        }
        this.f24641a.beginTransaction();
        try {
            acquire.m2673A();
            this.f24641a.setTransactionSuccessful();
        } finally {
            this.f24641a.endTransaction();
            this.f24644d.release(acquire);
        }
    }
}
