package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.drm.AbstractC5043m;
import com.google.android.exoplayer2.drm.DrmSession;
/* renamed from: com.google.android.exoplayer2.drm.k */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/k.class */
public interface AbstractC5040k<T extends AbstractC5043m> {

    /* renamed from: a */
    public static final AbstractC5040k<AbstractC5043m> f15718a = new C5041a();

    /* renamed from: com.google.android.exoplayer2.drm.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/k$a.class */
    static final class C5041a implements AbstractC5040k<AbstractC5043m> {
        C5041a() {
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC5040k
        /* renamed from: a */
        public Class<AbstractC5043m> mo20775a(DrmInitData drmInitData) {
            return null;
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC5040k
        /* renamed from: b */
        public /* synthetic */ void mo20774b() {
            C5039j.m20777c(this);
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC5040k
        /* renamed from: c */
        public /* synthetic */ void mo20773c() {
            C5039j.m20778b(this);
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC5040k
        /* renamed from: d */
        public /* synthetic */ DrmSession<AbstractC5043m> mo20772d(Looper looper, int i) {
            return C5039j.m20779a(this, looper, i);
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC5040k
        /* renamed from: e */
        public DrmSession<AbstractC5043m> mo20771e(Looper looper, DrmInitData drmInitData) {
            return new C5042l(new DrmSession.DrmSessionException(new UnsupportedDrmException(1)));
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC5040k
        /* renamed from: f */
        public boolean mo20770f(DrmInitData drmInitData) {
            return false;
        }
    }

    /* renamed from: a */
    Class<? extends AbstractC5043m> mo20775a(DrmInitData drmInitData);

    /* renamed from: b */
    void mo20774b();

    /* renamed from: c */
    void mo20773c();

    /* renamed from: d */
    DrmSession<T> mo20772d(Looper looper, int i);

    /* renamed from: e */
    DrmSession<T> mo20771e(Looper looper, DrmInitData drmInitData);

    /* renamed from: f */
    boolean mo20770f(DrmInitData drmInitData);
}
