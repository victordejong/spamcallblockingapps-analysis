package p1727n3.p1874y.p1876b.p1877a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27068a;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0;
/* renamed from: n3.y.b.a.l */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/l.class */
public class HandlerC27095l extends Handler {

    /* renamed from: a */
    public final /* synthetic */ t f75736a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC27095l(t tVar, Looper looper) {
        super(looper);
        this.f75736a = tVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        t tVar = this.f75736a;
        Objects.requireNonNull(tVar);
        int i = message.what;
        boolean z = false;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException();
            }
            C27079e0 c27079e0 = (C27079e0) message.obj;
            if (message.arg1 != 0) {
                z = true;
            }
            if (z) {
                tVar.p--;
            }
            if (tVar.p != 0 || tVar.q.equals(c27079e0)) {
                return;
            }
            tVar.q = c27079e0;
            tVar.g(new AbstractC27068a.AbstractC27070b(c27079e0) { // from class: n3.y.b.a.j

                /* renamed from: a */
                public final C27079e0 f75716a;

                {
                    this.f75716a = c27079e0;
                }

                @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27068a.AbstractC27070b
                /* renamed from: a */
                public void mo572a(AbstractC27081f0.AbstractC27083b abstractC27083b) {
                    abstractC27083b.mo888J5(this.f75716a);
                }
            });
            return;
        }
        C27076d0 c27076d0 = (C27076d0) message.obj;
        int i2 = message.arg1;
        int i3 = message.arg2;
        boolean z2 = i3 != -1;
        int i4 = tVar.m - i2;
        tVar.m = i4;
        if (i4 != 0) {
            return;
        }
        C27076d0 m944a = c27076d0.f75676c == -9223372036854775807L ? c27076d0.m944a(c27076d0.f75675b, 0L, c27076d0.f75677d, c27076d0.f75685l) : c27076d0;
        if (!tVar.s.f75674a.m908p() && m944a.f75674a.m908p()) {
            tVar.u = 0;
            tVar.t = 0;
            tVar.v = 0L;
        }
        int i5 = tVar.n ? 0 : 2;
        boolean z3 = tVar.o;
        tVar.n = false;
        tVar.o = false;
        tVar.l(m944a, z2, i3, i5, z3);
    }
}
