package com.google.android.exoplayer2.drm;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.j;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/MediaDrmCallbackException.class */
public final class MediaDrmCallbackException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final j f20872a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f20873b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, List<String>> f20874c;

    /* renamed from: d  reason: collision with root package name */
    public final long f20875d;

    public MediaDrmCallbackException(j jVar, Uri uri, Map<String, List<String>> map, long j, Throwable th) {
        super(th);
        this.f20872a = jVar;
        this.f20873b = uri;
        this.f20874c = map;
        this.f20875d = j;
    }
}
