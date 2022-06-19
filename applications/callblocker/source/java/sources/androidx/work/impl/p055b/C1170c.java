package androidx.work.impl.p055b;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0757f;
import androidx.room.AbstractC1012b;
import androidx.room.AbstractC1044i;
import androidx.room.C1053l;
import androidx.room.p050b.C1015c;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.b.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/c.class */
public final class C1170c implements AbstractC1169b {

    /* renamed from: a */
    private final AbstractC1044i f3982a;

    /* renamed from: b */
    private final AbstractC1012b<C1168a> f3983b;

    public C1170c(AbstractC1044i abstractC1044i) {
        this.f3982a = abstractC1044i;
        this.f3983b = new AbstractC1012b<C1168a>(abstractC1044i) { // from class: androidx.work.impl.b.c.1
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
            }

            /* renamed from: a */
            public void mo17779a(AbstractC0757f abstractC0757f, C1168a c1168a) {
                if (c1168a.f3980a == null) {
                    abstractC0757f.mo18257a(1);
                } else {
                    abstractC0757f.mo18254a(1, c1168a.f3980a);
                }
                if (c1168a.f3981b == null) {
                    abstractC0757f.mo18257a(2);
                } else {
                    abstractC0757f.mo18254a(2, c1168a.f3981b);
                }
            }
        };
    }

    @Override // androidx.work.impl.p055b.AbstractC1169b
    /* renamed from: a */
    public void mo17825a(C1168a c1168a) {
        this.f3982a.m18292f();
        this.f3982a.m18291g();
        try {
            this.f3983b.m18353a((AbstractC1012b<C1168a>) c1168a);
            this.f3982a.m18288j();
        } finally {
            this.f3982a.m18290h();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p055b.AbstractC1169b
    /* renamed from: a */
    public boolean mo17824a(String str) {
        boolean z = true;
        C1053l m18251a = C1053l.m18251a("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f3982a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f3982a, m18251a, false, null);
        try {
            if (!m18346a.moveToFirst()) {
                z = false;
            } else if (m18346a.getInt(0) == 0) {
                z = false;
            }
            m18346a.close();
            m18251a.m18258a();
            return z;
        } catch (Throwable th) {
            m18346a.close();
            m18251a.m18258a();
            throw th;
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1169b
    /* renamed from: b */
    public List<String> mo17823b(String str) {
        C1053l m18251a = C1053l.m18251a("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f3982a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f3982a, m18251a, false, null);
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

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p055b.AbstractC1169b
    /* renamed from: c */
    public boolean mo17822c(String str) {
        boolean z = true;
        C1053l m18251a = C1053l.m18251a("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f3982a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f3982a, m18251a, false, null);
        try {
            if (!m18346a.moveToFirst()) {
                z = false;
            } else if (m18346a.getInt(0) == 0) {
                z = false;
            }
            m18346a.close();
            m18251a.m18258a();
            return z;
        } catch (Throwable th) {
            m18346a.close();
            m18251a.m18258a();
            throw th;
        }
    }
}
