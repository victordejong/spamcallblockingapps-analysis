package com.google.android.exoplayer2.util;

import android.os.Handler;
import com.google.android.exoplayer2.util.C5519k;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.exoplayer2.util.k */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/k.class */
public final class C5519k<T> {

    /* renamed from: a */
    private final CopyOnWriteArrayList<C5521b<T>> f17891a = new CopyOnWriteArrayList<>();

    /* renamed from: com.google.android.exoplayer2.util.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/k$a.class */
    public interface AbstractC5520a<T> {
        /* renamed from: a */
        void mo18782a(T t);
    }

    /* renamed from: com.google.android.exoplayer2.util.k$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/k$b.class */
    public static final class C5521b<T> {

        /* renamed from: a */
        private final Handler f17892a;

        /* renamed from: b */
        private final T f17893b;

        /* renamed from: c */
        private boolean f17894c;

        public C5521b(Handler handler, T t) {
            this.f17892a = handler;
            this.f17893b = t;
        }

        /* renamed from: c */
        public /* synthetic */ void m18778d(AbstractC5520a abstractC5520a) {
            if (!this.f17894c) {
                abstractC5520a.mo18782a(this.f17893b);
            }
        }

        /* renamed from: b */
        public void m18780b(final AbstractC5520a<T> abstractC5520a) {
            this.f17892a.post(new Runnable() { // from class: com.google.android.exoplayer2.util.a
                @Override // java.lang.Runnable
                public final void run() {
                    C5519k.C5521b.this.m18778d(abstractC5520a);
                }
            });
        }

        /* renamed from: e */
        public void m18777e() {
            this.f17894c = true;
        }
    }

    /* renamed from: a */
    public void m18785a(Handler handler, T t) {
        C5508e.m18915a((handler == null || t == null) ? false : true);
        m18783c(t);
        this.f17891a.add(new C5521b<>(handler, t));
    }

    /* renamed from: b */
    public void m18784b(AbstractC5520a<T> abstractC5520a) {
        Iterator<C5521b<T>> it = this.f17891a.iterator();
        while (it.hasNext()) {
            it.next().m18780b(abstractC5520a);
        }
    }

    /* renamed from: c */
    public void m18783c(T t) {
        Iterator<C5521b<T>> it = this.f17891a.iterator();
        while (it.hasNext()) {
            C5521b<T> next = it.next();
            if (((C5521b) next).f17893b == t) {
                next.m18777e();
                this.f17891a.remove(next);
            }
        }
    }
}
