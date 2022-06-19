package androidx.media2.player;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.AbstractC1668a;
import androidx.media2.exoplayer.external.metadata.AbstractC1669b;
import androidx.media2.exoplayer.external.metadata.C1671c;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.player.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/h.class */
public final class C2184h implements AbstractC1669b {
    @Override // androidx.media2.exoplayer.external.metadata.AbstractC1669b
    /* renamed from: a */
    public final boolean mo41193a(Format format) {
        return "application/id3".equals(format.sampleMimeType);
    }

    @Override // androidx.media2.exoplayer.external.metadata.AbstractC1669b
    /* renamed from: b */
    public final AbstractC1668a mo41192b(Format format) {
        return new AbstractC1668a() { // from class: androidx.media2.player.h.1
            @Override // androidx.media2.exoplayer.external.metadata.AbstractC1668a
            /* renamed from: a */
            public final Metadata mo41191a(C1671c c1671c) {
                long j = c1671c.f5495d;
                byte[] array = c1671c.f5494c.array();
                return new Metadata(new ByteArrayFrame(j, Arrays.copyOf(array, array.length)));
            }
        };
    }
}
