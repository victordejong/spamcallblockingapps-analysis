package p1727n3.p1874y.p1906c;

import androidx.media2.common.SessionPlayer;
import androidx.media2.exoplayer.external.Format;
import java.util.List;
import p1727n3.p1874y.p1906c.C27470d1;
import p1727n3.p1874y.p1906c.C27477j0;
/* renamed from: n3.y.c.b1$a */
/* loaded from: classes-dex2jar.jar:n3/y/c/b1$a.class */
public class b1$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f77311a;

    /* renamed from: b */
    public final /* synthetic */ int f77312b;

    /* renamed from: c */
    public final /* synthetic */ b1 f77313c;

    public b1$a(b1 b1Var, int i, int i2) {
        this.f77313c = b1Var;
        this.f77311a = i;
        this.f77312b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        C27477j0.a aVar = this.f77313c.j;
        int i = this.f77311a;
        int i2 = this.f77312b;
        C27477j0 c27477j0 = aVar.a;
        C27470d1 c27470d1 = c27477j0.f77352j;
        int i3 = 0;
        while (true) {
            if (i3 >= c27470d1.f77328h.size()) {
                z = false;
                break;
            }
            C27470d1.a valueAt = c27470d1.f77328h.valueAt(i3);
            if (valueAt.c == i && valueAt.d == -1) {
                int i4 = valueAt.f77336b.a;
                c27470d1.f77328h.put(i4, new C27470d1.a(valueAt.f77335a, i, valueAt.e, i2, i4));
                C27470d1.a aVar2 = c27470d1.f77333m;
                if (aVar2 != null && aVar2.f77335a == i3) {
                    c27470d1.f77323c.K(i, i2);
                }
                z = true;
            } else {
                i3++;
            }
        }
        if (!z) {
            int i5 = c27470d1.f77334n;
            int i6 = c27470d1.f77321a;
            c27470d1.f77321a = i6 + 1;
            C27470d1.a aVar3 = new C27470d1.a(i5, i, (Format) null, i2, i6);
            c27470d1.f77328h.put(aVar3.f77336b.a, aVar3);
            c27470d1.f77329i = true;
        }
        C27470d1 c27470d12 = c27477j0.f77352j;
        boolean z2 = c27470d12.f77329i;
        c27470d12.f77329i = false;
        if (z2) {
            m mVar = c27477j0.f77344b;
            List<SessionPlayer.TrackInfo> m226e = c27477j0.m226e();
            m mVar2 = mVar;
            mVar2.h(new a(mVar2, m226e));
        }
    }
}
