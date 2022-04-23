package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.b.a;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.n;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/m.class */
final class m extends n implements MediaLibraryService.a.b {
    private final a<MediaSession.a, Set<String>> j = new a<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(MediaSession mediaSession, Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.d dVar, Bundle bundle) {
        super(mediaSession, context, str, sessionPlayer, pendingIntent, executor, dVar, bundle);
    }

    private static LibraryResult a(LibraryResult libraryResult) {
        if (libraryResult != null) {
            return libraryResult;
        }
        throw new RuntimeException("LibraryResult shouldn't be null");
    }

    private static LibraryResult a(LibraryResult libraryResult, int i) {
        LibraryResult a2 = a(libraryResult);
        if (a2.a() == 0) {
            List<MediaItem> list = a2.f;
            if (list == null) {
                throw new RuntimeException("List shouldn't be null for the success");
            } else if (list.size() <= i) {
                for (MediaItem mediaItem : list) {
                    a(mediaItem);
                }
            } else {
                throw new RuntimeException("List shouldn't contain items more than pageSize, size=" + a2.f.size() + ", pageSize" + i);
            }
        }
        return a2;
    }

    private static boolean a(MediaItem mediaItem) {
        if (mediaItem == null) {
            throw new RuntimeException("Item shouldn't be null for the success");
        } else if (!TextUtils.isEmpty(mediaItem.f())) {
            MediaMetadata d2 = mediaItem.d();
            if (d2 == null) {
                throw new RuntimeException("Metadata of an item shouldn't be null for the success");
            } else if (!d2.a("androidx.media2.metadata.BROWSABLE")) {
                throw new RuntimeException("METADATA_KEY_BROWSABLE should be specified in metadata of an item");
            } else if (d2.a("androidx.media2.metadata.PLAYABLE")) {
                return true;
            } else {
                throw new RuntimeException("METADATA_KEY_PLAYABLE should be specified in metadata of an item");
            }
        } else {
            throw new RuntimeException("Media ID of an item shouldn't be empty for the success");
        }
    }

    private static LibraryResult b(LibraryResult libraryResult) {
        LibraryResult a2 = a(libraryResult);
        if (a2.a() == 0) {
            a(a2.f4500c);
        }
        return a2;
    }

    @Override // androidx.media2.session.n
    final /* bridge */ /* synthetic */ MediaBrowserServiceCompat A() {
        return (l) super.A();
    }

    @Override // androidx.media2.session.MediaLibraryService.a.b
    public final int a(MediaSession.b bVar) {
        super.y();
        super.z();
        synchronized (this.f4823b) {
            this.j.remove(bVar.f4536c);
        }
        return -6;
    }

    @Override // androidx.media2.session.MediaLibraryService.a.b
    public final int a(MediaSession.b bVar, String str) {
        synchronized (this.f4823b) {
            Set<String> set = this.j.get(bVar.f4536c);
            Set<String> set2 = set;
            if (set == null) {
                set2 = new HashSet<>();
                this.j.put(bVar.f4536c, set2);
            }
            set2.add(str);
        }
        super.y();
        super.z();
        synchronized (this.f4823b) {
            this.j.remove(bVar.f4536c);
        }
        return -6;
    }

    @Override // androidx.media2.session.n
    final void a(n.e eVar) {
        super.a(eVar);
        l lVar = (l) super.A();
        if (lVar != null) {
            try {
                eVar.a(lVar.h, 0);
            } catch (RemoteException e) {
                Log.e("MSImplBase", "Exception in using media1 API", e);
            }
        }
    }

    @Override // androidx.media2.session.n
    public final boolean b(MediaSession.b bVar) {
        if (super.b(bVar)) {
            return true;
        }
        l lVar = (l) super.A();
        if (lVar != null) {
            return lVar.j.b(bVar);
        }
        return false;
    }

    @Override // androidx.media2.session.MediaLibraryService.a.b
    public final LibraryResult f(int i) {
        super.y();
        super.z();
        return a(MediaLibraryService.a.C0097a.c(), i);
    }

    @Override // androidx.media2.session.MediaLibraryService.a.b
    public final LibraryResult g(int i) {
        super.y();
        super.z();
        return a(new LibraryResult(-6), i);
    }

    @Override // androidx.media2.session.MediaLibraryService.a.b
    public final LibraryResult u() {
        super.y();
        super.z();
        return b(MediaLibraryService.a.C0097a.a());
    }

    @Override // androidx.media2.session.MediaLibraryService.a.b
    public final LibraryResult v() {
        super.y();
        super.z();
        return b(MediaLibraryService.a.C0097a.b());
    }

    @Override // androidx.media2.session.MediaLibraryService.a.b
    public final MediaLibraryService.a w() {
        return (MediaLibraryService.a) super.z();
    }

    @Override // androidx.media2.session.MediaLibraryService.a.b
    public final MediaLibraryService.a.C0097a x() {
        return (MediaLibraryService.a.C0097a) super.y();
    }

    @Override // androidx.media2.session.n, androidx.media2.session.MediaSession.c
    public final /* bridge */ /* synthetic */ MediaSession.d y() {
        return (MediaLibraryService.a.C0097a) super.y();
    }

    @Override // androidx.media2.session.n, androidx.media2.session.MediaSession.c
    public final /* bridge */ /* synthetic */ MediaSession z() {
        return (MediaLibraryService.a) super.z();
    }
}
