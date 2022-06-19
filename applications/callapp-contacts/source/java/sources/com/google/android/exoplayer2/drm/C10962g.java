package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.util.C11593a;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.drm.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/g.class */
public final class C10962g implements DrmSession {

    /* renamed from: a */
    private final DrmSession.DrmSessionException f35473a;

    public C10962g(DrmSession.DrmSessionException drmSessionException) {
        this.f35473a = (DrmSession.DrmSessionException) C11593a.m20020b(drmSessionException);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: a */
    public final void mo21845a(AbstractC10955c.C10956a c10956a) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: b */
    public final void mo21844b(AbstractC10955c.C10956a c10956a) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: c */
    public final int mo21843c() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: d */
    public final boolean mo21842d() {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: e */
    public final DrmSession.DrmSessionException mo21841e() {
        return this.f35473a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: f */
    public final UUID mo21840f() {
        return C11158f.f36539a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: g */
    public final AbstractC10963h mo21839g() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: h */
    public final Map<String, String> mo21838h() {
        return null;
    }
}
