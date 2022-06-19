package androidx.work.impl.p055b;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0757f;
import androidx.room.AbstractC1012b;
import androidx.room.AbstractC1044i;
import androidx.room.C1053l;
import androidx.room.p050b.C1015c;
/* renamed from: androidx.work.impl.b.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/f.class */
public final class C1174f implements AbstractC1173e {

    /* renamed from: a */
    private final AbstractC1044i f3987a;

    /* renamed from: b */
    private final AbstractC1012b<C1172d> f3988b;

    public C1174f(AbstractC1044i abstractC1044i) {
        this.f3987a = abstractC1044i;
        this.f3988b = new AbstractC1012b<C1172d>(abstractC1044i) { // from class: androidx.work.impl.b.f.1
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            }

            /* renamed from: a */
            public void mo17779a(AbstractC0757f abstractC0757f, C1172d c1172d) {
                if (c1172d.f3985a == null) {
                    abstractC0757f.mo18257a(1);
                } else {
                    abstractC0757f.mo18254a(1, c1172d.f3985a);
                }
                if (c1172d.f3986b == null) {
                    abstractC0757f.mo18257a(2);
                } else {
                    abstractC0757f.mo18255a(2, c1172d.f3986b.longValue());
                }
            }
        };
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p055b.AbstractC1173e
    /* renamed from: a */
    public Long mo17819a(String str) {
        C1053l m18251a = C1053l.m18251a("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f3987a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f3987a, m18251a, false, null);
        Long l = null;
        try {
            if (m18346a.moveToFirst()) {
                l = m18346a.isNull(0) ? null : Long.valueOf(m18346a.getLong(0));
            }
            m18346a.close();
            m18251a.m18258a();
            return l;
        } catch (Throwable th) {
            m18346a.close();
            m18251a.m18258a();
            throw th;
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1173e
    /* renamed from: a */
    public void mo17820a(C1172d c1172d) {
        this.f3987a.m18292f();
        this.f3987a.m18291g();
        try {
            this.f3988b.m18353a((AbstractC1012b<C1172d>) c1172d);
            this.f3987a.m18288j();
        } finally {
            this.f3987a.m18290h();
        }
    }
}
