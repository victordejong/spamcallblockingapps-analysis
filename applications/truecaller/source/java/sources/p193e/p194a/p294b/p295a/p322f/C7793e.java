package p193e.p194a.p294b.p295a.p322f;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import kotlin.Metadata;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import s1.z.c.l;
import u3.l0;
import x3.b;
import x3.h0.a;
import x3.h0.f;
import x3.h0.o;
/* renamed from: e.a.b.a.f.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/f/e.class */
public final class C7793e implements AbstractC7792d {

    /* renamed from: a */
    public final AbstractC7794a f24255a = (AbstractC7794a) C8367d.m28633a(KnownEndpoints.COMPANYPROFILE, AbstractC7794a.class);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bb\u0018��2\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H'¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"e/a/b/a/f/e$a", "", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "businessProfile", "Lx3/b;", "Lu3/l0;", "A", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Lx3/b;", "B", "()Lx3/b;", "bizmon_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.b.a.f.e$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/e$a.class */
    public interface AbstractC7794a {
        @o("/v1/company")
        /* renamed from: A */
        b<l0> m29287A(@a BusinessProfile businessProfile);

        @f("/v1/company")
        /* renamed from: B */
        b<l0> m29286B();
    }

    @Override // p193e.p194a.p294b.p295a.p322f.AbstractC7792d
    /* renamed from: A */
    public b<l0> mo29289A(@a BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        return this.f24255a.m29287A(businessProfile);
    }

    @Override // p193e.p194a.p294b.p295a.p322f.AbstractC7792d
    /* renamed from: B */
    public b<l0> mo29288B() {
        return this.f24255a.m29286B();
    }
}
