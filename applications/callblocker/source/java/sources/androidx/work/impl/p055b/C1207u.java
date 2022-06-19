package androidx.work.impl.p055b;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0757f;
import androidx.room.AbstractC1012b;
import androidx.room.AbstractC1044i;
import androidx.room.C1053l;
import androidx.room.p050b.C1015c;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.b.u */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/u.class */
public final class C1207u implements AbstractC1206t {

    /* renamed from: a */
    private final AbstractC1044i f4053a;

    /* renamed from: b */
    private final AbstractC1012b<C1205s> f4054b;

    public C1207u(AbstractC1044i abstractC1044i) {
        this.f4053a = abstractC1044i;
        this.f4054b = new AbstractC1012b<C1205s>(abstractC1044i) { // from class: androidx.work.impl.b.u.1
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
            }

            /* renamed from: a */
            public void mo17779a(AbstractC0757f abstractC0757f, C1205s c1205s) {
                if (c1205s.f4051a == null) {
                    abstractC0757f.mo18257a(1);
                } else {
                    abstractC0757f.mo18254a(1, c1205s.f4051a);
                }
                if (c1205s.f4052b == null) {
                    abstractC0757f.mo18257a(2);
                } else {
                    abstractC0757f.mo18254a(2, c1205s.f4052b);
                }
            }
        };
    }

    @Override // androidx.work.impl.p055b.AbstractC1206t
    /* renamed from: a */
    public List<String> mo17782a(String str) {
        C1053l m18251a = C1053l.m18251a("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f4053a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4053a, m18251a, false, null);
        try {
            ArrayList arrayList = new ArrayList(m18346a.getCount());
            while (m18346a.moveToNext()) {
                arrayList.add(m18346a.getString(0));
            }
            return arrayList;
        } finally {
            m18346a.close();
            m18251a.m18258a();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1206t
    /* renamed from: a */
    public void mo17783a(C1205s c1205s) {
        this.f4053a.m18292f();
        this.f4053a.m18291g();
        try {
            this.f4054b.m18353a((AbstractC1012b<C1205s>) c1205s);
            this.f4053a.m18288j();
        } finally {
            this.f4053a.m18290h();
        }
    }
}
