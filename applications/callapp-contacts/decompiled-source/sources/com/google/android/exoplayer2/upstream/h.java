package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/h.class */
public interface h extends e {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/h$_CC.class */
    public final /* synthetic */ class _CC {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/h$a.class */
    public interface a {
        h createDataSource();
    }

    long a(j jVar) throws IOException;

    Uri a();

    void a(v vVar);

    Map<String, List<String>> b();

    void c() throws IOException;
}
