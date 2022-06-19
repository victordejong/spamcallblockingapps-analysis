package com.google.android.exoplayer2.upstream;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/DataSource.class */
public interface DataSource {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/DataSource$Factory.class */
    public interface Factory {
        DataSource createDataSource();
    }

    void close();

    Uri getUri();

    long open(DataSpec dataSpec);

    int read(byte[] bArr, int i, int i2);
}
