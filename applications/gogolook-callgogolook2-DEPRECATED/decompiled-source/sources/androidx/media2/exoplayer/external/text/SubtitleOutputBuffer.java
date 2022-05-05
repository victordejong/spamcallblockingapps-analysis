package androidx.media2.exoplayer.external.text;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.decoder.OutputBuffer;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/SubtitleOutputBuffer.class */
public abstract class SubtitleOutputBuffer extends OutputBuffer implements Subtitle {
    public long subsampleOffsetUs;
    @Nullable
    public Subtitle subtitle;

    @Override // androidx.media2.exoplayer.external.decoder.Buffer
    public void clear() {
        super.clear();
        this.subtitle = null;
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public List<Cue> getCues(long j) {
        return this.subtitle.getCues(j - this.subsampleOffsetUs);
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public long getEventTime(int i) {
        return this.subtitle.getEventTime(i) + this.subsampleOffsetUs;
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getEventTimeCount() {
        return this.subtitle.getEventTimeCount();
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return this.subtitle.getNextEventTimeIndex(j - this.subsampleOffsetUs);
    }

    @Override // androidx.media2.exoplayer.external.decoder.OutputBuffer
    public abstract void release();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setContent(long r6, androidx.media2.exoplayer.external.text.Subtitle r8, long r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r0.timeUs = r1
            r0 = r5
            r1 = r8
            r0.subtitle = r1
            r0 = r9
            r6 = r0
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001b
            r0 = r5
            long r0 = r0.timeUs
            r6 = r0
        L_0x001b:
            r0 = r5
            r1 = r6
            r0.subsampleOffsetUs = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.SubtitleOutputBuffer.setContent(long, androidx.media2.exoplayer.external.text.Subtitle, long):void");
    }
}
