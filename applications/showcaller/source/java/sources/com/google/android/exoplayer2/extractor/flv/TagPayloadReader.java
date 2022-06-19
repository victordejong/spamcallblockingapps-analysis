package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.util.C5536v;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader.class */
abstract class TagPayloadReader {

    /* renamed from: a */
    protected final AbstractC4996v f15727a;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException.class */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    public TagPayloadReader(AbstractC4996v abstractC4996v) {
        this.f15727a = abstractC4996v;
    }

    /* renamed from: a */
    public final boolean m20744a(C5536v c5536v, long j) {
        return mo20725b(c5536v) && mo20724c(c5536v, j);
    }

    /* renamed from: b */
    protected abstract boolean mo20725b(C5536v c5536v);

    /* renamed from: c */
    protected abstract boolean mo20724c(C5536v c5536v, long j);
}
