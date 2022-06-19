package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.AbstractC5043m;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.util.C5508e;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.drm.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/l.class */
public final class C5042l<T extends AbstractC5043m> implements DrmSession<T> {

    /* renamed from: a */
    private final DrmSession.DrmSessionException f15719a;

    public C5042l(DrmSession.DrmSessionException drmSessionException) {
        this.f15719a = (DrmSession.DrmSessionException) C5508e.m18911e(drmSessionException);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: a */
    public void mo20769a() {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: b */
    public void mo20768b() {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: c */
    public boolean mo20767c() {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: d */
    public Map<String, String> mo20766d() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: e */
    public T mo20765e() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: f */
    public DrmSession.DrmSessionException mo20764f() {
        return this.f15719a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public int getState() {
        return 1;
    }
}
