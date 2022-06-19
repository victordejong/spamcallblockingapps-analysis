package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.AbstractC5043m;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmSession.class */
public interface DrmSession<T extends AbstractC5043m> {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmSession$DrmSessionException.class */
    public static class DrmSessionException extends IOException {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: a */
    void mo20769a();

    /* renamed from: b */
    void mo20768b();

    /* renamed from: c */
    boolean mo20767c();

    /* renamed from: d */
    Map<String, String> mo20766d();

    /* renamed from: e */
    T mo20765e();

    /* renamed from: f */
    DrmSessionException mo20764f();

    int getState();
}
