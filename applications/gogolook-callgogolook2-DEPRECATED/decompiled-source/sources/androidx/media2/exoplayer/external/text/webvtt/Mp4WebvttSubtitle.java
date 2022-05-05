package androidx.media2.exoplayer.external.text.webvtt;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.Subtitle;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/Mp4WebvttSubtitle.class */
public final class Mp4WebvttSubtitle implements Subtitle {
    public final List<Cue> cues;

    public Mp4WebvttSubtitle(List<Cue> list) {
        this.cues = Collections.unmodifiableList(list);
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public List<Cue> getCues(long j) {
        return j >= 0 ? this.cues : Collections.emptyList();
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i == 0);
        return 0L;
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return j < 0 ? 0 : -1;
    }
}
