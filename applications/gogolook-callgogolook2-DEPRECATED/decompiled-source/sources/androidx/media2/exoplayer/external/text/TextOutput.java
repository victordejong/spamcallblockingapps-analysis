package androidx.media2.exoplayer.external.text;

import androidx.annotation.RestrictTo;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/TextOutput.class */
public interface TextOutput {
    void onCues(List<Cue> list);
}
