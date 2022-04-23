package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/d.class */
public interface d {
    public static final d e;
    @Deprecated
    public static final d f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/d$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(d dVar) {
        }

        public static void $default$b(d dVar) {
        }
    }

    static {
        d dVar = new d() { // from class: com.google.android.exoplayer2.drm.d.1
            @Override // com.google.android.exoplayer2.drm.d
            public final DrmSession a(Looper looper, c.a aVar, Format format) {
                if (format.drmInitData == null) {
                    return null;
                }
                return new g(new DrmSession.DrmSessionException(new UnsupportedDrmException(1)));
            }

            @Override // com.google.android.exoplayer2.drm.d
            public final Class<n> a(Format format) {
                if (format.drmInitData != null) {
                    return n.class;
                }
                return null;
            }

            @Override // com.google.android.exoplayer2.drm.d
            public /* synthetic */ void a() {
                _CC.$default$a(this);
            }

            @Override // com.google.android.exoplayer2.drm.d
            public /* synthetic */ void b() {
                _CC.$default$b(this);
            }
        };
        e = dVar;
        f = dVar;
    }

    DrmSession a(Looper looper, c.a aVar, Format format);

    Class<? extends h> a(Format format);

    void a();

    void b();
}
