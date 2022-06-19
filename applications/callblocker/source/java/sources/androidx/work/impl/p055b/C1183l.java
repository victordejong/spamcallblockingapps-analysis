package androidx.work.impl.p055b;

import androidx.p042i.p043a.AbstractC0757f;
import androidx.room.AbstractC1012b;
import androidx.room.AbstractC1044i;
/* renamed from: androidx.work.impl.b.l */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/l.class */
public final class C1183l implements AbstractC1182k {

    /* renamed from: a */
    private final AbstractC1044i f3999a;

    /* renamed from: b */
    private final AbstractC1012b<C1181j> f4000b;

    public C1183l(AbstractC1044i abstractC1044i) {
        this.f3999a = abstractC1044i;
        this.f4000b = new AbstractC1012b<C1181j>(abstractC1044i) { // from class: androidx.work.impl.b.l.1
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
            }

            /* renamed from: a */
            public void mo17779a(AbstractC0757f abstractC0757f, C1181j c1181j) {
                if (c1181j.f3997a == null) {
                    abstractC0757f.mo18257a(1);
                } else {
                    abstractC0757f.mo18254a(1, c1181j.f3997a);
                }
                if (c1181j.f3998b == null) {
                    abstractC0757f.mo18257a(2);
                } else {
                    abstractC0757f.mo18254a(2, c1181j.f3998b);
                }
            }
        };
    }

    @Override // androidx.work.impl.p055b.AbstractC1182k
    /* renamed from: a */
    public void mo17813a(C1181j c1181j) {
        this.f3999a.m18292f();
        this.f3999a.m18291g();
        try {
            this.f4000b.m18353a((AbstractC1012b<C1181j>) c1181j);
            this.f3999a.m18288j();
        } finally {
            this.f3999a.m18290h();
        }
    }
}
