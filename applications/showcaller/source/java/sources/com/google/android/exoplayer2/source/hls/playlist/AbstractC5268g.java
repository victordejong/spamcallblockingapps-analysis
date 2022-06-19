package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.offline.AbstractC5176e;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.source.hls.playlist.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/g.class */
public abstract class AbstractC5268g implements AbstractC5176e<AbstractC5268g> {

    /* renamed from: a */
    public final String f16688a;

    /* renamed from: b */
    public final List<String> f16689b;

    /* renamed from: c */
    public final boolean f16690c;

    public AbstractC5268g(String str, List<String> list, boolean z) {
        this.f16688a = str;
        this.f16689b = Collections.unmodifiableList(list);
        this.f16690c = z;
    }
}
