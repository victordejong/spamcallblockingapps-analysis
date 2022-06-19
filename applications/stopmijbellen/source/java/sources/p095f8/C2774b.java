package p095f8;

import p211q6.C4157b;
import p222r6.C4224h;
import p303z2.C5056q;
/* renamed from: f8.b */
/* loaded from: classes2-dex2jar.jar:f8/b.class */
public class C2774b {

    /* renamed from: a */
    public C4157b f9476a;

    /* renamed from: a */
    public C2774b m3136a() {
        if (this.f9476a == null) {
            m3133d();
        }
        this.f9476a.m1351a().addOnCompleteListener(new C5056q(this, 4));
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: b */
    public long m3135b(String str) {
        char c;
        if (this.f9476a == null) {
            m3133d();
        }
        C4224h c4224h = this.f9476a.f13121h;
        Long m1278d = C4224h.m1278d(c4224h.f13233c, str);
        if (m1278d != null) {
            c4224h.m1281a(str, C4224h.m1280b(c4224h.f13233c));
            c = m1278d.longValue();
        } else {
            Long m1278d2 = C4224h.m1278d(c4224h.f13234d, str);
            if (m1278d2 != null) {
                c = m1278d2.longValue();
            } else {
                C4224h.m1276f(str, "Long");
                c = 0;
            }
        }
        return c;
    }

    /* renamed from: c */
    public String m3134c(String str) {
        String str2;
        if (this.f9476a == null) {
            m3133d();
        }
        C4224h c4224h = this.f9476a.f13121h;
        String m1277e = C4224h.m1277e(c4224h.f13233c, str);
        if (m1277e != null) {
            c4224h.m1281a(str, C4224h.m1280b(c4224h.f13233c));
            str2 = m1277e;
        } else {
            String m1277e2 = C4224h.m1277e(c4224h.f13234d, str);
            if (m1277e2 != null) {
                str2 = m1277e2;
            } else {
                C4224h.m1276f(str, "String");
                str2 = "";
            }
        }
        return str2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|64|3|(7:5|6|(2:7|(4:9|(2:11|12)(2:13|(4:15|16|(4:18|(1:23)(1:22)|24|25)|26)(2:27|(2:29|(6:31|32|33|(2:35|(2:39|40))(2:41|(2:43|44))|45|(2:47|(2:49|50)(2:51|52))(2:53|54)))))|55|56)(0))|57|58|61|62)(0)|66|57|58|61|62) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01dc, code lost:
        com.google.android.gms.tasks.Tasks.forResult(null);
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p095f8.C2774b m3133d() {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p095f8.C2774b.m3133d():f8.b");
    }
}
