package androidx.work.impl.p018n;

import android.database.Cursor;
import androidx.room.AbstractC0998b;
import androidx.room.AbstractC1027n;
import androidx.room.C1024k;
import androidx.room.RoomDatabase;
import androidx.room.p012q.C1032b;
import androidx.room.p012q.C1033c;
import java.util.ArrayList;
import java.util.List;
import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: androidx.work.impl.n.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/i.class */
public final class C1331i implements AbstractC1330h {

    /* renamed from: a */
    private final RoomDatabase f5557a;

    /* renamed from: b */
    private final AbstractC0998b<C1329g> f5558b;

    /* renamed from: c */
    private final AbstractC1027n f5559c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/i$a.class */
    public class C1332a extends AbstractC0998b<C1329g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1332a(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1331i.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        /* renamed from: i */
        public void mo30257g(AbstractC1780f abstractC1780f, C1329g c1329g) {
            String str = c1329g.f5555a;
            if (str == null) {
                abstractC1780f.mo28899T(1);
            } else {
                abstractC1780f.mo28898o(1, str);
            }
            abstractC1780f.mo28901F(2, c1329g.f5556b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/i$b.class */
    public class C1333b extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1333b(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1331i.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public C1331i(RoomDatabase roomDatabase) {
        this.f5557a = roomDatabase;
        this.f5558b = new C1332a(roomDatabase);
        this.f5559c = new C1333b(roomDatabase);
    }

    @Override // androidx.work.impl.p018n.AbstractC1330h
    /* renamed from: a */
    public List<String> mo30298a() {
        C1024k m31226f = C1024k.m31226f("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.f5557a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5557a, m31226f, false, null);
        try {
            ArrayList arrayList = new ArrayList(m31207b.getCount());
            while (m31207b.moveToNext()) {
                arrayList.add(m31207b.getString(0));
            }
            return arrayList;
        } finally {
            m31207b.close();
            m31226f.m31223p();
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1330h
    /* renamed from: b */
    public void mo30297b(C1329g c1329g) {
        this.f5557a.m31294b();
        this.f5557a.m31293c();
        try {
            this.f5558b.m31264h(c1329g);
            this.f5557a.m31280r();
        } finally {
            this.f5557a.m31291g();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p018n.AbstractC1330h
    /* renamed from: c */
    public C1329g mo30296c(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5557a.m31294b();
        C1329g c1329g = null;
        Cursor m31207b = C1033c.m31207b(this.f5557a, m31226f, false, null);
        try {
            int m31209b = C1032b.m31209b(m31207b, "work_spec_id");
            int m31209b2 = C1032b.m31209b(m31207b, "system_id");
            if (m31207b.moveToFirst()) {
                c1329g = new C1329g(m31207b.getString(m31209b), m31207b.getInt(m31209b2));
            }
            m31207b.close();
            m31226f.m31223p();
            return c1329g;
        } catch (Throwable th) {
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1330h
    /* renamed from: d */
    public void mo30295d(String str) {
        this.f5557a.m31294b();
        AbstractC1780f m31219a = this.f5559c.m31219a();
        if (str == null) {
            m31219a.mo28899T(1);
        } else {
            m31219a.mo28898o(1, str);
        }
        this.f5557a.m31293c();
        try {
            m31219a.mo28895r();
            this.f5557a.m31280r();
        } finally {
            this.f5557a.m31291g();
            this.f5559c.m31215f(m31219a);
        }
    }
}
