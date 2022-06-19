package p282x1;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import p067d1.AbstractC2141b;
import p067d1.AbstractC2151f;
import p067d1.C2158h;
import p088f1.C2709b;
import p110h1.C3001f;
/* renamed from: x1.c */
/* loaded from: classes-dex2jar.jar:x1/c.class */
public final class C4811c implements AbstractC4810b {

    /* renamed from: a */
    public final AbstractC2151f f14810a;

    /* renamed from: b */
    public final AbstractC2141b<C4809a> f14811b;

    /* renamed from: x1.c$a */
    /* loaded from: classes-dex2jar.jar:x1/c$a.class */
    public class C4812a extends AbstractC2141b<C4809a> {
        public C4812a(C4811c c4811c, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // p067d1.AbstractC2141b
        /* renamed from: d */
        public void mo370d(C3001f c3001f, C4809a c4809a) {
            C4809a c4809a2 = c4809a;
            String str = c4809a2.f14808a;
            if (str == null) {
                c3001f.f10100a.bindNull(1);
            } else {
                c3001f.f10100a.bindString(1, str);
            }
            String str2 = c4809a2.f14809b;
            if (str2 == null) {
                c3001f.f10100a.bindNull(2);
            } else {
                c3001f.f10100a.bindString(2, str2);
            }
        }
    }

    public C4811c(AbstractC2151f abstractC2151f) {
        this.f14810a = abstractC2151f;
        this.f14811b = new C4812a(this, abstractC2151f);
    }

    /* renamed from: a */
    public List<String> m400a(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14810a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14810a, m3806l, false, null);
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

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public boolean m399b(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14810a.m3820b();
        boolean z = false;
        Cursor m3217a = C2709b.m3217a(this.f14810a, m3806l, false, null);
        try {
            if (m3217a.moveToFirst()) {
                z = m3217a.getInt(0) != 0;
            }
            m3217a.close();
            m3806l.release();
            return z;
        } catch (Throwable th) {
            m3217a.close();
            m3806l.release();
            throw th;
        }
    }
}
