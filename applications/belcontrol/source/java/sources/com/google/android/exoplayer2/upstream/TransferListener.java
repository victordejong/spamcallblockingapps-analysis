package com.google.android.exoplayer2.upstream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/TransferListener.class */
public interface TransferListener<S> {
    void onBytesTransferred(S s, int i);

    void onTransferEnd(S s);

    void onTransferStart(S s, DataSpec dataSpec);
}
