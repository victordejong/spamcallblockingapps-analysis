package androidx.work.impl.p018n;

import androidx.room.AbstractC0998b;
import androidx.room.AbstractC1027n;
import androidx.room.RoomDatabase;
import androidx.work.C1238d;
import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: androidx.work.impl.n.o */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/o.class */
public final class C1340o implements AbstractC1339n {

    /* renamed from: a */
    private final RoomDatabase f5569a;

    /* renamed from: b */
    private final AbstractC0998b<C1338m> f5570b;

    /* renamed from: c */
    private final AbstractC1027n f5571c;

    /* renamed from: d */
    private final AbstractC1027n f5572d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/o$a.class */
    public class C1341a extends AbstractC0998b<C1338m> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1341a(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1340o.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        /* renamed from: i */
        public void mo30257g(AbstractC1780f abstractC1780f, C1338m c1338m) {
            String str = c1338m.f5567a;
            if (str == null) {
                abstractC1780f.mo28899T(1);
            } else {
                abstractC1780f.mo28898o(1, str);
            }
            byte[] m30548k = C1238d.m30548k(c1338m.f5568b);
            if (m30548k == null) {
                abstractC1780f.mo28899T(2);
            } else {
                abstractC1780f.mo28900J(2, m30548k);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.o$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/o$b.class */
    public class C1342b extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1342b(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1340o.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.o$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/o$c.class */
    public class C1343c extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1343c(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1340o.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "DELETE FROM WorkProgress";
        }
    }

    public C1340o(RoomDatabase roomDatabase) {
        this.f5569a = roomDatabase;
        this.f5570b = new C1341a(roomDatabase);
        this.f5571c = new C1342b(roomDatabase);
        this.f5572d = new C1343c(roomDatabase);
    }

    @Override // androidx.work.impl.p018n.AbstractC1339n
    /* renamed from: a */
    public void mo30290a(String str) {
        this.f5569a.m31294b();
        AbstractC1780f m31219a = this.f5571c.m31219a();
        if (str == null) {
            m31219a.mo28899T(1);
        } else {
            m31219a.mo28898o(1, str);
        }
        this.f5569a.m31293c();
        try {
            m31219a.mo28895r();
            this.f5569a.m31280r();
        } finally {
            this.f5569a.m31291g();
            this.f5571c.m31215f(m31219a);
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1339n
    /* renamed from: b */
    public void mo30289b() {
        this.f5569a.m31294b();
        AbstractC1780f m31219a = this.f5572d.m31219a();
        this.f5569a.m31293c();
        try {
            m31219a.mo28895r();
            this.f5569a.m31280r();
        } finally {
            this.f5569a.m31291g();
            this.f5572d.m31215f(m31219a);
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1339n
    /* renamed from: c */
    public void mo30288c(C1338m c1338m) {
        this.f5569a.m31294b();
        this.f5569a.m31293c();
        try {
            this.f5570b.m31264h(c1338m);
            this.f5569a.m31280r();
        } finally {
            this.f5569a.m31291g();
        }
    }
}
