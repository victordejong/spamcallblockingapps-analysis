package androidx.work.impl.p018n;

import android.database.Cursor;
import androidx.room.AbstractC0998b;
import androidx.room.C1024k;
import androidx.room.RoomDatabase;
import androidx.room.p012q.C1033c;
import java.util.ArrayList;
import java.util.List;
import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: androidx.work.impl.n.l */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/l.class */
public final class C1336l implements AbstractC1335k {

    /* renamed from: a */
    private final RoomDatabase f5564a;

    /* renamed from: b */
    private final AbstractC0998b<C1334j> f5565b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/l$a.class */
    public class C1337a extends AbstractC0998b<C1334j> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1337a(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1336l.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        /* renamed from: i */
        public void mo30257g(AbstractC1780f abstractC1780f, C1334j c1334j) {
            String str = c1334j.f5562a;
            if (str == null) {
                abstractC1780f.mo28899T(1);
            } else {
                abstractC1780f.mo28898o(1, str);
            }
            String str2 = c1334j.f5563b;
            if (str2 == null) {
                abstractC1780f.mo28899T(2);
            } else {
                abstractC1780f.mo28898o(2, str2);
            }
        }
    }

    public C1336l(RoomDatabase roomDatabase) {
        this.f5564a = roomDatabase;
        this.f5565b = new C1337a(roomDatabase);
    }

    @Override // androidx.work.impl.p018n.AbstractC1335k
    /* renamed from: a */
    public void mo30293a(C1334j c1334j) {
        this.f5564a.m31294b();
        this.f5564a.m31293c();
        try {
            this.f5565b.m31264h(c1334j);
            this.f5564a.m31280r();
        } finally {
            this.f5564a.m31291g();
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1335k
    /* renamed from: b */
    public List<String> mo30292b(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT name FROM workname WHERE work_spec_id=?", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5564a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5564a, m31226f, false, null);
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
}
