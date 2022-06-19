package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.util.C11623r;
import com.google.common.base.AbstractC15399q;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.exoplayer2.util.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/m.class */
public final class C11613m<T, E extends C11623r> {

    /* renamed from: a */
    public final AbstractC11603c f38685a;

    /* renamed from: b */
    public final AbstractC11611k f38686b;

    /* renamed from: c */
    public final AbstractC15399q<E> f38687c;

    /* renamed from: d */
    public final AbstractC11615b<T, E> f38688d;

    /* renamed from: e */
    public final CopyOnWriteArraySet<C11616c<T, E>> f38689e;

    /* renamed from: f */
    private final ArrayDeque<Runnable> f38690f;

    /* renamed from: g */
    private final ArrayDeque<Runnable> f38691g;

    /* renamed from: h */
    private boolean f38692h;

    /* renamed from: com.google.android.exoplayer2.util.m$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/m$a.class */
    public interface AbstractC11614a<T> {
        void invoke(T t);
    }

    /* renamed from: com.google.android.exoplayer2.util.m$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/m$b.class */
    public interface AbstractC11615b<T, E extends C11623r> {
        void invoke(T t, E e);
    }

    /* renamed from: com.google.android.exoplayer2.util.m$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/m$c.class */
    public static final class C11616c<T, E extends C11623r> {

        /* renamed from: a */
        public final T f38693a;

        /* renamed from: b */
        E f38694b;

        /* renamed from: c */
        boolean f38695c;

        /* renamed from: d */
        boolean f38696d;

        public C11616c(T t, AbstractC15399q<E> abstractC15399q) {
            this.f38693a = t;
            this.f38694b = abstractC15399q.get();
        }

        /* renamed from: a */
        public final void m19865a(AbstractC11615b<T, E> abstractC11615b) {
            this.f38696d = true;
            if (this.f38695c) {
                abstractC11615b.invoke(this.f38693a, this.f38694b);
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.f38693a.equals(((C11616c) obj).f38693a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f38693a.hashCode();
        }
    }

    public C11613m(Looper looper, AbstractC11603c abstractC11603c, AbstractC15399q<E> abstractC15399q, AbstractC11615b<T, E> abstractC11615b) {
        this(new CopyOnWriteArraySet(), looper, abstractC11603c, abstractC15399q, abstractC11615b);
    }

    public C11613m(CopyOnWriteArraySet<C11616c<T, E>> copyOnWriteArraySet, Looper looper, AbstractC11603c abstractC11603c, AbstractC15399q<E> abstractC15399q, AbstractC11615b<T, E> abstractC11615b) {
        this.f38685a = abstractC11603c;
        this.f38689e = copyOnWriteArraySet;
        this.f38687c = abstractC15399q;
        this.f38688d = abstractC11615b;
        this.f38690f = new ArrayDeque<>();
        this.f38691g = new ArrayDeque<>();
        this.f38686b = abstractC11603c.mo19909a(looper, new Handler.Callback() { // from class: com.google.android.exoplayer2.util._$$Lambda$m$0PgCPd8u7b07hjACVP1_KgPVHgg
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m19870a;
                m19870a = C11613m.this.m19870a(message);
                return m19870a;
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ void m19868a(CopyOnWriteArraySet copyOnWriteArraySet, int i, AbstractC11614a abstractC11614a) {
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            C11616c c11616c = (C11616c) it2.next();
            if (!c11616c.f38696d) {
                if (i != -1) {
                    c11616c.f38694b.f38708b.append(i, true);
                }
                c11616c.f38695c = true;
                abstractC11614a.invoke(c11616c.f38693a);
            }
        }
    }

    /* renamed from: a */
    public boolean m19870a(Message message) {
        if (message.what != 0) {
            if (message.what != 1) {
                return true;
            }
            m19866b(message.arg1, (AbstractC11614a) message.obj);
            m19867b();
            return true;
        }
        Iterator<C11616c<T, E>> it2 = this.f38689e.iterator();
        while (it2.hasNext()) {
            C11616c<T, E> next = it2.next();
            AbstractC15399q<E> abstractC15399q = this.f38687c;
            AbstractC11615b<T, E> abstractC11615b = this.f38688d;
            if (!next.f38696d && next.f38695c) {
                E e = next.f38694b;
                next.f38694b = abstractC15399q.get();
                next.f38695c = false;
                abstractC11615b.invoke(next.f38693a, e);
            }
            if (this.f38686b.mo19887a()) {
                return true;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final void m19872a() {
        if (this.f38691g.isEmpty()) {
            return;
        }
        if (!this.f38686b.mo19887a()) {
            this.f38686b.mo19886a(0).sendToTarget();
        }
        boolean isEmpty = this.f38690f.isEmpty();
        this.f38690f.addAll(this.f38691g);
        this.f38691g.clear();
        if (!isEmpty) {
            return;
        }
        while (!this.f38690f.isEmpty()) {
            this.f38690f.peekFirst().run();
            this.f38690f.removeFirst();
        }
    }

    /* renamed from: a */
    public final void m19871a(final int i, final AbstractC11614a<T> abstractC11614a) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f38689e);
        this.f38691g.add(new Runnable() { // from class: com.google.android.exoplayer2.util._$$Lambda$m$qIxuIzs1M1Sxq7nfu7AKvLAU8o8
            @Override // java.lang.Runnable
            public final void run() {
                C11613m.m19868a(copyOnWriteArraySet, i, abstractC11614a);
            }
        });
    }

    /* renamed from: a */
    public final void m19869a(T t) {
        if (this.f38692h) {
            return;
        }
        C11593a.m20020b(t);
        this.f38689e.add(new C11616c<>(t, this.f38687c));
    }

    /* renamed from: b */
    public final void m19867b() {
        Iterator<C11616c<T, E>> it2 = this.f38689e.iterator();
        while (it2.hasNext()) {
            it2.next().m19865a(this.f38688d);
        }
        this.f38689e.clear();
        this.f38692h = true;
    }

    /* renamed from: b */
    public final void m19866b(int i, AbstractC11614a<T> abstractC11614a) {
        m19871a(i, abstractC11614a);
        m19872a();
    }
}
