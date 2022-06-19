package androidx.media2.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.common.SessionPlayer;
import java.util.HashMap;
import java.util.Iterator;
import pf;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession.class */
public class MediaSession implements AutoCloseable {

    /* renamed from: b */
    public static final Object f1201b = new Object();

    /* renamed from: c */
    public static final HashMap<String, MediaSession> f1202c = new HashMap<>();

    /* renamed from: a */
    public final AbstractC0166c f1203a;

    /* renamed from: androidx.media2.session.MediaSession$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$a.class */
    public static abstract class AbstractC0164a {
    }

    /* renamed from: androidx.media2.session.MediaSession$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$b.class */
    public static final class C0165b {

        /* renamed from: a */
        public final pf.b f1204a;

        /* renamed from: b */
        public final AbstractC0164a f1205b;

        public C0165b(pf.b bVar, boolean z, AbstractC0164a abstractC0164a, Bundle bundle) {
            this.f1204a = bVar;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0165b)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            C0165b c0165b = (C0165b) obj;
            AbstractC0164a abstractC0164a = this.f1205b;
            return (abstractC0164a == null && c0165b.f1205b == null) ? this.f1204a.equals(c0165b.f1204a) : ja.a(abstractC0164a, c0165b.f1205b);
        }

        public int hashCode() {
            return ja.b(new Object[]{this.f1205b, this.f1204a});
        }

        public String toString() {
            return "ControllerInfo {pkg=" + this.f1204a.a() + ", uid=" + this.f1204a.b() + "})";
        }
    }

    /* renamed from: androidx.media2.session.MediaSession$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$c.class */
    public interface AbstractC0166c extends AutoCloseable {
        AbstractC0167d getCallback();

        String getId();

        PendingIntent getSessionActivity();

        Uri getUri();

        /* renamed from: i */
        IBinder m6351i();

        boolean isClosed();

        /* renamed from: j */
        MediaSessionCompat m6350j();

        /* renamed from: p */
        SessionPlayer m6349p();

        /* renamed from: z */
        void m6348z(AbstractC0223aw abstractC0223aw, String str, int i, int i2, Bundle bundle);
    }

    /* renamed from: androidx.media2.session.MediaSession$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$d.class */
    public static abstract class AbstractC0167d {

        /* renamed from: androidx.media2.session.MediaSession$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$d$a.class */
        public static abstract class AbstractC0168a {
        }

        /* renamed from: a */
        public abstract void m6347a(AbstractC0168a abstractC0168a);
    }

    /* renamed from: g */
    public static MediaSession m6355g(Uri uri) {
        MediaSession next;
        synchronized (f1201b) {
            Iterator<MediaSession> it = f1202c.values().iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!ja.a(next.getUri(), uri));
            return next;
        }
    }

    /* renamed from: a */
    public AbstractC0166c m6357a() {
        return this.f1203a;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (f1201b) {
                f1202c.remove(this.f1203a.getId());
            }
            this.f1203a.close();
        } catch (Exception e) {
        }
    }

    /* renamed from: e */
    public IBinder m6356e() {
        return this.f1203a.m6351i();
    }

    public AbstractC0167d getCallback() {
        return this.f1203a.getCallback();
    }

    public String getId() {
        return this.f1203a.getId();
    }

    public final Uri getUri() {
        return this.f1203a.getUri();
    }

    /* renamed from: h */
    public void m6354h(AbstractC0223aw abstractC0223aw, String str, int i, int i2, Bundle bundle) {
        this.f1203a.m6348z(abstractC0223aw, str, i, i2, bundle);
    }

    public boolean isClosed() {
        return this.f1203a.isClosed();
    }

    /* renamed from: j */
    public MediaSessionCompat m6353j() {
        return this.f1203a.m6350j();
    }

    /* renamed from: p */
    public SessionPlayer m6352p() {
        return this.f1203a.m6349p();
    }
}
