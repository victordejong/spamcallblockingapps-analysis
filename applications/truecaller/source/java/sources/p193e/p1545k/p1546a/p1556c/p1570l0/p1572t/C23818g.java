package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23366b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23912e;
/* renamed from: e.k.a.c.l0.t.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/g.class */
public class C23818g extends AbstractC23849p0<ByteBuffer> {
    public C23818g() {
        super(ByteBuffer.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        if (byteBuffer.hasArray()) {
            int position = byteBuffer.position();
            byte[] array = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset();
            int limit = byteBuffer.limit();
            Objects.requireNonNull(abstractC23372g);
            abstractC23372g.mo5870S(C23366b.f64606b, array, arrayOffset + position, limit - position);
            return;
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        if (asReadOnlyBuffer.position() > 0) {
            asReadOnlyBuffer.rewind();
        }
        C23912e c23912e = new C23912e(asReadOnlyBuffer);
        int remaining = asReadOnlyBuffer.remaining();
        Objects.requireNonNull(abstractC23372g);
        abstractC23372g.mo5873Q(C23366b.f64606b, c23912e, remaining);
        c23912e.close();
    }
}
