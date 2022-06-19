package androidx.work.impl.p018n;

import android.database.Cursor;
import androidx.room.AbstractC0998b;
import androidx.room.C1024k;
import androidx.room.RoomDatabase;
import androidx.room.p012q.C1033c;
import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: androidx.work.impl.n.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/f.class */
public final class C1327f implements AbstractC1326e {

    /* renamed from: a */
    private final RoomDatabase f5552a;

    /* renamed from: b */
    private final AbstractC0998b<C1325d> f5553b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/f$a.class */
    public class C1328a extends AbstractC0998b<C1325d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1328a(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1327f.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        /* renamed from: i */
        public void mo30257g(AbstractC1780f abstractC1780f, C1325d c1325d) {
            String str = c1325d.f5550a;
            if (str == null) {
                abstractC1780f.mo28899T(1);
            } else {
                abstractC1780f.mo28898o(1, str);
            }
            Long l = c1325d.f5551b;
            if (l == null) {
                abstractC1780f.mo28899T(2);
            } else {
                abstractC1780f.mo28901F(2, l.longValue());
            }
        }
    }

    public C1327f(RoomDatabase roomDatabase) {
        this.f5552a = roomDatabase;
        this.f5553b = new C1328a(roomDatabase);
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p018n.AbstractC1326e
    /* renamed from: a */
    public Long mo30301a(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5552a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5552a, m31226f, false, null);
        Long l = null;
        try {
            if (m31207b.moveToFirst()) {
                l = m31207b.isNull(0) ? null : Long.valueOf(m31207b.getLong(0));
            }
            m31207b.close();
            m31226f.m31223p();
            return l;
        } catch (Throwable th) {
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1326e
    /* renamed from: b */
    public void mo30300b(C1325d c1325d) {
        this.f5552a.m31294b();
        this.f5552a.m31293c();
        try {
            this.f5553b.m31264h(c1325d);
            this.f5552a.m31280r();
        } finally {
            this.f5552a.m31291g();
        }
    }
}
