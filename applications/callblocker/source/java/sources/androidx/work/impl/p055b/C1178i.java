package androidx.work.impl.p055b;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0757f;
import androidx.room.AbstractC1012b;
import androidx.room.AbstractC1044i;
import androidx.room.AbstractC1056o;
import androidx.room.C1053l;
import androidx.room.p050b.C1014b;
import androidx.room.p050b.C1015c;
/* renamed from: androidx.work.impl.b.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/i.class */
public final class C1178i implements AbstractC1177h {

    /* renamed from: a */
    private final AbstractC1044i f3992a;

    /* renamed from: b */
    private final AbstractC1012b<C1176g> f3993b;

    /* renamed from: c */
    private final AbstractC1056o f3994c;

    public C1178i(AbstractC1044i abstractC1044i) {
        this.f3992a = abstractC1044i;
        this.f3993b = new AbstractC1012b<C1176g>(abstractC1044i) { // from class: androidx.work.impl.b.i.1
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
            }

            /* renamed from: a */
            public void mo17779a(AbstractC0757f abstractC0757f, C1176g c1176g) {
                if (c1176g.f3990a == null) {
                    abstractC0757f.mo18257a(1);
                } else {
                    abstractC0757f.mo18254a(1, c1176g.f3990a);
                }
                abstractC0757f.mo18255a(2, c1176g.f3991b);
            }
        };
        this.f3994c = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.i.2
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            }
        };
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p055b.AbstractC1177h
    /* renamed from: a */
    public C1176g mo17816a(String str) {
        C1053l m18251a = C1053l.m18251a("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f3992a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f3992a, m18251a, false, null);
        try {
            int m18348a = C1014b.m18348a(m18346a, "work_spec_id");
            int m18348a2 = C1014b.m18348a(m18346a, "system_id");
            C1176g c1176g = null;
            if (m18346a.moveToFirst()) {
                c1176g = new C1176g(m18346a.getString(m18348a), m18346a.getInt(m18348a2));
            }
            m18346a.close();
            m18251a.m18258a();
            return c1176g;
        } catch (Throwable th) {
            m18346a.close();
            m18251a.m18258a();
            throw th;
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1177h
    /* renamed from: a */
    public void mo17817a(C1176g c1176g) {
        this.f3992a.m18292f();
        this.f3992a.m18291g();
        try {
            this.f3993b.m18353a((AbstractC1012b<C1176g>) c1176g);
            this.f3992a.m18288j();
        } finally {
            this.f3992a.m18290h();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1177h
    /* renamed from: b */
    public void mo17815b(String str) {
        this.f3992a.m18292f();
        AbstractC0757f m18238c = this.f3994c.m18238c();
        if (str == null) {
            m18238c.mo18257a(1);
        } else {
            m18238c.mo18254a(1, str);
        }
        this.f3992a.m18291g();
        try {
            m18238c.mo19505a();
            this.f3992a.m18288j();
        } finally {
            this.f3992a.m18290h();
            this.f3994c.m18241a(m18238c);
        }
    }
}
