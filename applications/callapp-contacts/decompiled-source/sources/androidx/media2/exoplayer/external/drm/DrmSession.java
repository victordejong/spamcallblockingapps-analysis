package androidx.media2.exoplayer.external.drm;

import androidx.media2.exoplayer.external.drm.m;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession.class */
public interface DrmSession<T extends m> {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException.class */
    public static class DrmSessionException extends IOException {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    int b();

    DrmSessionException c();

    T d();

    Map<String, String> e();

    void f();

    void g();
}
