package p193e.p194a.p1195s.p1205o;

import com.truecaller.callhero_assistant.network.ErrorResponseDto;
import e.m.e.k;
import java.io.InputStreamReader;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
import u3.b0;
import u3.f0;
import u3.g0;
import u3.k0;
import u3.l0;
import u3.p0.g.c;
import u3.y;
import u3.z;
import v3.f;
import v3.h;
/* renamed from: e.a.s.o.c */
/* loaded from: classes17-dex2jar.jar:e/a/s/o/c.class */
public final class C20101c implements AbstractC20098a {

    /* renamed from: a */
    public final k f56713a = new k();

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public k0 m11544a(b0.a aVar) {
        h q;
        f buffer;
        l.e(aVar, "chain");
        k0 a = aVar.a(aVar.request());
        if (a.e == 200) {
            return a;
        }
        l0 l0Var = a.h;
        if (l0Var == null || (q = l0Var.q()) == null || (buffer = q.getBuffer()) == null) {
            return a;
        }
        f.a aVar2 = new f.a(buffer.b());
        try {
            ErrorResponseDto errorResponseDto = (ErrorResponseDto) this.f56713a.d(new InputStreamReader(aVar2), ErrorResponseDto.class);
            C25225a.m4016G(aVar2, null);
            if (!l.a(errorResponseDto.getSuccess(), Boolean.FALSE)) {
                return a;
            }
            l.f(a, "response");
            g0 g0Var = a.b;
            f0 f0Var = a.c;
            String str = a.d;
            y yVar = a.f;
            z.a c = a.g.c();
            l0 l0Var2 = a.h;
            k0 k0Var = a.i;
            k0 k0Var2 = a.j;
            k0 k0Var3 = a.k;
            long j = a.l;
            long j2 = a.m;
            c cVar = a.n;
            if (1 == 0) {
                throw new IllegalStateException(("code < 0: 500").toString());
            } else if (g0Var == null) {
                throw new IllegalStateException("request == null".toString());
            } else {
                if (f0Var == null) {
                    throw new IllegalStateException("protocol == null".toString());
                }
                if (str == null) {
                    throw new IllegalStateException("message == null".toString());
                }
                return new k0(g0Var, f0Var, str, 500, yVar, c.d(), l0Var2, k0Var, k0Var2, k0Var3, j, j2, cVar);
            }
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }
}
