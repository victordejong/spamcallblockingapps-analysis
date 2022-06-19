package p193e.p194a.p1396y4.p1397f;

import com.tenor.android.core.constant.StringConstant;
import s1.f0.w;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.y4.f.c */
/* loaded from: classes13-dex2jar.jar:e/a/y4/f/c.class */
public final class C21802c {

    /* renamed from: a */
    public final AbstractC21805f[] f60662a;

    public C21802c(AbstractC21805f... abstractC21805fArr) {
        l.e(abstractC21805fArr, "sortingMappers");
        this.f60662a = abstractC21805fArr;
    }

    /* renamed from: a */
    public final String m9048a(String str) {
        String str2;
        Character l0;
        if (str == null || (l0 = w.l0(str)) == null) {
            str2 = null;
        } else {
            char charValue = l0.charValue();
            str2 = Character.isLetter(charValue) ? String.valueOf(Character.toUpperCase(charValue)) : Character.isDigit(charValue) ? StringConstant.HASH : "?";
        }
        return str2;
    }

    /* renamed from: b */
    public final k<String, String> m9047b(String str) {
        AbstractC21805f[] abstractC21805fArr = this.f60662a;
        k<String, String> kVar = new k<>(str, (Object) null);
        for (AbstractC21805f abstractC21805f : abstractC21805fArr) {
            String str2 = (String) kVar.a;
            String str3 = (String) kVar.b;
            k<String, String> mo9045a = abstractC21805f.mo9045a(str2, str3);
            String str4 = (String) mo9045a.a;
            String str5 = (String) mo9045a.b;
            if (str5 != null) {
                str3 = str5;
            }
            kVar = new k<>(str4, str3);
        }
        return kVar;
    }
}
