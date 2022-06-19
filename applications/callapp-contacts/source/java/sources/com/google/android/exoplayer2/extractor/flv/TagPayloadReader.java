package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.util.C11628u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader.class */
abstract class TagPayloadReader {

    /* renamed from: d */
    protected final AbstractC11150x f35970d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException.class */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    public TagPayloadReader(AbstractC11150x abstractC11150x) {
        this.f35970d = abstractC11150x;
    }

    /* renamed from: a */
    protected abstract boolean mo21576a(C11628u c11628u) throws ParserException;

    /* renamed from: a */
    protected abstract boolean mo21575a(C11628u c11628u, long j) throws ParserException;

    /* renamed from: b */
    public final boolean m21588b(C11628u c11628u, long j) throws ParserException {
        return mo21576a(c11628u) && mo21575a(c11628u, j);
    }
}
