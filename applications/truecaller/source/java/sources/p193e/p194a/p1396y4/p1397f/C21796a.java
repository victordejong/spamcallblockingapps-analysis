package p193e.p194a.p1396y4.p1397f;

import java.util.ArrayList;
import p193e.p194a.p1342w4.p1345t.p1346a.C21295a;
import s1.k;
import s1.u.i;
import s1.z.b.l;
/* renamed from: e.a.y4.f.a */
/* loaded from: classes13-dex2jar.jar:e/a/y4/f/a.class */
public final class C21796a implements AbstractC21805f {

    /* renamed from: a */
    public static final C21796a f60654a = new C21796a();

    @Override // p193e.p194a.p1396y4.p1397f.AbstractC21805f
    /* renamed from: a */
    public k mo9045a(String str, String str2) {
        String str3;
        if (str != null) {
            ArrayList arrayList = new ArrayList(str.length());
            for (int i = 0; i < str.length(); i++) {
                arrayList.add(Character.valueOf(C21295a.m9938b(str.charAt(i))));
            }
            str3 = i.O(arrayList, "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62);
        } else {
            str3 = null;
        }
        return new k(str3, (Object) null);
    }
}
