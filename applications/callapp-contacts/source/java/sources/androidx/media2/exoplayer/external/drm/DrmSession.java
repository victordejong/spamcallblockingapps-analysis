package androidx.media2.exoplayer.external.drm;

import androidx.media2.exoplayer.external.drm.AbstractC1471m;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession.class */
public interface DrmSession<T extends AbstractC1471m> {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException.class */
    public static class DrmSessionException extends IOException {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: b */
    int mo42865b();

    /* renamed from: c */
    DrmSessionException mo42864c();

    /* renamed from: d */
    T mo42863d();

    /* renamed from: e */
    Map<String, String> mo42862e();

    /* renamed from: f */
    void mo42861f();

    /* renamed from: g */
    void mo42860g();
}
