package p193e.p194a.p1164r.p1165a;

import com.truecaller.account.network.CompleteOnboardingDto;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import e.m.e.k;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1070n2.p1071a.AbstractC18466c;
import p193e.p194a.p1070n2.p1071a.C18467d;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1164r.p1176r.C19764a;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.AbstractC8376a;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import s1.z.c.l;
import u3.b0;
/* renamed from: e.a.r.a.b */
/* loaded from: classes16-dex2jar.jar:e/a/r/a/b.class */
public final class C19705b {

    /* renamed from: a */
    public final k f54732a = new k();

    /* renamed from: a */
    public C19764a m12968a(CompleteOnboardingDto completeOnboardingDto) {
        l.e(completeOnboardingDto, "requestDto");
        l.e(completeOnboardingDto, "requestDto");
        C8365b c8365b = new C8365b();
        C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.ACCOUNT, AbstractC18466c.class);
        m8568t1.m28628b(AuthRequirement.NONE, null);
        m8568t1.f25759c = new AbstractC8376a.C8378b(true);
        c8365b.m28636d(C8363a.m28642a(m8568t1));
        b0 c18467d = new C18467d();
        l.e(c18467d, "interceptor");
        if (c8365b.f25718d == null) {
            c8365b.f25718d = new ArrayList();
        }
        List<b0> list = c8365b.f25718d;
        if (list != null) {
            list.add(c18467d);
        }
        return C19291g.m13601O1(((AbstractC18466c) c8365b.m28637c(AbstractC18466c.class)).m14893h(completeOnboardingDto).execute(), this.f54732a);
    }
}
