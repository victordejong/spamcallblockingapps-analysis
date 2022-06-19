package androidx.media2.session;

import android.content.Context;
import android.support.p008v4.media.MediaBrowserCompat;
import androidx.media2.session.C2229e;
import androidx.media2.session.MediaLibraryService;
import java.util.HashMap;
import java.util.List;
/* renamed from: androidx.media2.session.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/g.class */
final class C2237g extends C2272i implements C2229e.AbstractC2233c {

    /* renamed from: a */
    final HashMap<MediaLibraryService.LibraryParams, MediaBrowserCompat> f8825a = new HashMap<>();

    /* renamed from: C */
    private final HashMap<String, List<Object>> f8824C = new HashMap<>();

    public C2237g(Context context, C2229e c2229e, SessionToken sessionToken) {
        super(context, c2229e, sessionToken);
    }

    @Override // androidx.media2.session.C2272i, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f8931g) {
            for (MediaBrowserCompat mediaBrowserCompat : this.f8825a.values()) {
                mediaBrowserCompat.m46595b();
            }
            this.f8825a.clear();
            super.close();
        }
    }
}
