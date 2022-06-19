package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/h.class */
public interface AbstractC11567h extends AbstractC11563e {

    /* renamed from: com.google.android.exoplayer2.upstream.h$_CC */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/h$_CC.class */
    public final /* synthetic */ class _CC {
    }

    /* renamed from: com.google.android.exoplayer2.upstream.h$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/h$a.class */
    public interface AbstractC11568a {
        AbstractC11567h createDataSource();
    }

    /* renamed from: a */
    long mo20035a(C11570j c11570j) throws IOException;

    /* renamed from: a */
    Uri mo20036a();

    /* renamed from: a */
    void mo20034a(AbstractC11590v abstractC11590v);

    /* renamed from: b */
    Map<String, List<String>> mo20032b();

    /* renamed from: c */
    void mo20031c() throws IOException;
}
