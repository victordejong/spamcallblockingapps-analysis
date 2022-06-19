package p193e.p194a.p294b.p295a.p296a.p297a;

import android.os.Bundle;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import s1.s;
import s1.z.b.a;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.b.a.a.a.q */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/q.class */
public final /* synthetic */ class C7573q extends j implements a<s> {
    public C7573q(C7559k c7559k) {
        super(0, c7559k, C7559k.class, "onDescClicked", "onDescClicked()V", 0);
    }

    public Object invoke() {
        C7559k c7559k = (C7559k) ((b) this).b;
        int i = C7559k.f23871i;
        AbstractC8042q<BusinessProfile> m42869d = c7559k.m29519PA().f23992i.m42869d();
        if (!(m42869d instanceof AbstractC8042q.C8045c)) {
            m42869d = null;
        }
        AbstractC8042q.C8045c c8045c = (AbstractC8042q.C8045c) m42869d;
        String str = null;
        if (c8045c != null) {
            BusinessProfile businessProfile = (BusinessProfile) c8045c.f24773a;
            str = null;
            if (businessProfile != null) {
                str = businessProfile.getAbout();
            }
        }
        C7534e0 c7534e0 = new C7534e0();
        Bundle bundle = new Bundle();
        bundle.putString("biz_desc", str);
        c7534e0.setArguments(bundle);
        c7534e0.show(c7559k.getParentFragmentManager(), C7534e0.class.getSimpleName());
        return s.a;
    }
}
