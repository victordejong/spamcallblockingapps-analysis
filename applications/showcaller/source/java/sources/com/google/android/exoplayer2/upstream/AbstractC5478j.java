package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.j */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/j.class */
public interface AbstractC5478j {

    /* renamed from: com.google.android.exoplayer2.upstream.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/j$a.class */
    public interface AbstractC5479a {
        /* renamed from: a */
        AbstractC5478j mo18976a();
    }

    /* renamed from: a */
    void mo18950a(AbstractC5497x abstractC5497x);

    /* renamed from: b */
    long mo18949b(C5481l c5481l);

    /* renamed from: c */
    Uri mo18948c();

    void close();

    Map<String, List<String>> getResponseHeaders();

    int read(byte[] bArr, int i, int i2);
}
