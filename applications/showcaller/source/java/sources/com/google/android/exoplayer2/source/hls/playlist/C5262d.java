package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.offline.C5177f;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.upstream.C5494v;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.source.hls.playlist.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/d.class */
public final class C5262d implements AbstractC5271i {

    /* renamed from: a */
    private final AbstractC5271i f16640a;

    /* renamed from: b */
    private final List<StreamKey> f16641b;

    public C5262d(AbstractC5271i abstractC5271i, List<StreamKey> list) {
        this.f16640a = abstractC5271i;
        this.f16641b = list;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.AbstractC5271i
    /* renamed from: a */
    public C5494v.AbstractC5495a<AbstractC5268g> mo19877a(C5263e c5263e) {
        return new C5177f(this.f16640a.mo19877a(c5263e), this.f16641b);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.AbstractC5271i
    /* renamed from: b */
    public C5494v.AbstractC5495a<AbstractC5268g> mo19876b() {
        return new C5177f(this.f16640a.mo19876b(), this.f16641b);
    }
}
