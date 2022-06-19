package com.google.android.exoplayer2.upstream.cache;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/ContentMetadata.class */
public interface ContentMetadata {
    public static final String INTERNAL_METADATA_NAME_PREFIX = "exo_";

    boolean contains(String str);

    long get(String str, long j);

    String get(String str, String str2);

    byte[] get(String str, byte[] bArr);
}
