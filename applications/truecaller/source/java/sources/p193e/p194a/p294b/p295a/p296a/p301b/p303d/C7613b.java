package p193e.p194a.p294b.p295a.p296a.p301b.p303d;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import s1.s;
import s1.w.d;
import s1.z.c.m;
import u3.j0;
import u3.l0;
import x3.a0;
import x3.h0.a;
import x3.h0.b;
import x3.h0.f;
import x3.h0.l;
import x3.h0.n;
import x3.h0.o;
import x3.h0.q;
/* renamed from: e.a.b.a.a.b.d.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/b.class */
public final class C7613b {

    /* renamed from: a */
    public final AbstractC7614a f23954a = (AbstractC7614a) C8367d.m28633a(KnownEndpoints.COMPANYPROFILE, AbstractC7614a.class);

    /* renamed from: b */
    public final AbstractC7614a f23955b = (AbstractC7614a) C8367d.m28632b(KnownEndpoints.IMAGES, AbstractC7614a.class, C7615b.f23956b);

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bb\u0018��2\u00020\u0001J\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H§@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0006H§@ø\u0001��¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\r\u001a\u00020\u000bH'¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H§@ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"e/a/b/a/a/b/d/b$a", "", "Lx3/a0;", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "a", "(Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;", "bizProfilePatch", "Ls1/s;", "d", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;Ls1/w/d;)Ljava/lang/Object;", "Lu3/j0;", "logo", "type", "Lx3/b;", "Lu3/l0;", AbstractC2405c.f7629a, "(Lu3/j0;Lu3/j0;)Lx3/b;", C22021b.f61237c, "bizmon_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.b.a.a.b.d.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/b$a.class */
    public interface AbstractC7614a {
        @f("/v1/company")
        /* renamed from: a */
        Object m29488a(d<? super a0<BusinessProfile>> dVar);

        @b("/v1/company")
        /* renamed from: b */
        Object m29487b(d<? super a0<BusinessProfile>> dVar);

        @o("/v1/image")
        @l
        /* renamed from: c */
        x3.b<l0> m29486c(@q("file\"; filename=\"businessPhoto.jpg\"") j0 j0Var, @q("type") j0 j0Var2);

        @n("/v1/company")
        /* renamed from: d */
        Object m29485d(@a BusinessProfileRequest businessProfileRequest, d<? super a0<s>> dVar);
    }

    /* renamed from: e.a.b.a.a.b.d.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/b$b.class */
    public static final class C7615b extends m implements s1.z.b.l<C8365b, s> {

        /* renamed from: b */
        public static final C7615b f23956b = new C7615b();

        public C7615b() {
            super(1);
        }

        /* renamed from: d */
        public Object m29484d(Object obj) {
            C8365b c8365b = (C8365b) obj;
            s1.z.c.l.e(c8365b, "it");
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            c8365b.f25721g = 30000;
            c8365b.f25722h = timeUnit;
            return s.a;
        }
    }
}
