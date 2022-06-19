package androidx.media2.exoplayer.external.drm;

import android.os.Looper;
import androidx.media2.exoplayer.external.drm.AbstractC1471m;
import androidx.media2.exoplayer.external.drm.DrmSession;
/* renamed from: androidx.media2.exoplayer.external.drm.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/k.class */
public interface AbstractC1468k<T extends AbstractC1471m> {

    /* renamed from: e */
    public static final AbstractC1468k<AbstractC1471m> f5584e = new AbstractC1468k<AbstractC1471m>() { // from class: androidx.media2.exoplayer.external.drm.k.1
        @Override // androidx.media2.exoplayer.external.drm.AbstractC1468k
        /* renamed from: a */
        public final DrmSession<AbstractC1471m> mo42868a(Looper looper, DrmInitData drmInitData) {
            return new C1470l(new DrmSession.DrmSessionException(new UnsupportedDrmException(1)));
        }

        @Override // androidx.media2.exoplayer.external.drm.AbstractC1468k
        /* renamed from: a */
        public final boolean mo42867a(DrmInitData drmInitData) {
            return false;
        }

        @Override // androidx.media2.exoplayer.external.drm.AbstractC1468k
        /* renamed from: b */
        public final Class<AbstractC1471m> mo42866b(DrmInitData drmInitData) {
            return null;
        }
    };

    /* renamed from: a */
    DrmSession<T> mo42868a(Looper looper, DrmInitData drmInitData);

    /* renamed from: a */
    boolean mo42867a(DrmInitData drmInitData);

    /* renamed from: b */
    Class<? extends AbstractC1471m> mo42866b(DrmInitData drmInitData);
}
