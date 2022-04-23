package androidx.media2.exoplayer.external.metadata.emsg;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.c;
import androidx.media2.exoplayer.external.util.p;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/a.class */
public final class a implements androidx.media2.exoplayer.external.metadata.a {
    private static EventMessage a(p pVar) {
        try {
            return new EventMessage((String) androidx.media2.exoplayer.external.util.a.a(pVar.q()), (String) androidx.media2.exoplayer.external.util.a.a(pVar.q()), pVar.g(), pVar.g(), Arrays.copyOfRange(pVar.f4166a, pVar.f4167b, pVar.f4168c));
        } catch (RuntimeException e) {
            return null;
        }
    }

    @Override // androidx.media2.exoplayer.external.metadata.a
    public final Metadata a(c cVar) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media2.exoplayer.external.util.a.a(cVar.f2949c);
        EventMessage a2 = a(new p(byteBuffer.array(), byteBuffer.limit()));
        if (a2 == null) {
            return null;
        }
        return new Metadata(a2);
    }
}
