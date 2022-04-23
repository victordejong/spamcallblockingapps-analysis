package androidx.media2.common;

import android.net.Uri;
import androidx.core.e.d;
import androidx.media2.common.MediaItem;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/UriMediaItem.class */
public class UriMediaItem extends MediaItem {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f2764a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f2765b;

    /* renamed from: c  reason: collision with root package name */
    private final List<HttpCookie> f2766c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/UriMediaItem$a.class */
    public static final class a extends MediaItem.a {

        /* renamed from: a  reason: collision with root package name */
        Uri f2767a;

        /* renamed from: b  reason: collision with root package name */
        Map<String, String> f2768b;

        /* renamed from: c  reason: collision with root package name */
        List<HttpCookie> f2769c;

        public a(Uri uri) {
            this(uri, null, null);
        }

        public a(Uri uri, Map<String, String> map, List<HttpCookie> list) {
            CookieHandler cookieHandler;
            d.a(uri, "uri cannot be null");
            this.f2767a = uri;
            if (list == null || (cookieHandler = CookieHandler.getDefault()) == null || (cookieHandler instanceof CookieManager)) {
                this.f2767a = uri;
                if (map != null) {
                    this.f2768b = new HashMap(map);
                }
                if (list != null) {
                    this.f2769c = new ArrayList(list);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("The cookie handler has to be of CookieManager type when cookies are provided");
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a a(long j) {
            return (a) super.a(j);
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a a(MediaMetadata mediaMetadata) {
            return (a) super.a(mediaMetadata);
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a b(long j) {
            return (a) super.b(j);
        }

        /* renamed from: b */
        public final UriMediaItem a() {
            return new UriMediaItem(this);
        }
    }

    UriMediaItem(a aVar) {
        super(aVar);
        this.f2764a = aVar.f2767a;
        this.f2765b = aVar.f2768b;
        this.f2766c = aVar.f2769c;
    }
}
