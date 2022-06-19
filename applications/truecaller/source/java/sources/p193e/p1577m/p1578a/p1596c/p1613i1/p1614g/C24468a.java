package p193e.p1577m.p1578a.p1596c.p1613i1.p1614g;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24462b;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24465d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.i1.g.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/g/a.class */
public final class C24468a implements AbstractC24462b {
    @Override // p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24462b
    /* renamed from: a */
    public Metadata mo5044a(C24465d c24465d) {
        ByteBuffer byteBuffer = c24465d.f67301b;
        Objects.requireNonNull(byteBuffer);
        C24798t c24798t = new C24798t(byteBuffer.array(), byteBuffer.limit());
        String m4534l = c24798t.m4534l();
        Objects.requireNonNull(m4534l);
        String m4534l2 = c24798t.m4534l();
        Objects.requireNonNull(m4534l2);
        return new Metadata(new EventMessage(m4534l, m4534l2, c24798t.m4528r(), c24798t.m4528r(), Arrays.copyOfRange(c24798t.f69504a, c24798t.f69505b, c24798t.f69506c)));
    }
}
