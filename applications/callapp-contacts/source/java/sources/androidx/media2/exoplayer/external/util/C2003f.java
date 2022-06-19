package androidx.media2.exoplayer.external.util;

import android.os.Handler;
import androidx.media2.exoplayer.external.util.C2003f;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.media2.exoplayer.external.util.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/f.class */
public final class C2003f<T> {

    /* renamed from: a */
    private final CopyOnWriteArrayList<C2005b<T>> f8084a = new CopyOnWriteArrayList<>();

    /* renamed from: androidx.media2.exoplayer.external.util.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/f$a.class */
    public interface AbstractC2004a<T> {
        /* renamed from: a */
        void mo41588a(T t);
    }

    /* renamed from: androidx.media2.exoplayer.external.util.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/f$b.class */
    public static final class C2005b<T> {

        /* renamed from: a */
        final T f8085a;

        /* renamed from: b */
        boolean f8086b;

        /* renamed from: c */
        private final Handler f8087c;

        public C2005b(Handler handler, T t) {
            this.f8087c = handler;
            this.f8085a = t;
        }

        /* renamed from: a */
        public final void m41587a(AbstractC2004a<T> abstractC2004a) {
            this.f8087c.post(new Runnable(this, abstractC2004a) { // from class: androidx.media2.exoplayer.external.util.g

                /* renamed from: a */
                private final C2003f.C2005b f8088a;

                /* renamed from: b */
                private final C2003f.AbstractC2004a f8089b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8088a = this;
                    this.f8089b = abstractC2004a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C2003f.C2005b c2005b = this.f8088a;
                    C2003f.AbstractC2004a abstractC2004a2 = this.f8089b;
                    if (!c2005b.f8086b) {
                        abstractC2004a2.mo41588a(c2005b.f8085a);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public final void m41591a(Handler handler, T t) {
        C1993a.m41688a((handler == null || t == null) ? false : true);
        m41589a((C2003f<T>) t);
        this.f8084a.add(new C2005b<>(handler, t));
    }

    /* renamed from: a */
    public final void m41590a(AbstractC2004a<T> abstractC2004a) {
        Iterator<C2005b<T>> it2 = this.f8084a.iterator();
        while (it2.hasNext()) {
            it2.next().m41587a(abstractC2004a);
        }
    }

    /* renamed from: a */
    public final void m41589a(T t) {
        Iterator<C2005b<T>> it2 = this.f8084a.iterator();
        while (it2.hasNext()) {
            C2005b<T> next = it2.next();
            if (next.f8085a == t) {
                next.f8086b = true;
                this.f8084a.remove(next);
            }
        }
    }
}
