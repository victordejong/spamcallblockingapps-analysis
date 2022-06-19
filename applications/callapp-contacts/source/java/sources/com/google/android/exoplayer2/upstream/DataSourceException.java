package com.google.android.exoplayer2.upstream;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/DataSourceException.class */
public final class DataSourceException extends IOException {

    /* renamed from: a */
    public final int f38336a;

    public DataSourceException(int i) {
        this.f38336a = i;
    }

    /* renamed from: a */
    public static boolean m20213a(IOException iOException) {
        while (iOException != null) {
            if ((iOException instanceof DataSourceException) && ((DataSourceException) iOException).f38336a == 0) {
                return true;
            }
            iOException = iOException.getCause();
        }
        return false;
    }
}
