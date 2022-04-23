package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.upstream.e;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/v.class */
interface v {
    int a(u uVar) throws IOException;

    void a();

    void a(long j, long j2);

    void a(e eVar, Uri uri, Map<String, List<String>> map, long j, long j2, j jVar) throws IOException;

    void b();

    long c();
}
