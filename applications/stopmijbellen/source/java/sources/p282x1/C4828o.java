package p282x1;

import androidx.work.C0680b;
import p067d1.AbstractC2141b;
import p067d1.AbstractC2151f;
import p067d1.AbstractC2160j;
import p110h1.C3001f;
/* renamed from: x1.o */
/* loaded from: classes-dex2jar.jar:x1/o.class */
public final class C4828o implements AbstractC4827n {

    /* renamed from: a */
    public final AbstractC2151f f14827a;

    /* renamed from: b */
    public final AbstractC2141b<C4826m> f14828b;

    /* renamed from: c */
    public final AbstractC2160j f14829c;

    /* renamed from: d */
    public final AbstractC2160j f14830d;

    /* renamed from: x1.o$a */
    /* loaded from: classes-dex2jar.jar:x1/o$a.class */
    public class C4829a extends AbstractC2141b<C4826m> {
        public C4829a(C4828o c4828o, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // p067d1.AbstractC2141b
        /* renamed from: d */
        public void mo370d(C3001f c3001f, C4826m c4826m) {
            C4826m c4826m2 = c4826m;
            String str = c4826m2.f14825a;
            if (str == null) {
                c3001f.f10100a.bindNull(1);
            } else {
                c3001f.f10100a.bindString(1, str);
            }
            byte[] m7483c = C0680b.m7483c(c4826m2.f14826b);
            if (m7483c == null) {
                c3001f.f10100a.bindNull(2);
            } else {
                c3001f.f10100a.bindBlob(2, m7483c);
            }
        }
    }

    /* renamed from: x1.o$b */
    /* loaded from: classes-dex2jar.jar:x1/o$b.class */
    public class C4830b extends AbstractC2160j {
        public C4830b(C4828o c4828o, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* renamed from: x1.o$c */
    /* loaded from: classes-dex2jar.jar:x1/o$c.class */
    public class C4831c extends AbstractC2160j {
        public C4831c(C4828o c4828o, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "DELETE FROM WorkProgress";
        }
    }

    public C4828o(AbstractC2151f abstractC2151f) {
        this.f14827a = abstractC2151f;
        this.f14828b = new C4829a(this, abstractC2151f);
        this.f14829c = new C4830b(this, abstractC2151f);
        this.f14830d = new C4831c(this, abstractC2151f);
    }

    /* renamed from: a */
    public void m393a(String str) {
        this.f14827a.m3820b();
        C3001f m3800a = this.f14829c.m3800a();
        if (str == null) {
            m3800a.f10100a.bindNull(1);
        } else {
            m3800a.f10100a.bindString(1, str);
        }
        this.f14827a.m3819c();
        try {
            m3800a.m2768d();
            this.f14827a.m3811k();
            this.f14827a.m3815g();
            AbstractC2160j abstractC2160j = this.f14829c;
            if (m3800a != abstractC2160j.f7911c) {
                return;
            }
            abstractC2160j.f7909a.set(false);
        } catch (Throwable th) {
            this.f14827a.m3815g();
            this.f14829c.m3799c(m3800a);
            throw th;
        }
    }

    /* renamed from: b */
    public void m392b() {
        this.f14827a.m3820b();
        C3001f m3800a = this.f14830d.m3800a();
        this.f14827a.m3819c();
        try {
            m3800a.m2768d();
            this.f14827a.m3811k();
            this.f14827a.m3815g();
            AbstractC2160j abstractC2160j = this.f14830d;
            if (m3800a != abstractC2160j.f7911c) {
                return;
            }
            abstractC2160j.f7909a.set(false);
        } catch (Throwable th) {
            this.f14827a.m3815g();
            this.f14830d.m3799c(m3800a);
            throw th;
        }
    }
}
