package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder.class */
public final class ExtractorMediaPeriod$ExtractorHolder {
    private Extractor extractor;
    private final ExtractorOutput extractorOutput;
    private final Extractor[] extractors;

    public ExtractorMediaPeriod$ExtractorHolder(Extractor[] extractorArr, ExtractorOutput extractorOutput) {
        this.extractors = extractorArr;
        this.extractorOutput = extractorOutput;
    }

    public void release() {
        Extractor extractor = this.extractor;
        if (extractor != null) {
            extractor.release();
            this.extractor = null;
        }
    }

    public Extractor selectExtractor(ExtractorInput extractorInput, Uri uri) {
        Extractor extractor = this.extractor;
        if (extractor != null) {
            return extractor;
        }
        Extractor[] extractorArr = this.extractors;
        int length = extractorArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Extractor extractor2 = extractorArr[i];
            try {
            } catch (EOFException e) {
            } catch (Throwable th) {
                extractorInput.resetPeekPosition();
                throw th;
            }
            if (extractor2.sniff(extractorInput)) {
                this.extractor = extractor2;
                extractorInput.resetPeekPosition();
                break;
            }
            continue;
            extractorInput.resetPeekPosition();
            i++;
        }
        Extractor extractor3 = this.extractor;
        if (extractor3 != null) {
            extractor3.init(this.extractorOutput);
            return this.extractor;
        }
        throw new UnrecognizedInputFormatException("None of the available extractors (" + Util.getCommaDelimitedSimpleClassNames(this.extractors) + ") could read the stream.", uri);
    }
}
