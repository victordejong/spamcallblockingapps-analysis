package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.j;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/f.class */
public interface f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f22155a = _$$Lambda$f$14R7BUjw47t1VRjyt7JB6CD12wE.INSTANCE;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/f$_CC.class */
    public final /* synthetic */ class _CC {
        public static /* synthetic */ String a(j jVar) {
            return jVar.i != null ? jVar.i : jVar.f22204a.toString();
        }
    }

    String buildCacheKey(j jVar);
}
