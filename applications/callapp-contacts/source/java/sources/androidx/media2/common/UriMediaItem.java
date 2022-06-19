package androidx.media2.common;

import android.net.Uri;
import androidx.core.p036e.C0833d;
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

    /* renamed from: a */
    public final Uri f5060a;

    /* renamed from: b */
    private final Map<String, String> f5061b;

    /* renamed from: c */
    private final List<HttpCookie> f5062c;

    /* renamed from: androidx.media2.common.UriMediaItem$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/UriMediaItem$a.class */
    public static final class C1353a extends MediaItem.C1346a {

        /* renamed from: a */
        Uri f5063a;

        /* renamed from: b */
        Map<String, String> f5064b;

        /* renamed from: c */
        List<HttpCookie> f5065c;

        public C1353a(Uri uri) {
            this(uri, null, null);
        }

        public C1353a(Uri uri, Map<String, String> map, List<HttpCookie> list) {
            CookieHandler cookieHandler;
            C0833d.m44409a(uri, "uri cannot be null");
            this.f5063a = uri;
            if (list == null || (cookieHandler = CookieHandler.getDefault()) == null || (cookieHandler instanceof CookieManager)) {
                this.f5063a = uri;
                if (map != null) {
                    this.f5064b = new HashMap(map);
                }
                if (list == null) {
                    return;
                }
                this.f5065c = new ArrayList(list);
                return;
            }
            throw new IllegalArgumentException("The cookie handler has to be of CookieManager type when cookies are provided");
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43176a(long j) {
            return (C1353a) super.mo43176a(j);
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43175a(MediaMetadata mediaMetadata) {
            return (C1353a) super.mo43175a(mediaMetadata);
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43173b(long j) {
            return (C1353a) super.mo43173b(j);
        }

        /* renamed from: b */
        public final UriMediaItem mo43177a() {
            return new UriMediaItem(this);
        }
    }

    UriMediaItem(C1353a c1353a) {
        super(c1353a);
        this.f5060a = c1353a.f5063a;
        this.f5061b = c1353a.f5064b;
        this.f5062c = c1353a.f5065c;
    }
}
