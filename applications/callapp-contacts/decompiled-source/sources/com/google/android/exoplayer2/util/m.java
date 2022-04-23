package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.util.r;
import com.google.common.base.q;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/m.class */
public final class m<T, E extends r> {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.exoplayer2.util.c f22300a;

    /* renamed from: b  reason: collision with root package name */
    public final k f22301b;

    /* renamed from: c  reason: collision with root package name */
    public final q<E> f22302c;

    /* renamed from: d  reason: collision with root package name */
    public final b<T, E> f22303d;
    public final CopyOnWriteArraySet<c<T, E>> e;
    private final ArrayDeque<Runnable> f;
    private final ArrayDeque<Runnable> g;
    private boolean h;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/m$a.class */
    public interface a<T> {
        void invoke(T t);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/m$b.class */
    public interface b<T, E extends r> {
        void invoke(T t, E e);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/m$c.class */
    public static final class c<T, E extends r> {

        /* renamed from: a  reason: collision with root package name */
        public final T f22304a;

        /* renamed from: b  reason: collision with root package name */
        E f22305b;

        /* renamed from: c  reason: collision with root package name */
        boolean f22306c;

        /* renamed from: d  reason: collision with root package name */
        boolean f22307d;

        public c(T t, q<E> qVar) {
            this.f22304a = t;
            this.f22305b = qVar.get();
        }

        public final void a(b<T, E> bVar) {
            this.f22307d = true;
            if (this.f22306c) {
                bVar.invoke(this.f22304a, this.f22305b);
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f22304a.equals(((c) obj).f22304a);
        }

        public final int hashCode() {
            return this.f22304a.hashCode();
        }
    }

    public m(Looper looper, com.google.android.exoplayer2.util.c cVar, q<E> qVar, b<T, E> bVar) {
        this(new CopyOnWriteArraySet(), looper, cVar, qVar, bVar);
    }

    public m(CopyOnWriteArraySet<c<T, E>> copyOnWriteArraySet, Looper looper, com.google.android.exoplayer2.util.c cVar, q<E> qVar, b<T, E> bVar) {
        this.f22300a = cVar;
        this.e = copyOnWriteArraySet;
        this.f22302c = qVar;
        this.f22303d = bVar;
        this.f = new ArrayDeque<>();
        this.g = new ArrayDeque<>();
        this.f22301b = cVar.a(looper, new Handler.Callback() { // from class: com.google.android.exoplayer2.util._$$Lambda$m$0PgCPd8u7b07hjACVP1_KgPVHgg
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean a2;
                a2 = m.this.a(message);
                return a2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(CopyOnWriteArraySet copyOnWriteArraySet, int i, a aVar) {
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            c cVar = (c) it2.next();
            if (!cVar.f22307d) {
                if (i != -1) {
                    cVar.f22305b.f22319b.append(i, true);
                }
                cVar.f22306c = true;
                aVar.invoke(cVar.f22304a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Message message) {
        if (message.what == 0) {
            Iterator<c<T, E>> it2 = this.e.iterator();
            while (it2.hasNext()) {
                c<T, E> next = it2.next();
                q<E> qVar = this.f22302c;
                b<T, E> bVar = this.f22303d;
                if (!next.f22307d && next.f22306c) {
                    E e = next.f22305b;
                    next.f22305b = qVar.get();
                    next.f22306c = false;
                    bVar.invoke(next.f22304a, e);
                }
                if (this.f22301b.a()) {
                    return true;
                }
            }
            return true;
        } else if (message.what != 1) {
            return true;
        } else {
            b(message.arg1, (a) message.obj);
            b();
            return true;
        }
    }

    public final void a() {
        if (!this.g.isEmpty()) {
            if (!this.f22301b.a()) {
                this.f22301b.a(0).sendToTarget();
            }
            boolean isEmpty = this.f.isEmpty();
            this.f.addAll(this.g);
            this.g.clear();
            if (!(!isEmpty)) {
                while (!this.f.isEmpty()) {
                    this.f.peekFirst().run();
                    this.f.removeFirst();
                }
            }
        }
    }

    public final void a(final int i, final a<T> aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.e);
        this.g.add(new Runnable() { // from class: com.google.android.exoplayer2.util._$$Lambda$m$qIxuIzs1M1Sxq7nfu7AKvLAU8o8
            @Override // java.lang.Runnable
            public final void run() {
                m.a(copyOnWriteArraySet, i, aVar);
            }
        });
    }

    public final void a(T t) {
        if (!this.h) {
            com.google.android.exoplayer2.util.a.b(t);
            this.e.add(new c<>(t, this.f22302c));
        }
    }

    public final void b() {
        Iterator<c<T, E>> it2 = this.e.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.f22303d);
        }
        this.e.clear();
        this.h = true;
    }

    public final void b(int i, a<T> aVar) {
        a(i, aVar);
        a();
    }
}
