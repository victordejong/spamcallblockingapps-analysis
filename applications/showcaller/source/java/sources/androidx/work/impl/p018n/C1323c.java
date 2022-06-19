package androidx.work.impl.p018n;

import android.database.Cursor;
import androidx.room.AbstractC0998b;
import androidx.room.C1024k;
import androidx.room.RoomDatabase;
import androidx.room.p012q.C1033c;
import java.util.ArrayList;
import java.util.List;
import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: androidx.work.impl.n.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/c.class */
public final class C1323c implements AbstractC1322b {

    /* renamed from: a */
    private final RoomDatabase f5547a;

    /* renamed from: b */
    private final AbstractC0998b<C1321a> f5548b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/c$a.class */
    public class C1324a extends AbstractC0998b<C1321a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1324a(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1323c.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        /* renamed from: i */
        public void mo30257g(AbstractC1780f abstractC1780f, C1321a c1321a) {
            String str = c1321a.f5545a;
            if (str == null) {
                abstractC1780f.mo28899T(1);
            } else {
                abstractC1780f.mo28898o(1, str);
            }
            String str2 = c1321a.f5546b;
            if (str2 == null) {
                abstractC1780f.mo28899T(2);
            } else {
                abstractC1780f.mo28898o(2, str2);
            }
        }
    }

    public C1323c(RoomDatabase roomDatabase) {
        this.f5547a = roomDatabase;
        this.f5548b = new C1324a(roomDatabase);
    }

    @Override // androidx.work.impl.p018n.AbstractC1322b
    /* renamed from: a */
    public void mo30306a(C1321a c1321a) {
        this.f5547a.m31294b();
        this.f5547a.m31293c();
        try {
            this.f5548b.m31264h(c1321a);
            this.f5547a.m31280r();
        } finally {
            this.f5547a.m31291g();
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1322b
    /* renamed from: b */
    public List<String> mo30305b(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5547a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5547a, m31226f, false, null);
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

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p018n.AbstractC1322b
    /* renamed from: c */
    public boolean mo30304c(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5547a.m31294b();
        boolean z = false;
        Cursor m31207b = C1033c.m31207b(this.f5547a, m31226f, false, null);
        try {
            if (m31207b.moveToFirst()) {
                z = m31207b.getInt(0) != 0;
            }
            m31207b.close();
            m31226f.m31223p();
            return z;
        } catch (Throwable th) {
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p018n.AbstractC1322b
    /* renamed from: d */
    public boolean mo30303d(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5547a.m31294b();
        boolean z = false;
        Cursor m31207b = C1033c.m31207b(this.f5547a, m31226f, false, null);
        try {
            if (m31207b.moveToFirst()) {
                z = m31207b.getInt(0) != 0;
            }
            m31207b.close();
            m31226f.m31223p();
            return z;
        } catch (Throwable th) {
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }
}
