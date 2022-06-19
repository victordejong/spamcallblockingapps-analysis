package androidx.work.impl.p055b;

import androidx.p042i.p043a.AbstractC0757f;
import androidx.room.AbstractC1012b;
import androidx.room.AbstractC1044i;
import androidx.room.AbstractC1056o;
import androidx.work.C1133e;
/* renamed from: androidx.work.impl.b.o */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/o.class */
public final class C1187o implements AbstractC1186n {

    /* renamed from: a */
    private final AbstractC1044i f4004a;

    /* renamed from: b */
    private final AbstractC1012b<C1185m> f4005b;

    /* renamed from: c */
    private final AbstractC1056o f4006c;

    /* renamed from: d */
    private final AbstractC1056o f4007d;

    public C1187o(AbstractC1044i abstractC1044i) {
        this.f4004a = abstractC1044i;
        this.f4005b = new AbstractC1012b<C1185m>(abstractC1044i) { // from class: androidx.work.impl.b.o.1
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
            }

            /* renamed from: a */
            public void mo17779a(AbstractC0757f abstractC0757f, C1185m c1185m) {
                if (c1185m.f4002a == null) {
                    abstractC0757f.mo18257a(1);
                } else {
                    abstractC0757f.mo18254a(1, c1185m.f4002a);
                }
                byte[] m17922a = C1133e.m17922a(c1185m.f4003b);
                if (m17922a == null) {
                    abstractC0757f.mo18257a(2);
                } else {
                    abstractC0757f.mo18253a(2, m17922a);
                }
            }
        };
        this.f4006c = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.o.2
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "DELETE from WorkProgress where work_spec_id=?";
            }
        };
        this.f4007d = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.o.3
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "DELETE FROM WorkProgress";
            }
        };
    }

    @Override // androidx.work.impl.p055b.AbstractC1186n
    /* renamed from: a */
    public void mo17811a() {
        this.f4004a.m18292f();
        AbstractC0757f m18238c = this.f4007d.m18238c();
        this.f4004a.m18291g();
        try {
            m18238c.mo19505a();
            this.f4004a.m18288j();
        } finally {
            this.f4004a.m18290h();
            this.f4007d.m18241a(m18238c);
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1186n
    /* renamed from: a */
    public void mo17810a(String str) {
        this.f4004a.m18292f();
        AbstractC0757f m18238c = this.f4006c.m18238c();
        if (str == null) {
            m18238c.mo18257a(1);
        } else {
            m18238c.mo18254a(1, str);
        }
        this.f4004a.m18291g();
        try {
            m18238c.mo19505a();
            this.f4004a.m18288j();
        } finally {
            this.f4004a.m18290h();
            this.f4006c.m18241a(m18238c);
        }
    }
}
