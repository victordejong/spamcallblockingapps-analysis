package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.text.TextOutput;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/Util$$Lambda$1.class */
public final /* synthetic */ class Util$$Lambda$1 implements TextOutput {
    public static final TextOutput $instance = new Util$$Lambda$1();

    @Override // androidx.media2.exoplayer.external.text.TextOutput
    public void onCues(List list) {
        Util.lambda$getRendererCapabilities$1$Util(list);
    }
}
