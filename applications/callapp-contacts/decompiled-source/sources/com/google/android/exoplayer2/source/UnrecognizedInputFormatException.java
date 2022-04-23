package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/UnrecognizedInputFormatException.class */
public class UnrecognizedInputFormatException extends ParserException {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f21531a;

    public UnrecognizedInputFormatException(String str, Uri uri) {
        super(str);
        this.f21531a = uri;
    }
}
