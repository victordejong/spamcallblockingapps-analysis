package androidx.media2.session;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import androidx.media2.session.MediaSession;
import androidx.media2.session.MediaSessionService;
import p012b.p076s.p116d.C1791f;
import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService.class */
public abstract class MediaLibraryService extends MediaSessionService {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$LibraryParams.class */
    public static final class LibraryParams implements AbstractC1978c {

        /* renamed from: a */
        public Bundle f2196a;

        /* renamed from: b */
        public int f2197b;

        /* renamed from: c */
        public int f2198c;

        /* renamed from: d */
        public int f2199d;
    }

    /* renamed from: androidx.media2.session.MediaLibraryService$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibraryService$a.class */
    public static final class C0422a extends MediaSession {
    }

    @Override // androidx.media2.session.MediaSessionService
    /* renamed from: a */
    public abstract C0422a mo37735a(MediaSession.C0424b bVar);

    @Override // androidx.media2.session.MediaSessionService
    /* renamed from: a */
    public MediaSessionService.AbstractC0429b mo37736a() {
        return new C1791f();
    }

    @Override // androidx.media2.session.MediaSessionService, android.app.Service
    public IBinder onBind(Intent intent) {
        return super.onBind(intent);
    }
}
