package p193e.p194a.p1124p.p1125a;

import com.truecaller.editprofile.C3890R;
import com.truecaller.editprofile.p164ui.EditProfileMvp$View;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.p.a.o */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/o.class */
public final class C19177o extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C19172m f53540b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19177o(C19172m c19172m) {
        super(1);
        this.f53540b = c19172m;
    }

    /* renamed from: d */
    public Object m13919d(Object obj) {
        Boolean bool = (Boolean) obj;
        C19172m c19172m = this.f53540b;
        c19172m.f53487e = null;
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View != null) {
            editProfileMvp$View.mo13980pz();
        }
        c19172m.f53498p = false;
        if (s1.z.c.l.a(bool, Boolean.FALSE)) {
            C19172m c19172m2 = this.f53540b;
            EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) c19172m2.f57683a;
            if (editProfileMvp$View2 != null) {
                String mo13768b = c19172m2.f53505w.mo13768b(C3890R.string.ErrorConnectionGeneral, new Object[0]);
                s1.z.c.l.d(mo13768b, "resourceProvider.getStri…g.ErrorConnectionGeneral)");
                editProfileMvp$View2.mo13988m(mo13768b);
            }
        }
        return s.a;
    }
}
