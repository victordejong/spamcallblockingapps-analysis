package androidx.media2.common;

import android.net.Uri;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.net.HttpCookie;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/UriMediaItem$a.class */
public final class UriMediaItem$a extends MediaItem$a {

    /* renamed from: d */
    public Uri f943d;

    /* renamed from: e */
    public Map<String, String> f944e;

    /* renamed from: f */
    public List<HttpCookie> f945f;

    public UriMediaItem$a(Uri uri) {
        MediaSessionCompat.m43196u(uri, "uri cannot be null");
        this.f943d = uri;
        this.f943d = uri;
    }
}
