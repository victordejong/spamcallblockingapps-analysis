package androidx.media2.session;

import android.util.Log;
import androidx.media2.session.MediaSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/a.class */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f4568a = Log.isLoggable("MS2ControllerMgr", 3);

    /* renamed from: b  reason: collision with root package name */
    final MediaSession.c f4569b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f4570c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final androidx.b.a<T, MediaSession.b> f4571d = new androidx.b.a<>();
    private final androidx.b.a<MediaSession.b, a<T>.C0098a> e = new androidx.b.a<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/a$a.class */
    public final class C0098a {

        /* renamed from: a  reason: collision with root package name */
        public final T f4574a;

        /* renamed from: b  reason: collision with root package name */
        public final v f4575b;

        /* renamed from: c  reason: collision with root package name */
        public SessionCommandGroup f4576c;

        C0098a(T t, v vVar, SessionCommandGroup sessionCommandGroup) {
            this.f4574a = t;
            this.f4575b = vVar;
            this.f4576c = sessionCommandGroup;
            if (sessionCommandGroup == null) {
                this.f4576c = new SessionCommandGroup();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(MediaSession.c cVar) {
        this.f4569b = cVar;
    }

    public final v a(T t) {
        a<T>.C0098a aVar;
        synchronized (this.f4570c) {
            aVar = this.e.get(b((a<T>) t));
        }
        if (aVar != null) {
            return aVar.f4575b;
        }
        return null;
    }

    public final List<MediaSession.b> a() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f4570c) {
            arrayList.addAll(this.f4571d.values());
        }
        return arrayList;
    }

    public final void a(final MediaSession.b bVar) {
        if (bVar != null) {
            synchronized (this.f4570c) {
                a<T>.C0098a remove = this.e.remove(bVar);
                if (remove != null) {
                    this.f4571d.remove(remove.f4574a);
                    if (f4568a) {
                        StringBuilder sb = new StringBuilder("Controller ");
                        sb.append(bVar);
                        sb.append(" is disconnected");
                    }
                    remove.f4575b.close();
                    this.f4569b.G().execute(new Runnable() { // from class: androidx.media2.session.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!a.this.f4569b.H()) {
                                a.this.f4569b.y();
                                a.this.f4569b.z();
                            }
                        }
                    });
                }
            }
        }
    }

    public final void a(T t, MediaSession.b bVar, SessionCommandGroup sessionCommandGroup) {
        if (t != null && bVar != null) {
            synchronized (this.f4570c) {
                MediaSession.b b2 = b((a<T>) t);
                if (b2 == null) {
                    this.f4571d.put(t, bVar);
                    this.e.put(bVar, new C0098a(t, new v(), sessionCommandGroup));
                } else {
                    this.e.get(b2).f4576c = sessionCommandGroup;
                }
            }
        } else if (f4568a) {
            throw new IllegalArgumentException("controllerKey and controllerInfo shouldn't be null");
        }
    }

    public final boolean a(MediaSession.b bVar, int i) {
        a<T>.C0098a aVar;
        synchronized (this.f4570c) {
            aVar = this.e.get(bVar);
        }
        return aVar != null && aVar.f4576c.a(i);
    }

    public final boolean a(MediaSession.b bVar, SessionCommand sessionCommand) {
        a<T>.C0098a aVar;
        synchronized (this.f4570c) {
            aVar = this.e.get(bVar);
        }
        if (aVar == null) {
            return false;
        }
        SessionCommandGroup sessionCommandGroup = aVar.f4576c;
        Objects.requireNonNull(sessionCommand, "command shouldn't be null");
        return sessionCommandGroup.f4544a.contains(sessionCommand);
    }

    public final MediaSession.b b(T t) {
        MediaSession.b bVar;
        synchronized (this.f4570c) {
            bVar = this.f4571d.get(t);
        }
        return bVar;
    }

    public final boolean b(MediaSession.b bVar) {
        boolean z;
        synchronized (this.f4570c) {
            z = this.e.get(bVar) != null;
        }
        return z;
    }

    public final v c(MediaSession.b bVar) {
        a<T>.C0098a aVar;
        synchronized (this.f4570c) {
            aVar = this.e.get(bVar);
        }
        if (aVar != null) {
            return aVar.f4575b;
        }
        return null;
    }
}
