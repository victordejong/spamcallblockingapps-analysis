package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.i;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/m.class */
public interface m {
    byte[] a(i.e eVar) throws MediaDrmCallbackException;

    byte[] a(UUID uuid, i.b bVar) throws MediaDrmCallbackException;
}
