package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.Format;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/MetadataDecoderFactory.class */
public interface MetadataDecoderFactory {
    public static final MetadataDecoderFactory DEFAULT = new 1();

    MetadataDecoder createDecoder(Format format);

    boolean supportsFormat(Format format);
}
