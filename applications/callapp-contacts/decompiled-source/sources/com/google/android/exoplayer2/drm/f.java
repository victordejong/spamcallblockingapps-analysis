package com.google.android.exoplayer2.drm;

import android.media.MediaDrmException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.i;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/f.class */
public final class f implements i {
    @Override // com.google.android.exoplayer2.drm.i
    public final i.b a(byte[] bArr, List<DrmInitData.SchemeData> list, int i, HashMap<String, String> hashMap) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void a(i.c cVar) {
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void a(byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final byte[] a() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final i.e b() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void b(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void b(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final Map<String, String> c(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void c() {
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final h d(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void d() {
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final Class<n> e() {
        return n.class;
    }
}
