package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.util.a;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/g.class */
public final class g implements DrmSession {

    /* renamed from: a  reason: collision with root package name */
    private final DrmSession.DrmSessionException f20886a;

    public g(DrmSession.DrmSessionException drmSessionException) {
        this.f20886a = (DrmSession.DrmSessionException) a.b(drmSessionException);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final void a(c.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final void b(c.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int c() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final boolean d() {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final DrmSession.DrmSessionException e() {
        return this.f20886a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID f() {
        return f.f21359a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final h g() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final Map<String, String> h() {
        return null;
    }
}
