package com.google.android.exoplayer2.drm;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.C11570j;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/MediaDrmCallbackException.class */
public final class MediaDrmCallbackException extends IOException {

    /* renamed from: a */
    public final C11570j f35456a;

    /* renamed from: b */
    public final Uri f35457b;

    /* renamed from: c */
    public final Map<String, List<String>> f35458c;

    /* renamed from: d */
    public final long f35459d;

    public MediaDrmCallbackException(C11570j c11570j, Uri uri, Map<String, List<String>> map, long j, Throwable th) {
        super(th);
        this.f35456a = c11570j;
        this.f35457b = uri;
        this.f35458c = map;
        this.f35459d = j;
    }
}
