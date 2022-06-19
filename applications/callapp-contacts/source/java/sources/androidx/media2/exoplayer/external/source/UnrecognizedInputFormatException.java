package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.media2.exoplayer.external.ParserException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/UnrecognizedInputFormatException.class */
public class UnrecognizedInputFormatException extends ParserException {

    /* renamed from: a */
    public final Uri f6747a;

    public UnrecognizedInputFormatException(String str, Uri uri) {
        super(str);
        this.f6747a = uri;
    }
}
