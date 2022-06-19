package p193e.p194a.p294b.p354l;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.common.network.util.KnownEndpoints;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import u3.j0;
import u3.l0;
import x3.b;
import x3.h0.a;
import x3.h0.h;
import x3.h0.l;
import x3.h0.o;
import x3.h0.q;
/* renamed from: e.a.b.l.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/l/g.class */
public final class C8025g implements AbstractC8024f {

    /* renamed from: a */
    public final AbstractC8026a f24746a = (AbstractC8026a) C8367d.m28633a(KnownEndpoints.IMAGES, AbstractC8026a.class);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bb\u0018��2\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H'¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\n\u001a\u00020\u0002H'¢\u0006\u0004\b\u000b\u0010\u0007J\u001f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\n\u001a\u00020\u0002H'¢\u0006\u0004\b\f\u0010\u0007¨\u0006\r"}, d2 = {"e/a/b/l/g$a", "", "Lu3/j0;", "logo", "Lx3/b;", "Lu3/l0;", "d", "(Lu3/j0;)Lx3/b;", AbstractC2405c.f7629a, "()Lx3/b;", "picture", C22021b.f61237c, "a", "bizmon_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.b.l.g$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/g$a.class */
    public interface AbstractC8026a {
        @h(hasBody = true, method = "DELETE", path = "/v1/biz/gallery")
        /* renamed from: a */
        b<l0> m28955a(@a j0 j0Var);

        @o("/v1/biz/gallery")
        @l
        /* renamed from: b */
        b<l0> m28954b(@q("file\"; filename=\"picture.jpg\"") j0 j0Var);

        @x3.h0.b("/v1/biz/logo")
        /* renamed from: c */
        b<l0> m28953c();

        @o("/v1/biz/logo")
        @l
        /* renamed from: d */
        b<l0> m28952d(@q("file\"; filename=\"logo.jpg\"") j0 j0Var);
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8024f
    /* renamed from: a */
    public b<l0> mo28959a(j0 j0Var) {
        s1.z.c.l.e(j0Var, "picture");
        return this.f24746a.m28955a(j0Var);
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8024f
    /* renamed from: b */
    public b<l0> mo28958b(j0 j0Var) {
        s1.z.c.l.e(j0Var, "picture");
        return this.f24746a.m28954b(j0Var);
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8024f
    /* renamed from: c */
    public b<l0> mo28957c() {
        return this.f24746a.m28953c();
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8024f
    /* renamed from: d */
    public b<l0> mo28956d(@a j0 j0Var) {
        s1.z.c.l.e(j0Var, "logo");
        return this.f24746a.m28952d(j0Var);
    }
}
