package androidx.media2.exoplayer.external.extractor.mkv;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mkv/EbmlReader.class */
public interface EbmlReader {
    void init(EbmlProcessor ebmlProcessor);

    boolean read(ExtractorInput extractorInput) throws IOException, InterruptedException;

    void reset();
}
