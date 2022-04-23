package androidx.media2.player;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.a;
import androidx.media2.exoplayer.external.metadata.b;
import androidx.media2.exoplayer.external.metadata.c;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/h.class */
final class h implements b {
    @Override // androidx.media2.exoplayer.external.metadata.b
    public final boolean a(Format format) {
        return "application/id3".equals(format.sampleMimeType);
    }

    @Override // androidx.media2.exoplayer.external.metadata.b
    public final a b(Format format) {
        return new a() { // from class: androidx.media2.player.h.1
            @Override // androidx.media2.exoplayer.external.metadata.a
            public final Metadata a(c cVar) {
                long j = cVar.f2950d;
                byte[] array = cVar.f2949c.array();
                return new Metadata(new ByteArrayFrame(j, Arrays.copyOf(array, array.length)));
            }
        };
    }
}
