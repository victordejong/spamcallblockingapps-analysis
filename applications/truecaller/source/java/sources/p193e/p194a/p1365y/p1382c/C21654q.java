package p193e.p194a.p1365y.p1382c;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.flashsdk.models.FlashRequest;
import com.truecaller.flashsdk.models.MediaUrl;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import u3.d0;
import u3.e0;
import u3.j0;
import u3.l0;
import x3.b;
import x3.h0.a;
import x3.h0.f;
import x3.h0.l;
import x3.h0.o;
import x3.h0.q;
import x3.h0.r;
import x3.h0.s;
import x3.h0.y;
/* renamed from: e.a.y.c.q */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/q.class */
public final class C21654q implements AbstractC21653p {

    /* renamed from: a */
    public final e0 f60360a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"e/a/y/c/q$a", "", "", "phoneNumber", "Lx3/b;", "Lu3/l0;", "a", "(Ljava/lang/String;)Lx3/b;", "flash_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.y.c.q$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/q$a.class */
    public interface AbstractC21655a {
        @f("v0/token/{phoneNumber}")
        /* renamed from: a */
        b<l0> m9234a(@s("phoneNumber") String str);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\u0004\u0010\u0005J?\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00062\u0014\b\u0001\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\f\u001a\u00020\u000bH'¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"e/a/y/c/q$b", "", "Lx3/b;", "Lcom/truecaller/flashsdk/models/MediaUrl;", C22021b.f61237c, "()Lx3/b;", "", "url", "", "Lu3/j0;", "partMap", "Lu3/d0$c;", "file", "Lu3/l0;", "a", "(Ljava/lang/String;Ljava/util/Map;Lu3/d0$c;)Lx3/b;", "flash_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.y.c.q$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/q$b.class */
    public interface AbstractC21656b {
        @o
        @l
        /* renamed from: a */
        b<l0> m9233a(@y String str, @r Map<String, j0> map, @q d0.c cVar);

        @f("v0/urls ")
        /* renamed from: b */
        b<MediaUrl> m9232b();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"e/a/y/c/q$c", "", "Lcom/truecaller/flashsdk/models/FlashRequest;", "flashRequest", "Lx3/b;", "Lu3/l0;", "a", "(Lcom/truecaller/flashsdk/models/FlashRequest;)Lx3/b;", "flash_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.y.c.q$c */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/q$c.class */
    public interface AbstractC21657c {
        @o("v0/message")
        /* renamed from: a */
        b<l0> m9231a(@a FlashRequest flashRequest);
    }

    public C21654q(e0 e0Var) {
        s1.z.c.l.e(e0Var, "httpClient");
        this.f60360a = e0Var;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21653p
    /* renamed from: a */
    public b<l0> mo9238a(String str, Map<String, ? extends j0> map, d0.c cVar) {
        s1.z.c.l.e(str, "url");
        s1.z.c.l.e(map, "partMap");
        s1.z.c.l.e(cVar, "file");
        C8365b c8365b = new C8365b();
        c8365b.m28639a(KnownEndpoints.FLASH);
        c8365b.m28634f(AbstractC21656b.class);
        c8365b.m28636d(this.f60360a);
        return ((AbstractC21656b) c8365b.m28637c(AbstractC21656b.class)).m9233a(str, map, cVar);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21653p
    /* renamed from: b */
    public b<MediaUrl> mo9237b() {
        return ((AbstractC21656b) C8367d.m28633a(KnownEndpoints.FLASH, AbstractC21656b.class)).m9232b();
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21653p
    /* renamed from: c */
    public b<l0> mo9236c(String str) {
        s1.z.c.l.e(str, "phoneNumber");
        return ((AbstractC21655a) C8367d.m28633a(KnownEndpoints.PUSHID, AbstractC21655a.class)).m9234a(str);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21653p
    /* renamed from: d */
    public b<l0> mo9235d(FlashRequest flashRequest) {
        s1.z.c.l.e(flashRequest, "flashRequest");
        return ((AbstractC21657c) C8367d.m28633a(KnownEndpoints.FLASH, AbstractC21657c.class)).m9231a(flashRequest);
    }
}
