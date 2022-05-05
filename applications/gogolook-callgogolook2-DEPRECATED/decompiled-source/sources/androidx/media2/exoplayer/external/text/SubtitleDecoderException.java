package androidx.media2.exoplayer.external.text;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/SubtitleDecoderException.class */
public class SubtitleDecoderException extends Exception {
    public SubtitleDecoderException(Exception exc) {
        super(exc);
    }

    public SubtitleDecoderException(String str) {
        super(str);
    }

    public SubtitleDecoderException(String str, Throwable th) {
        super(str, th);
    }
}
