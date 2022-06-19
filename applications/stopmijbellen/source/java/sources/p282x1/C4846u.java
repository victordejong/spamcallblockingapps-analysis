package p282x1;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import p067d1.AbstractC2141b;
import p067d1.AbstractC2151f;
import p067d1.C2158h;
import p088f1.C2709b;
import p110h1.C3001f;
/* renamed from: x1.u */
/* loaded from: classes-dex2jar.jar:x1/u.class */
public final class C4846u implements AbstractC4845t {

    /* renamed from: a */
    public final AbstractC2151f f14862a;

    /* renamed from: b */
    public final AbstractC2141b<C4844s> f14863b;

    /* renamed from: x1.u$a */
    /* loaded from: classes-dex2jar.jar:x1/u$a.class */
    public class C4847a extends AbstractC2141b<C4844s> {
        public C4847a(C4846u c4846u, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // p067d1.AbstractC2141b
        /* renamed from: d */
        public void mo370d(C3001f c3001f, C4844s c4844s) {
            C4844s c4844s2 = c4844s;
            String str = c4844s2.f14860a;
            if (str == null) {
                c3001f.f10100a.bindNull(1);
            } else {
                c3001f.f10100a.bindString(1, str);
            }
            String str2 = c4844s2.f14861b;
            if (str2 == null) {
                c3001f.f10100a.bindNull(2);
            } else {
                c3001f.f10100a.bindString(2, str2);
            }
        }
    }

    public C4846u(AbstractC2151f abstractC2151f) {
        this.f14862a = abstractC2151f;
        this.f14863b = new C4847a(this, abstractC2151f);
    }

    /* renamed from: a */
    public List<String> m372a(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14862a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14862a, m3806l, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3217a.getCount());
            while (m3217a.moveToNext()) {
                arrayList.add(m3217a.getString(0));
            }
            return arrayList;
        } finally {
            m3217a.close();
            m3806l.release();
        }
    }
}
