package androidx.media2.exoplayer.external.extractor.mkv;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor.class */
public interface EbmlProcessor {
    public static final int ELEMENT_TYPE_BINARY = 4;
    public static final int ELEMENT_TYPE_FLOAT = 5;
    public static final int ELEMENT_TYPE_MASTER = 1;
    public static final int ELEMENT_TYPE_STRING = 3;
    public static final int ELEMENT_TYPE_UNKNOWN = 0;
    public static final int ELEMENT_TYPE_UNSIGNED_INT = 2;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor$ElementType.class */
    public @interface ElementType {
    }

    void binaryElement(int i, int i2, ExtractorInput extractorInput) throws IOException, InterruptedException;

    void endMasterElement(int i) throws ParserException;

    void floatElement(int i, double d) throws ParserException;

    int getElementType(int i);

    void integerElement(int i, long j) throws ParserException;

    boolean isLevel1Element(int i);

    void startMasterElement(int i, long j, long j2) throws ParserException;

    void stringElement(int i, String str) throws ParserException;
}
