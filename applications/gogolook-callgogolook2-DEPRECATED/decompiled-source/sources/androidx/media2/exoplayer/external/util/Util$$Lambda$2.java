package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.MetadataOutput;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/Util$$Lambda$2.class */
public final /* synthetic */ class Util$$Lambda$2 implements MetadataOutput {
    public static final MetadataOutput $instance = new Util$$Lambda$2();

    @Override // androidx.media2.exoplayer.external.metadata.MetadataOutput
    public void onMetadata(Metadata metadata) {
        Util.lambda$getRendererCapabilities$2$Util(metadata);
    }
}
