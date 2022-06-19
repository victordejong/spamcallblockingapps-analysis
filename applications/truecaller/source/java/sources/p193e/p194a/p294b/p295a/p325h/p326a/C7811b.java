package p193e.p194a.p294b.p295a.p325h.p326a;

import androidx.lifecycle.LiveData;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import javax.inject.Inject;
import p193e.p194a.p294b.p295a.p296a.p301b.AbstractC7591a;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import s1.z.c.l;
/* renamed from: e.a.b.a.h.a.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/a/b.class */
public final class C7811b implements AbstractC7810a {

    /* renamed from: a */
    public final AbstractC7591a f24328a;

    @Inject
    public C7811b(AbstractC7591a abstractC7591a) {
        l.e(abstractC7591a, "bizProfileRepository");
        this.f24328a = abstractC7591a;
    }

    @Override // p193e.p194a.p294b.p295a.p325h.p326a.AbstractC7810a
    /* renamed from: a */
    public LiveData<AbstractC8042q<BusinessProfile>> mo29282a() {
        return this.f24328a.mo29503c();
    }
}
