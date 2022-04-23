package androidx.media2.session;

import android.content.Context;
import android.support.v4.media.MediaBrowserCompat;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.e;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/g.class */
final class g extends i implements e.c {

    /* renamed from: a  reason: collision with root package name */
    final HashMap<MediaLibraryService.LibraryParams, MediaBrowserCompat> f4595a = new HashMap<>();
    private final HashMap<String, List<Object>> C = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context, e eVar, SessionToken sessionToken) {
        super(context, eVar, sessionToken);
    }

    @Override // androidx.media2.session.i, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.g) {
            for (MediaBrowserCompat mediaBrowserCompat : this.f4595a.values()) {
                mediaBrowserCompat.b();
            }
            this.f4595a.clear();
            super.close();
        }
    }
}
