package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.Format;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/SubtitleDecoderFactory.class */
public interface SubtitleDecoderFactory {
    public static final SubtitleDecoderFactory DEFAULT = new 1();

    SubtitleDecoder createDecoder(Format format);

    boolean supportsFormat(Format format);
}
