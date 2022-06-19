package com.google.android.gms.internal.ads;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zt2.class */
public final class zt2 {

    /* renamed from: a */
    public final vw2 f33394a;

    /* renamed from: b */
    public final MediaFormat f33395b;

    /* renamed from: c */
    public final C7021u4 f33396c;

    /* renamed from: d */
    public final Surface f33397d;

    /* renamed from: e */
    public final MediaCrypto f33398e = null;

    private zt2(vw2 vw2Var, MediaFormat mediaFormat, C7021u4 c7021u4, Surface surface, MediaCrypto mediaCrypto, int i, boolean z) {
        this.f33394a = vw2Var;
        this.f33395b = mediaFormat;
        this.f33396c = c7021u4;
        this.f33397d = surface;
    }

    /* renamed from: a */
    public static zt2 m8185a(vw2 vw2Var, MediaFormat mediaFormat, C7021u4 c7021u4, MediaCrypto mediaCrypto) {
        return new zt2(vw2Var, mediaFormat, c7021u4, null, null, 0, false);
    }

    /* renamed from: b */
    public static zt2 m8184b(vw2 vw2Var, MediaFormat mediaFormat, C7021u4 c7021u4, Surface surface, MediaCrypto mediaCrypto) {
        return new zt2(vw2Var, mediaFormat, c7021u4, surface, null, 0, false);
    }
}
