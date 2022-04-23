package androidx.media2.session;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.media2.session.MediaSession;
import java.util.List;
import p012b.p076s.p116d.C1793h;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionService.class */
public abstract class MediaSessionService extends Service {

    /* renamed from: a */
    public final AbstractC0429b f2211a = mo37736a();

    /* renamed from: androidx.media2.session.MediaSessionService$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionService$a.class */
    public static class C0428a {

        /* renamed from: a */
        public final int f2212a;

        /* renamed from: b */
        public final Notification f2213b;

        public C0428a(int i, Notification notification) {
            if (notification != null) {
                this.f2212a = i;
                this.f2213b = notification;
                return;
            }
            throw new NullPointerException("notification shouldn't be null");
        }

        /* renamed from: a */
        public Notification m37731a() {
            return this.f2213b;
        }

        /* renamed from: b */
        public int m37730b() {
            return this.f2212a;
        }
    }

    /* renamed from: androidx.media2.session.MediaSessionService$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionService$b.class */
    public interface AbstractC0429b {
        /* renamed from: a */
        int mo32086a(Intent intent, int i, int i2);

        /* renamed from: a */
        List<MediaSession> mo32087a();

        /* renamed from: a */
        void mo32085a(MediaSession mediaSession);

        /* renamed from: a */
        void mo32084a(MediaSessionService mediaSessionService);

        /* renamed from: b */
        C0428a mo32082b(MediaSession mediaSession);

        IBinder onBind(Intent intent);

        void onDestroy();
    }

    /* renamed from: a */
    public abstract MediaSession mo37735a(MediaSession.C0424b bVar);

    /* renamed from: a */
    public AbstractC0429b mo37736a() {
        return new C1793h();
    }

    /* renamed from: a */
    public final void m37734a(MediaSession mediaSession) {
        if (mediaSession == null) {
            throw new NullPointerException("session shouldn't be null");
        } else if (!mediaSession.isClosed()) {
            this.f2211a.mo32085a(mediaSession);
        } else {
            throw new IllegalArgumentException("session is already closed");
        }
    }

    /* renamed from: b */
    public C0428a m37732b(MediaSession mediaSession) {
        if (mediaSession != null) {
            return this.f2211a.mo32082b(mediaSession);
        }
        throw new NullPointerException("session shouldn't be null");
    }

    /* renamed from: b */
    public final List<MediaSession> m37733b() {
        return this.f2211a.mo32087a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2211a.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f2211a.mo32084a(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f2211a.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return this.f2211a.mo32086a(intent, i, i2);
    }
}
