package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.drm.DrmSession;
/* renamed from: com.google.android.exoplayer2.drm.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/d.class */
public interface AbstractC10958d {

    /* renamed from: e */
    public static final AbstractC10958d f35471e;
    @Deprecated

    /* renamed from: f */
    public static final AbstractC10958d f35472f;

    /* renamed from: com.google.android.exoplayer2.drm.d$_CC */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/d$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(AbstractC10958d abstractC10958d) {
        }

        public static void $default$b(AbstractC10958d abstractC10958d) {
        }
    }

    static {
        AbstractC10958d abstractC10958d = new AbstractC10958d() { // from class: com.google.android.exoplayer2.drm.d.1
            @Override // com.google.android.exoplayer2.drm.AbstractC10958d
            /* renamed from: a */
            public final DrmSession mo21849a(Looper looper, AbstractC10955c.C10956a c10956a, Format format) {
                if (format.drmInitData == null) {
                    return null;
                }
                return new C10962g(new DrmSession.DrmSessionException(new UnsupportedDrmException(1)));
            }

            @Override // com.google.android.exoplayer2.drm.AbstractC10958d
            /* renamed from: a */
            public final Class<C10974n> mo21848a(Format format) {
                if (format.drmInitData != null) {
                    return C10974n.class;
                }
                return null;
            }

            @Override // com.google.android.exoplayer2.drm.AbstractC10958d
            /* renamed from: a */
            public /* synthetic */ void mo21850a() {
                _CC.$default$a(this);
            }

            @Override // com.google.android.exoplayer2.drm.AbstractC10958d
            /* renamed from: b */
            public /* synthetic */ void mo21847b() {
                _CC.$default$b(this);
            }
        };
        f35471e = abstractC10958d;
        f35472f = abstractC10958d;
    }

    /* renamed from: a */
    DrmSession mo21849a(Looper looper, AbstractC10955c.C10956a c10956a, Format format);

    /* renamed from: a */
    Class<? extends AbstractC10963h> mo21848a(Format format);

    /* renamed from: a */
    void mo21850a();

    /* renamed from: b */
    void mo21847b();
}
