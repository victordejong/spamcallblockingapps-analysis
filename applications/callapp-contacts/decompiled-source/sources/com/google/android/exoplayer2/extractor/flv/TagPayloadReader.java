package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader.class */
abstract class TagPayloadReader {

    /* renamed from: d  reason: collision with root package name */
    protected final x f21091d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException.class */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TagPayloadReader(x xVar) {
        this.f21091d = xVar;
    }

    protected abstract boolean a(u uVar) throws ParserException;

    protected abstract boolean a(u uVar, long j) throws ParserException;

    public final boolean b(u uVar, long j) throws ParserException {
        return a(uVar) && a(uVar, j);
    }
}
