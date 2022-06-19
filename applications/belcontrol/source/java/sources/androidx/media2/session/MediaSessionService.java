package androidx.media2.session;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.media2.session.MediaSession;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionService.class */
public abstract class MediaSessionService extends Service {

    /* renamed from: a */
    public final AbstractC0170b f1206a = m6345b();

    /* renamed from: androidx.media2.session.MediaSessionService$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionService$a.class */
    public static class C0169a {

        /* renamed from: a */
        public final int f1207a;

        /* renamed from: b */
        public final Notification f1208b;

        public C0169a(int i, Notification notification) {
            Objects.requireNonNull(notification, "notification shouldn't be null");
            this.f1207a = i;
            this.f1208b = notification;
        }

        /* renamed from: a */
        public Notification m6341a() {
            return this.f1208b;
        }

        /* renamed from: b */
        public int m6340b() {
            return this.f1207a;
        }
    }

    /* renamed from: androidx.media2.session.MediaSessionService$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionService$b.class */
    public interface AbstractC0170b {
        /* renamed from: a */
        IBinder m6339a(Intent intent);

        /* renamed from: b */
        void m6338b(MediaSessionService mediaSessionService);

        /* renamed from: c */
        void m6337c(MediaSession mediaSession);

        /* renamed from: d */
        List<MediaSession> m6336d();

        /* renamed from: e */
        C0169a m6335e(MediaSession mediaSession);

        /* renamed from: f */
        int m6334f(Intent intent, int i, int i2);

        void onDestroy();
    }

    /* renamed from: a */
    public final void m6346a(MediaSession mediaSession) {
        Objects.requireNonNull(mediaSession, "session shouldn't be null");
        if (!mediaSession.isClosed()) {
            this.f1206a.m6337c(mediaSession);
            return;
        }
        throw new IllegalArgumentException("session is already closed");
    }

    /* renamed from: b */
    public AbstractC0170b m6345b() {
        return new fw();
    }

    /* renamed from: c */
    public final List<MediaSession> m6344c() {
        return this.f1206a.m6336d();
    }

    /* renamed from: d */
    public abstract MediaSession m6343d(MediaSession.C0165b c0165b);

    /* renamed from: e */
    public C0169a m6342e(MediaSession mediaSession) {
        Objects.requireNonNull(mediaSession, "session shouldn't be null");
        return this.f1206a.m6335e(mediaSession);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1206a.m6339a(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f1206a.m6338b(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f1206a.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return this.f1206a.m6334f(intent, i, i2);
    }
}
