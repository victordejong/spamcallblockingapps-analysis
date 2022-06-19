package androidx.media2.exoplayer.external.metadata.emsg;

import androidx.media2.exoplayer.external.metadata.AbstractC1668a;
import androidx.media2.exoplayer.external.metadata.C1671c;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2018p;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.metadata.emsg.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/a.class */
public final class C1675a implements AbstractC1668a {
    /* renamed from: a */
    private static EventMessage m42405a(C2018p c2018p) {
        try {
            return new EventMessage((String) C1993a.m41690a(c2018p.m41516q()), (String) C1993a.m41690a(c2018p.m41516q()), c2018p.m41526g(), c2018p.m41526g(), Arrays.copyOfRange(c2018p.f8131a, c2018p.f8132b, c2018p.f8133c));
        } catch (RuntimeException e) {
            return null;
        }
    }

    @Override // androidx.media2.exoplayer.external.metadata.AbstractC1668a
    /* renamed from: a */
    public final Metadata mo41191a(C1671c c1671c) {
        ByteBuffer byteBuffer = (ByteBuffer) C1993a.m41690a(c1671c.f5494c);
        EventMessage m42405a = m42405a(new C2018p(byteBuffer.array(), byteBuffer.limit()));
        if (m42405a == null) {
            return null;
        }
        return new Metadata(m42405a);
    }
}
