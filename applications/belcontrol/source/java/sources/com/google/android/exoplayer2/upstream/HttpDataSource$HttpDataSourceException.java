package com.google.android.exoplayer2.upstream;

import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException.class */
public class HttpDataSource$HttpDataSourceException extends IOException {
    public static final int TYPE_CLOSE = 3;
    public static final int TYPE_OPEN = 1;
    public static final int TYPE_READ = 2;
    public final DataSpec dataSpec;
    public final int type;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException$Type.class */
    public @interface Type {
    }

    public HttpDataSource$HttpDataSourceException(DataSpec dataSpec, int i) {
        this.dataSpec = dataSpec;
        this.type = i;
    }

    public HttpDataSource$HttpDataSourceException(IOException iOException, DataSpec dataSpec, int i) {
        super(iOException);
        this.dataSpec = dataSpec;
        this.type = i;
    }

    public HttpDataSource$HttpDataSourceException(String str, DataSpec dataSpec, int i) {
        super(str);
        this.dataSpec = dataSpec;
        this.type = i;
    }

    public HttpDataSource$HttpDataSourceException(String str, IOException iOException, DataSpec dataSpec, int i) {
        super(str, iOException);
        this.dataSpec = dataSpec;
        this.type = i;
    }
}
