package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.session.C2338n;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.p023b.C0428a;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: androidx.media2.session.m */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/m.class */
final class C2337m extends C2338n implements MediaLibraryService.C2204a.AbstractC2206b {

    /* renamed from: j */
    private final C0428a<MediaSession.AbstractC2208a, Set<String>> f9121j = new C0428a<>();

    public C2337m(MediaSession mediaSession, Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.AbstractC2211d abstractC2211d, Bundle bundle) {
        super(mediaSession, context, str, sessionPlayer, pendingIntent, executor, abstractC2211d, bundle);
    }

    /* renamed from: a */
    private static LibraryResult m40992a(LibraryResult libraryResult) {
        if (libraryResult != null) {
            return libraryResult;
        }
        throw new RuntimeException("LibraryResult shouldn't be null");
    }

    /* renamed from: a */
    private static LibraryResult m40991a(LibraryResult libraryResult, int i) {
        LibraryResult m40992a = m40992a(libraryResult);
        if (m40992a.mo41118a() == 0) {
            List<MediaItem> list = m40992a.f8701f;
            if (list == null) {
                throw new RuntimeException("List shouldn't be null for the success");
            }
            if (list.size() > i) {
                throw new RuntimeException("List shouldn't contain items more than pageSize, size=" + m40992a.f8701f.size() + ", pageSize" + i);
            }
            for (MediaItem mediaItem : list) {
                m40993a(mediaItem);
            }
        }
        return m40992a;
    }

    /* renamed from: a */
    private static boolean m40993a(MediaItem mediaItem) {
        if (mediaItem != null) {
            if (TextUtils.isEmpty(mediaItem.m43199f())) {
                throw new RuntimeException("Media ID of an item shouldn't be empty for the success");
            }
            MediaMetadata m43200d = mediaItem.m43200d();
            if (m43200d == null) {
                throw new RuntimeException("Metadata of an item shouldn't be null for the success");
            }
            if (!m43200d.m43197a("androidx.media2.metadata.BROWSABLE")) {
                throw new RuntimeException("METADATA_KEY_BROWSABLE should be specified in metadata of an item");
            }
            if (!m43200d.m43197a("androidx.media2.metadata.PLAYABLE")) {
                throw new RuntimeException("METADATA_KEY_PLAYABLE should be specified in metadata of an item");
            }
            return true;
        }
        throw new RuntimeException("Item shouldn't be null for the success");
    }

    /* renamed from: b */
    private static LibraryResult m40988b(LibraryResult libraryResult) {
        LibraryResult m40992a = m40992a(libraryResult);
        if (m40992a.mo41118a() == 0) {
            m40993a(m40992a.f8698c);
        }
        return m40992a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.media2.session.C2338n
    /* renamed from: A */
    public final /* bridge */ /* synthetic */ MediaBrowserServiceCompat mo40981A() {
        return (ServiceC2326l) super.mo40981A();
    }

    @Override // androidx.media2.session.MediaLibraryService.C2204a.AbstractC2206b
    /* renamed from: a */
    public final int mo40990a(MediaSession.C2209b c2209b) {
        super.mo40925y();
        super.mo40924z();
        synchronized (this.f9129b) {
            this.f9121j.remove(c2209b.f8743c);
        }
        return -6;
    }

    @Override // androidx.media2.session.MediaLibraryService.C2204a.AbstractC2206b
    /* renamed from: a */
    public final int mo40989a(MediaSession.C2209b c2209b, String str) {
        synchronized (this.f9129b) {
            Set<String> set = this.f9121j.get(c2209b.f8743c);
            Set<String> set2 = set;
            if (set == null) {
                set2 = new HashSet<>();
                this.f9121j.put(c2209b.f8743c, set2);
            }
            set2.add(str);
        }
        super.mo40925y();
        super.mo40924z();
        synchronized (this.f9129b) {
            this.f9121j.remove(c2209b.f8743c);
        }
        return -6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.media2.session.C2338n
    /* renamed from: a */
    public final void mo40955a(C2338n.AbstractC2391e abstractC2391e) {
        super.mo40955a(abstractC2391e);
        ServiceC2326l serviceC2326l = (ServiceC2326l) super.mo40981A();
        if (serviceC2326l != null) {
            try {
                abstractC2391e.mo40912a(serviceC2326l.f9083h, 0);
            } catch (RemoteException e) {
                Log.e("MSImplBase", "Exception in using media1 API", e);
            }
        }
    }

    @Override // androidx.media2.session.C2338n
    /* renamed from: b */
    public final boolean mo40949b(MediaSession.C2209b c2209b) {
        if (super.mo40949b(c2209b)) {
            return true;
        }
        ServiceC2326l serviceC2326l = (ServiceC2326l) super.mo40981A();
        if (serviceC2326l == null) {
            return false;
        }
        return serviceC2326l.f9341j.m41091b(c2209b);
    }

    @Override // androidx.media2.session.MediaLibraryService.C2204a.AbstractC2206b
    /* renamed from: f */
    public final LibraryResult mo40987f(int i) {
        super.mo40925y();
        super.mo40924z();
        return m40991a(MediaLibraryService.C2204a.C2205a.m41135c(), i);
    }

    @Override // androidx.media2.session.MediaLibraryService.C2204a.AbstractC2206b
    /* renamed from: g */
    public final LibraryResult mo40986g(int i) {
        super.mo40925y();
        super.mo40924z();
        return m40991a(new LibraryResult(-6), i);
    }

    @Override // androidx.media2.session.MediaLibraryService.C2204a.AbstractC2206b
    /* renamed from: u */
    public final LibraryResult mo40985u() {
        super.mo40925y();
        super.mo40924z();
        return m40988b(MediaLibraryService.C2204a.C2205a.m41137a());
    }

    @Override // androidx.media2.session.MediaLibraryService.C2204a.AbstractC2206b
    /* renamed from: v */
    public final LibraryResult mo40984v() {
        super.mo40925y();
        super.mo40924z();
        return m40988b(MediaLibraryService.C2204a.C2205a.m41136b());
    }

    @Override // androidx.media2.session.MediaLibraryService.C2204a.AbstractC2206b
    /* renamed from: w */
    public final MediaLibraryService.C2204a mo40983w() {
        return (MediaLibraryService.C2204a) super.mo40924z();
    }

    @Override // androidx.media2.session.MediaLibraryService.C2204a.AbstractC2206b
    /* renamed from: x */
    public final MediaLibraryService.C2204a.C2205a mo40982x() {
        return (MediaLibraryService.C2204a.C2205a) super.mo40925y();
    }

    @Override // androidx.media2.session.C2338n, androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ MediaSession.AbstractC2211d mo40925y() {
        return (MediaLibraryService.C2204a.C2205a) super.mo40925y();
    }

    @Override // androidx.media2.session.C2338n, androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: z */
    public final /* bridge */ /* synthetic */ MediaSession mo40924z() {
        return (MediaLibraryService.C2204a) super.mo40924z();
    }
}
