package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/ParsingLoadable$Parser.class */
public interface ParsingLoadable$Parser<T> {
    T parse(Uri uri, InputStream inputStream);
}
