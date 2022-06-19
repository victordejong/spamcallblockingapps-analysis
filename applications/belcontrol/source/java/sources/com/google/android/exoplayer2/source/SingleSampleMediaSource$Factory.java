package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.util.Assertions;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/SingleSampleMediaSource$Factory.class */
public final class SingleSampleMediaSource$Factory {
    private final DataSource.Factory dataSourceFactory;
    private boolean isCreateCalled;
    private int minLoadableRetryCount = 3;
    private Object tag;
    private boolean treatLoadErrorsAsEndOfStream;

    public SingleSampleMediaSource$Factory(DataSource.Factory factory) {
        this.dataSourceFactory = (DataSource.Factory) Assertions.checkNotNull(factory);
    }

    public SingleSampleMediaSource createMediaSource(Uri uri, Format format, long j) {
        this.isCreateCalled = true;
        return new SingleSampleMediaSource(uri, this.dataSourceFactory, format, j, this.minLoadableRetryCount, this.treatLoadErrorsAsEndOfStream, this.tag, (SingleSampleMediaSource$1) null);
    }

    @Deprecated
    public SingleSampleMediaSource createMediaSource(Uri uri, Format format, long j, Handler handler, MediaSourceEventListener mediaSourceEventListener) {
        SingleSampleMediaSource createMediaSource = createMediaSource(uri, format, j);
        if (handler != null && mediaSourceEventListener != null) {
            createMediaSource.addEventListener(handler, mediaSourceEventListener);
        }
        return createMediaSource;
    }

    public SingleSampleMediaSource$Factory setMinLoadableRetryCount(int i) {
        Assertions.checkState(!this.isCreateCalled);
        this.minLoadableRetryCount = i;
        return this;
    }

    public SingleSampleMediaSource$Factory setTag(Object obj) {
        Assertions.checkState(!this.isCreateCalled);
        this.tag = obj;
        return this;
    }

    public SingleSampleMediaSource$Factory setTreatLoadErrorsAsEndOfStream(boolean z) {
        Assertions.checkState(!this.isCreateCalled);
        this.treatLoadErrorsAsEndOfStream = z;
        return this;
    }
}
