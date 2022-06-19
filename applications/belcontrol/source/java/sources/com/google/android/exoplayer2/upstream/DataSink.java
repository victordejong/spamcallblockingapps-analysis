package com.google.android.exoplayer2.upstream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/DataSink.class */
public interface DataSink {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/DataSink$Factory.class */
    public interface Factory {
        DataSink createDataSink();
    }

    void close();

    void open(DataSpec dataSpec);

    void write(byte[] bArr, int i, int i2);
}
