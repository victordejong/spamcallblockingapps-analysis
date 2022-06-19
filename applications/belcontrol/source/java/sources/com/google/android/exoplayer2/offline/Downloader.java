package com.google.android.exoplayer2.offline;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/Downloader.class */
public interface Downloader {
    void cancel();

    void download();

    float getDownloadPercentage();

    long getDownloadedBytes();

    void remove();
}
