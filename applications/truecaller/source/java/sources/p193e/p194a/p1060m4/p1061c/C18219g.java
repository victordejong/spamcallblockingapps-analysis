package p193e.p194a.p1060m4.p1061c;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.profile.data.dto.Profile;
import com.truecaller.profile.data.dto.ProfileResponse;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import s1.z.c.l;
import u3.l0;
import x3.b;
import x3.h0.a;
import x3.h0.f;
import x3.h0.o;
/* renamed from: e.a.m4.c.g */
/* loaded from: classes12-dex2jar.jar:e/a/m4/c/g.class */
public final class C18219g implements AbstractC18218f {

    /* renamed from: a */
    public final AbstractC18220a f51521a = (AbstractC18220a) C8367d.m28633a(KnownEndpoints.PROFILE, AbstractC18220a.class);

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0006H'¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"e/a/m4/c/g$a", "", "Lx3/b;", "Lcom/truecaller/profile/data/dto/ProfileResponse;", "a", "()Lx3/b;", "Lcom/truecaller/profile/data/dto/Profile;", "profile", "Lu3/l0;", C22021b.f61237c, "(Lcom/truecaller/profile/data/dto/Profile;)Lx3/b;", "profile_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.m4.c.g$a */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/g$a.class */
    public interface AbstractC18220a {
        @f("/v3/profile")
        /* renamed from: a */
        b<ProfileResponse> m15404a();

        @o("/v4/profile")
        /* renamed from: b */
        b<l0> m15403b(@a Profile profile);
    }

    @Override // p193e.p194a.p1060m4.p1061c.AbstractC18218f
    /* renamed from: a */
    public b<ProfileResponse> mo15406a() {
        return this.f51521a.m15404a();
    }

    @Override // p193e.p194a.p1060m4.p1061c.AbstractC18218f
    /* renamed from: b */
    public b<l0> mo15405b(@a Profile profile) {
        l.e(profile, "profile");
        return this.f51521a.m15403b(profile);
    }
}
