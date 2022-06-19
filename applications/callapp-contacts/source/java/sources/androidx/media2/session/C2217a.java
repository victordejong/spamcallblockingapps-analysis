package androidx.media2.session;

import android.util.Log;
import androidx.media2.session.MediaSession;
import androidx.p023b.C0428a;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* renamed from: androidx.media2.session.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/a.class */
public final class C2217a<T> {

    /* renamed from: a */
    static final boolean f8795a = Log.isLoggable("MS2ControllerMgr", 3);

    /* renamed from: b */
    final MediaSession.AbstractC2210c f8796b;

    /* renamed from: c */
    private final Object f8797c = new Object();

    /* renamed from: d */
    private final C0428a<T, MediaSession.C2209b> f8798d = new C0428a<>();

    /* renamed from: e */
    private final C0428a<MediaSession.C2209b, C2217a<T>.C2219a> f8799e = new C0428a<>();

    /* renamed from: androidx.media2.session.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/a$a.class */
    public final class C2219a {

        /* renamed from: a */
        public final T f8802a;

        /* renamed from: b */
        public final C2486v f8803b;

        /* renamed from: c */
        public SessionCommandGroup f8804c;

        C2219a(T t, C2486v c2486v, SessionCommandGroup sessionCommandGroup) {
            C2217a.this = r5;
            this.f8802a = t;
            this.f8803b = c2486v;
            this.f8804c = sessionCommandGroup;
            if (sessionCommandGroup == null) {
                this.f8804c = new SessionCommandGroup();
            }
        }
    }

    public C2217a(MediaSession.AbstractC2210c abstractC2210c) {
        this.f8796b = abstractC2210c;
    }

    /* renamed from: a */
    public final C2486v m41093a(T t) {
        C2217a<T>.C2219a c2219a;
        synchronized (this.f8797c) {
            c2219a = this.f8799e.get(m41090b((C2217a<T>) t));
        }
        if (c2219a != null) {
            return c2219a.f8803b;
        }
        return null;
    }

    /* renamed from: a */
    public final List<MediaSession.C2209b> m41097a() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f8797c) {
            arrayList.addAll(this.f8798d.values());
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m41096a(final MediaSession.C2209b c2209b) {
        if (c2209b == null) {
            return;
        }
        synchronized (this.f8797c) {
            C2217a<T>.C2219a remove = this.f8799e.remove(c2209b);
            if (remove == null) {
                return;
            }
            this.f8798d.remove(remove.f8802a);
            if (f8795a) {
                StringBuilder sb = new StringBuilder("Controller ");
                sb.append(c2209b);
                sb.append(" is disconnected");
            }
            remove.f8803b.close();
            this.f8796b.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C2217a.this.f8796b.mo40974H()) {
                        return;
                    }
                    C2217a.this.f8796b.mo40925y();
                    C2217a.this.f8796b.mo40924z();
                }
            });
        }
    }

    /* renamed from: a */
    public final void m41092a(T t, MediaSession.C2209b c2209b, SessionCommandGroup sessionCommandGroup) {
        if (t == null || c2209b == null) {
            if (f8795a) {
                throw new IllegalArgumentException("controllerKey and controllerInfo shouldn't be null");
            }
            return;
        }
        synchronized (this.f8797c) {
            MediaSession.C2209b m41090b = m41090b((C2217a<T>) t);
            if (m41090b == null) {
                this.f8798d.put(t, c2209b);
                this.f8799e.put(c2209b, new C2219a(t, new C2486v(), sessionCommandGroup));
            } else {
                this.f8799e.get(m41090b).f8804c = sessionCommandGroup;
            }
        }
    }

    /* renamed from: a */
    public final boolean m41095a(MediaSession.C2209b c2209b, int i) {
        C2217a<T>.C2219a c2219a;
        synchronized (this.f8797c) {
            c2219a = this.f8799e.get(c2209b);
        }
        return c2219a != null && c2219a.f8804c.m41130a(i);
    }

    /* renamed from: a */
    public final boolean m41094a(MediaSession.C2209b c2209b, SessionCommand sessionCommand) {
        C2217a<T>.C2219a c2219a;
        synchronized (this.f8797c) {
            c2219a = this.f8799e.get(c2209b);
        }
        if (c2219a != null) {
            SessionCommandGroup sessionCommandGroup = c2219a.f8804c;
            Objects.requireNonNull(sessionCommand, "command shouldn't be null");
            return sessionCommandGroup.f8756a.contains(sessionCommand);
        }
        return false;
    }

    /* renamed from: b */
    public final MediaSession.C2209b m41090b(T t) {
        MediaSession.C2209b c2209b;
        synchronized (this.f8797c) {
            c2209b = this.f8798d.get(t);
        }
        return c2209b;
    }

    /* renamed from: b */
    public final boolean m41091b(MediaSession.C2209b c2209b) {
        boolean z;
        synchronized (this.f8797c) {
            z = this.f8799e.get(c2209b) != null;
        }
        return z;
    }

    /* renamed from: c */
    public final C2486v m41089c(MediaSession.C2209b c2209b) {
        C2217a<T>.C2219a c2219a;
        synchronized (this.f8797c) {
            c2219a = this.f8799e.get(c2209b);
        }
        if (c2219a != null) {
            return c2219a.f8803b;
        }
        return null;
    }
}
