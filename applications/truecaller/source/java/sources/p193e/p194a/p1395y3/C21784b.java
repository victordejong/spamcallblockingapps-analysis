package p193e.p194a.p1395y3;

import com.truecaller.TrueApp;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.y3.b */
/* loaded from: classes9-dex2jar.jar:e/a/y3/b.class */
public final class C21784b implements AbstractC21783a {
    @Override // p193e.p194a.p1395y3.AbstractC21783a
    /* renamed from: a */
    public boolean mo9082a() {
        return TrueApp.m36032b0().mo28540W();
    }

    @Override // p193e.p194a.p1395y3.AbstractC21783a
    /* renamed from: b */
    public String mo9081b(String str) {
        l.e(str, "input");
        String str2 = str;
        if (str.length() > 0) {
            str2 = str;
            if (v.C(str) >= 2) {
                StringBuilder m8728C = C22128a.m8728C(str);
                m8728C.append(str.subSequence(0, 2));
                m8728C.append(str.subSequence(str.length() - 2, str.length()));
                String sb = m8728C.toString();
                l.e(sb, "$this$toSHA256");
                str2 = C19286f.m13669j(sb, "SHA-256");
            }
        }
        return str2;
    }
}
