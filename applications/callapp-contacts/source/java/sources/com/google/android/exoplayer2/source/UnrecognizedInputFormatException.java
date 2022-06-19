package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/UnrecognizedInputFormatException.class */
public class UnrecognizedInputFormatException extends ParserException {

    /* renamed from: a */
    public final Uri f36965a;

    public UnrecognizedInputFormatException(String str, Uri uri) {
        super(str);
        this.f36965a = uri;
    }
}
